// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_remote_data_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CharactersRemoteDataService extends CharactersRemoteDataService {
  _$CharactersRemoteDataService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CharactersRemoteDataService;

  @override
  Future<Response<dynamic>> getCharacters(
    int page,
    String status,
  ) {
    final Uri $url = Uri.parse('/character');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'status': status,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
