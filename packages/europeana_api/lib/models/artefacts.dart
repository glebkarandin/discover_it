import 'package:json_annotation/json_annotation.dart';

part 'artefacts.g.dart';

@JsonSerializable()
class Artefacts {
  const Artefacts({
    required this.items
  });

  factory Artefacts.fromJson(Map<String, dynamic> json) =>
      _$ArtefactsFromJson(json);

  final List<Artefact> items;
}

@JsonSerializable()
class Artefact {
  const Artefact({
    required this.completeness,
    required this.edmPreview,
    required this.id,
    required this.title,
    required this.dataProvider,
    required this.country,
    required this.edmPlaceLatitude,
    required this.edmPlaceLongitude,
  });

  factory Artefact.fromJson(Map<String, dynamic> json) =>
      _$ArtefactFromJson(json);

  final int? completeness;
  final List<String>? edmPreview;
  final String? id;
  final List<String>? title;
  final List<String>? dataProvider;
  final List<String>? country;
  final List<String>? edmPlaceLatitude;
  final List<String>? edmPlaceLongitude;

  @override
  String toString() {
    return 'completeness : $completeness ::: edmPreview : $edmPreview ::: id : $id';
  }
}