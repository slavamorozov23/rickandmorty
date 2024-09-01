import '../../domain/domain.dart';
import '../data.dart';

abstract class CharactersRemoteDataSource {
  Future<List<CharacterModel>> getCharacters(
      int pageIndex, CharacterStatus characterStatus);
}

class CharactersRemoteDataSourceImpl extends CharactersRemoteDataSource {
  final CharactersRemoteDataService service;

  CharactersRemoteDataSourceImpl({required this.service});
  @override
  Future<List<CharacterModel>> getCharacters(
      int pageIndex, CharacterStatus characterStatus) async {
    final response =
        await service.getCharacters(pageIndex, characterStatus.name);
    final List<CharacterModel> characters = (response.body['results'] as List)
        .map((json) => CharacterModel.fromJson(json))
        .toList();
    return characters;
  }
}
