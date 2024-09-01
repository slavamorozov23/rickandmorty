// lazy_loading_list.dart

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flex_list/flex_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import '../cubit/characters_list/characters_list_cubit.dart';
import 'loading_tile.dart';

class DryIntrinsicWidth extends SingleChildRenderObjectWidget {
  const DryIntrinsicWidth({super.key, super.child});

  @override
  RenderDryIntrinsicWidth createRenderObject(BuildContext context) =>
      RenderDryIntrinsicWidth();
}

class RenderDryIntrinsicWidth extends RenderIntrinsicWidth {
  @override
  Size computeDryLayout(BoxConstraints constraints) {
    if (child != null) {
      final width = child!.computeMinIntrinsicWidth(constraints.maxHeight);
      final height = child!.computeMinIntrinsicHeight(width);
      return Size(width, height);
    } else {
      return Size.zero;
    }
  }
}

class DryIntrinsicHeight extends SingleChildRenderObjectWidget {
  const DryIntrinsicHeight({super.key, super.child});

  @override
  RenderDryIntrinsicHeight createRenderObject(BuildContext context) =>
      RenderDryIntrinsicHeight();
}

class RenderDryIntrinsicHeight extends RenderIntrinsicHeight {
  @override
  Size computeDryLayout(BoxConstraints constraints) {
    if (child != null) {
      final height = child!.computeMinIntrinsicHeight(constraints.maxWidth);
      final width = child!.computeMinIntrinsicWidth(height);
      return Size(width, height);
    } else {
      return Size.zero;
    }
  }
}

class LazyLoadingList extends StatefulWidget {
  const LazyLoadingList({super.key});

  @override
  LazyLoadingListState createState() => LazyLoadingListState();
}

class LazyLoadingListState extends State<LazyLoadingList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CharactersListCubit, CharactersListState>(
        builder: (context, state) {
          if (state is CharactersListLoading) {
            return _loadingList();
          } else if (state is CharactersListError) {
            return Center(
              child: Text(state.message),
            );
          } else if (state is CharactersListInitial) {
            final characters = state.charactersList;
            final List<Widget> items = characters.map((character) {
              return _buildCharacterTile(character);
            }).toList();

            return RefreshIndicator(
              onRefresh: () async {
                context
                    .read<CharactersListCubit>()
                    .changeFetchCharactersStatus(state.characterStatus);
              },
              child: NotificationListener<ScrollNotification>(
                onNotification: (scrollInfo) {
                  if (scrollInfo.metrics.pixels ==
                      scrollInfo.metrics.maxScrollExtent) {
                    context.read<CharactersListCubit>().loadMoreCharacters(
                        state.loadedPages, state.characterStatus);
                  }
                  return false;
                },
                child: SingleChildScrollView(
                  child: FlexList(
                    horizontalSpacing: 16,
                    verticalSpacing: 16,
                    children: [
                      ...items,
                      if (state.canLoadMore) ...[
                        _loadingTile(),
                        _loadingTile(),
                      ],
                      const Row(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _buildCharacterTile(CharacterEntity character) {
    return DryIntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 148,
            height: 148,
            child: Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(32)),
                child: CachedNetworkImage(
                  imageUrl: character.imageUrl,
                  progressIndicatorBuilder: (context, url, progress) =>
                      const LoadingTile(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character.name,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                "Last location: ${character.locationName}",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _loadingTile() {
    return const DryIntrinsicWidth(
      child: SizedBox(
        width: 148,
        height: 200,
        child: LoadingTile(
          height: 200,
          maxWidth: 148,
        ),
      ),
    );
  }

  Widget _loadingList() {
    return const Center(child: CircularProgressIndicator());
  }
}
