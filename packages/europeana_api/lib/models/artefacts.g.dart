// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'artefacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Artefacts _$ArtefactsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Artefacts',
      json,
      ($checkedConvert) {
        final val = Artefacts(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => Artefact.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Artefact _$ArtefactFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Artefact',
      json,
      ($checkedConvert) {
        final val = Artefact(
          completeness: $checkedConvert('completeness', (v) => v as int),
        );
        return val;
      },
    );
