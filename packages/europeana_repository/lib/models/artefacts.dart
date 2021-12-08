import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'artefacts.g.dart';

@JsonSerializable()
class Artefacts extends Equatable {
  const Artefacts({
    required this.items
  });

  factory Artefacts.fromJson(Map<String, dynamic> json) =>
      _$ArtefactsFromJson(json);

  Map<String, dynamic> toJson() => _$ArtefactsToJson(this);

  @override
  List<Object> get props => [items];

  final List<Object> items;
}