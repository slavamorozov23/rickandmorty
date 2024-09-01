import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class CharactersRepositoryImpl extends CharactersRepository {
  final CharactersRemoteDataSource charactersRemoteDataSource;

  CharactersRepositoryImpl({required this.charactersRemoteDataSource});

  @override
  Future<Either<Failure, List<CharacterEntity>>> getCharacters(
      int pageIndex, CharacterStatus characterStatus) async {
    try {
      final data = await charactersRemoteDataSource.getCharacters(
          pageIndex, characterStatus);
      return Right(data.map((obj) => obj.toEntity()).toList());
    } on NoMoreItemsException {
      return const Left(
          CharactersGetFailure(message: "Все элементы уже были загружены"));
    } catch (e) {
      return Left(CharactersGetFailure(
          message:
              "Непредвиденная ошибка. Проверьте подключение к интернету, и перезапустите приложение (${e.toString()})"));
    }
  }
}
