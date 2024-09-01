import 'package:chopper/chopper.dart';

part 'characters_remote_data_service.chopper.dart';

@ChopperApi(baseUrl: '/character')
abstract class CharactersRemoteDataService extends ChopperService {
  @Get()
  Future<Response> getCharacters(
    @Query('page') int page,
    @Query('status') String status,
  );

  static CharactersRemoteDataService create([ChopperClient? client]) =>
      _$CharactersRemoteDataService(client);
}
