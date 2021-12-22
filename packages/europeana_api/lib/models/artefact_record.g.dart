// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'artefact_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtefactRecord _$ArtefactRecordFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ArtefactRecord',
      json,
      ($checkedConvert) {
        final val = ArtefactRecord(
          success: $checkedConvert('success', (v) => v as bool),
          object: $checkedConvert('object',
              (v) => RecordObject.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

RecordObject _$RecordObjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RecordObject',
      json,
      ($checkedConvert) {
        final val = RecordObject(
          about: $checkedConvert('about', (v) => v as String),
        );
        return val;
      },
    );
