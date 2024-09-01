import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'presentation/cubit/characters_list/characters_list_cubit.dart';

import 'data/data_source/characters_remote_data_source.dart';
import 'data/repositories/characters_repository_impl.dart';
import 'data/services/characters_remote_data_service.dart';
import 'domain/repositories/characters_repository.dart';
import 'domain/usecases/get_characters.dart';
import 'router.dart';

final locator = GetIt.instance;

void setupLocator() {
  // !MARK: Other

  locator.registerSingleton<ChopperClient>(
    ChopperClient(
      baseUrl: Uri.tryParse('https://rickandmortyapi.com/api'),
      services: [
        CharactersRemoteDataService.create(),
      ],
      converter: const JsonConverter(),
    ),
  );
  locator.registerSingleton<CharactersRemoteDataService>(
    locator<ChopperClient>().getService<CharactersRemoteDataService>(),
  );
  locator.registerSingleton<AppRouter>(AppRouter());

  // !MARK: UseCases

  locator.registerLazySingleton(() => GetCharactersUseCase(
        charactersRepository: locator<CharactersRepository>(),
      ));

  // !MARK: Repository

  locator.registerLazySingleton<CharactersRepository>(
    () => CharactersRepositoryImpl(
      charactersRemoteDataSource: locator<CharactersRemoteDataSource>(),
    ),
  );

  // !MARK: Data source

  locator.registerLazySingleton<CharactersRemoteDataSource>(() =>
      CharactersRemoteDataSourceImpl(
          service: locator<CharactersRemoteDataService>()));

  // !MARK: Cubit

  locator.registerFactory(
    () => CharactersListCubit(
      locator<GetCharactersUseCase>(),
    ),
  );
}
