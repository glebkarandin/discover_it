import 'package:json_annotation/json_annotation.dart';

part 'artefact_record.g.dart';

@JsonSerializable()
class ArtefactRecord {
  ArtefactRecord({
    required this.success,
    required this.object,
  });

  factory ArtefactRecord.fromJson(Map<String, dynamic> json) =>
      _$ArtefactRecordFromJson(json);

  final bool success;
  final RecordObject object;
}

@JsonSerializable()
class RecordObject {
  const RecordObject({
    required this.about,
  });

  factory RecordObject.fromJson(Map<String, dynamic> json) =>
      _$RecordObjectFromJson(json);

  final String about;

  @override
  String toString() {
    return 'about : $about';
  }
}