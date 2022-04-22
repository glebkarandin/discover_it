// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artefacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artefacts _$ArtefactsFromJson(Map<String, dynamic> json) => Artefacts(
      items: (json['items'] as List<dynamic>)
          .map((e) => Artefact.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtefactsToJson(Artefacts instance) => <String, dynamic>{
      'items': instance.items,
    };

Artefact _$ArtefactFromJson(Map<String, dynamic> json) => Artefact(
      completeness: json['completeness'] as int?,
      edmPreview: (json['edmPreview'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['id'] as String?,
      title:
          (json['title'] as List<dynamic>?)?.map((e) => e as String).toList(),
      dataProvider: (json['dataProvider'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      country:
          (json['country'] as List<dynamic>?)?.map((e) => e as String).toList(),
      edmPlaceLatitude: (json['edmPlaceLatitude'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      edmPlaceLongitude: (json['edmPlaceLongitude'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ArtefactToJson(Artefact instance) => <String, dynamic>{
      'completeness': instance.completeness,
      'edmPreview': instance.edmPreview,
      'id': instance.id,
      'title': instance.title,
      'dataProvider': instance.dataProvider,
      'country': instance.country,
      'edmPlaceLatitude': instance.edmPlaceLatitude,
      'edmPlaceLongitude': instance.edmPlaceLongitude,
    };
