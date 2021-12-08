// GENERATED CODE - DO NOT MODIFY BY HAND

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

Map<String, dynamic> _$ArtefactsToJson(Artefacts instance) => <String, dynamic>{
      'items': instance.items,
    };
