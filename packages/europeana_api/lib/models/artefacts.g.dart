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
          items: $checkedConvert('items',
              (v) => (v as List<dynamic>).map((e) => e as Object).toList()),
        );
        return val;
      },
    );
