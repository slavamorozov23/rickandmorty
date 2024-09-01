part of 'characters_list_cubit.dart';

sealed class CharactersListState extends Equatable {
  const CharactersListState();

  @override
  List<Object> get props => [];
}

final class CharactersListInitial extends CharactersListState {
  final CharacterStatus characterStatus;
  final List<CharacterEntity> charactersList;
  final int loadedPages;
  final bool canLoadMore;
  const CharactersListInitial(
      this.charactersList, this.loadedPages, this.canLoadMore,
      {this.characterStatus = CharacterStatus.alive});
}

final class CharactersListLoading extends CharactersListState {
  const CharactersListLoading();
}

final class CharactersListError extends CharactersListState {
  final CharacterStatus characterStatus;
  final String message;
  const CharactersListError(this.message,
      {this.characterStatus = CharacterStatus.alive});
}
