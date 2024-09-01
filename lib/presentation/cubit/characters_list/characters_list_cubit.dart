import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/domain.dart';

part 'characters_list_state.dart';

class CharactersListCubit extends Cubit<CharactersListState> {
  final GetCharactersUseCase _getCharactersUseCase;
  CharactersListCubit(this._getCharactersUseCase)
      : super(const CharactersListInitial([], 0, true)) {
    changeFetchCharactersStatus(CharacterStatus.alive);
  }

  bool canLoadMore = true;

  void refreshState() async {
    final lastState = state;
    emit(const CharactersListLoading());
    await Future.microtask(() {});
    emit(lastState);
  }

  void changeFetchCharactersStatus(CharacterStatus characterStatus) async {
    if (state is CharactersListInitial) {
      emit(const CharactersListLoading());
      await Future.microtask(() {});
      emit(CharactersListInitial(const [], 0, canLoadMore,
          characterStatus: characterStatus));
      await loadMoreCharacters(0, characterStatus);
    }
  }

  Future<List<CharacterEntity>> fetchCharacters(
      int pageIndex, CharacterStatus characterStatus) async {
    final result =
        await _getCharactersUseCase.execute(pageIndex + 1, characterStatus);
    List<CharacterEntity> returnData = [];

    result.fold((failure) {
      log("🐈‍⬛ ${failure.message}");
      returnData = [];
      emit(CharactersListError(failure.message));
    }, (data) {
      returnData = data;
    });
    return returnData;
  }

  Future<List<CharacterEntity>> loadMoreCharacters(
      int pageIndex, CharacterStatus characterStatus) async {
    if (state is CharactersListError) {
      emit(const CharactersListInitial([], 0, true));
    } else if (state is CharactersListInitial) {
      CharactersListInitial lastState = state as CharactersListInitial;
      if (pageIndex == 0) {
        canLoadMore = true;
      }
      if (canLoadMore) {
        final data = await fetchCharacters(pageIndex, characterStatus);
        emit(const CharactersListLoading());
        await Future.microtask(() {});

        emit(CharactersListInitial([...lastState.charactersList, ...data],
            lastState.loadedPages + 1, canLoadMore,
            characterStatus: lastState.characterStatus));
        if (data.isEmpty) {
          canLoadMore = false;
        }
        return data;
      }
    } else {
      emit(const CharactersListInitial([], 0, true));
    }
    return [];
  }
}
