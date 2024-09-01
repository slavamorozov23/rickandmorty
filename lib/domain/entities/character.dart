// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../domain.dart';

class CharacterEntity extends Equatable {
  final int id;
  final String name;
  final CharacterStatus status;
  final String species;
  final String type;
  final String gender;
  final String originName;
  final String originUrl;
  final String locationName;
  final String locationUrl;
  final String imageUrl;
  final List<String> episodeUrls;
  final String url;
  final DateTime created;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.originName,
    required this.originUrl,
    required this.locationName,
    required this.locationUrl,
    required this.imageUrl,
    required this.episodeUrls,
    required this.url,
    required this.created,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        status,
        species,
        type,
        gender,
        originName,
        originUrl,
        locationName,
        locationUrl,
        imageUrl,
        episodeUrls,
        url,
        created,
      ];

  CharacterEntity copyWith({
    int? id,
    String? name,
    CharacterStatus? status,
    String? species,
    String? type,
    String? gender,
    String? originName,
    String? originUrl,
    String? locationName,
    String? locationUrl,
    String? imageUrl,
    List<String>? episodeUrls,
    String? url,
    DateTime? created,
  }) {
    return CharacterEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      originName: originName ?? this.originName,
      originUrl: originUrl ?? this.originUrl,
      locationName: locationName ?? this.locationName,
      locationUrl: locationUrl ?? this.locationUrl,
      imageUrl: imageUrl ?? this.imageUrl,
      episodeUrls: episodeUrls ?? this.episodeUrls,
      url: url ?? this.url,
      created: created ?? this.created,
    );
  }
}
