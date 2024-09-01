import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import '../cubit/characters_list/characters_list_cubit.dart';
import '../widgets/lazy_loading_list.dart';
import '../widgets/loading_tile.dart';

@RoutePage()
class CharactersListPage extends StatelessWidget {
  const CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 56),
        child: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            height: constraints.maxHeight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rick and Morty\nCharacters",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                _buildStatusChips(context),
                const SizedBox(height: 16),
                const LazyLoadingList(),
                // _buildContentList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatusChips(BuildContext context) {
    return BlocBuilder<CharactersListCubit, CharactersListState>(
      builder: (context, state) {
        if (state is CharactersListLoading) {
          return _loadingChipList();
        }

        if (state is CharactersListInitial) {
          return Wrap(
            runSpacing: 8,
            spacing: 8,
            children: CharacterStatus.values
                .map(
                  (val) => ChoiceChip(
                    label: Text(
                      val.name[0].toUpperCase() +
                          val.name.substring(1).toLowerCase(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: state.characterStatus == val
                                ? Colors.white
                                : Colors.black,
                          ),
                    ),
                    selected: state.characterStatus == val,
                    onSelected: (value) => context
                        .read<CharactersListCubit>()
                        .changeFetchCharactersStatus(val),
                    selectedColor: Colors.redAccent,
                    backgroundColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide.none,
                    showCheckmark: false,
                  ),
                )
                .toList(),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  Widget _loadingChipList() {
    return Wrap(
      runSpacing: 8,
      spacing: 8,
      children: List.generate(
        CharacterStatus.values.length,
        (index) => const LoadingTile(
          height: 34,
          maxWidth: 120,
        ),
      ),
    );
  }
}
