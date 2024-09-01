import 'package:dartz/dartz.dart';

import '../../core/core.dart';
import '../domain.dart';

class GetCharactersUseCase {
  final CharactersRepository charactersRepository;

  GetCharactersUseCase({required this.charactersRepository});

  Future<Either<Failure, List<CharacterEntity>>> execute(
      int pageIndex, CharacterStatus characterStatus) {
    return charactersRepository.getCharacters(pageIndex, characterStatus);
  }
}
