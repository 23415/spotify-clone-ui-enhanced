// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Song _$SongFromJson(Map<String, dynamic> json) => Song(
      json['songName'] as String,
      json['artistName'] as String,
      json['genre'] as String,
      json['imageUrl'] as String,
      json['lyrics'] as String,
      json['date'] == null ? null : DateTime.parse(json['date'] as String),
      json['favourite'] as bool,
    );

Map<String, dynamic> _$SongToJson(Song instance) => <String, dynamic>{
      'songName': instance.songName,
      'artistName': instance.artistName,
      'genre': instance.genre,
      'imageUrl': instance.imageUrl,
      'lyrics': instance.lyrics,
      'date': instance.date?.toIso8601String(),
      'favourite': instance.favourite,
    };
