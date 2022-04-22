// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artefact_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtefactRecord _$ArtefactRecordFromJson(Map<String, dynamic> json) =>
    ArtefactRecord(
      success: json['success'] as bool,
      object: RecordObject.fromJson(json['object'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArtefactRecordToJson(ArtefactRecord instance) =>
    <String, dynamic>{
      'success': instance.success,
      'object': instance.object,
    };

RecordObject _$RecordObjectFromJson(Map<String, dynamic> json) => RecordObject(
      about: json['about'] as String,
    );

Map<String, dynamic> _$RecordObjectToJson(RecordObject instance) =>
    <String, dynamic>{
      'about': instance.about,
    };
