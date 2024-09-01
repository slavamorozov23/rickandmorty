import '../../domain/domain.dart';

class CharacterModel extends CharacterEntity {
  const CharacterModel({
    required super.id,
    required super.name,
    required super.status,
    required super.species,
    required super.type,
    required super.gender,
    required super.originName,
    required super.originUrl,
    required super.locationName,
    required super.locationUrl,
    required super.imageUrl,
    required super.episodeUrls,
    required super.url,
    required super.created,
  });

  @override
  CharacterModel copyWith({
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
    return CharacterModel(
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

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'],
      name: json['name'],
      status: _statusFromString(json['status']),
      species: json['species'],
      type: json['type'],
      gender: json['gender'],
      originName: json['origin']['name'],
      originUrl: json['origin']['url'],
      locationName: json['location']['name'],
      locationUrl: json['location']['url'],
      imageUrl: json['image'],
      episodeUrls: List<String>.from(json['episode']),
      url: json['url'],
      created: DateTime.parse(json['created']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': _statusToString(status),
      'species': species,
      'type': type,
      'gender': gender,
      'origin': {
        'name': originName,
        'url': originUrl,
      },
      'location': {
        'name': locationName,
        'url': locationUrl,
      },
      'image': imageUrl,
      'episode': episodeUrls,
      'url': url,
      'created': created.toIso8601String(),
    };
  }

  static CharacterModel fromEntity(CharacterEntity entity) {
    return CharacterModel(
      id: entity.id,
      name: entity.name,
      status: entity.status,
      species: entity.species,
      type: entity.type,
      gender: entity.gender,
      originName: entity.originName,
      originUrl: entity.originUrl,
      locationName: entity.locationName,
      locationUrl: entity.locationUrl,
      imageUrl: entity.imageUrl,
      episodeUrls: entity.episodeUrls,
      url: entity.url,
      created: entity.created,
    );
  }

  CharacterEntity toEntity() {
    return CharacterEntity(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      originName: originName,
      originUrl: originUrl,
      locationName: locationName,
      locationUrl: locationUrl,
      imageUrl: imageUrl,
      episodeUrls: episodeUrls,
      url: url,
      created: created,
    );
  }

  static CharacterStatus _statusFromString(String status) {
    switch (status.toLowerCase()) {
      case 'alive':
        return CharacterStatus.alive;
      case 'dead':
        return CharacterStatus.dead;
      default:
        return CharacterStatus.unknown;
    }
  }

  static String _statusToString(CharacterStatus status) {
    switch (status) {
      case CharacterStatus.alive:
        return 'alive';
      case CharacterStatus.dead:
        return 'dead';
      case CharacterStatus.unknown:
        return 'unknown';
    }
  }
}
