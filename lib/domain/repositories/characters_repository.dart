import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../domain.dart';

abstract class CharactersRepository {
  Future<Either<Failure, List<CharacterEntity>>> getCharacters(
      int pageIndex, CharacterStatus characterStatus);
}
