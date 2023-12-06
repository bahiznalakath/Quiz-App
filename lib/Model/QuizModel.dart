import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'QuizModel.freezed.dart';
part 'QuizModel.g.dart';

@HiveType(typeId: 0)
@freezed
class QuizModel with _$QuizModel {
  const factory QuizModel({
    @HiveField(0) @JsonKey(name: "_id") required String id,
    @HiveField(1) @JsonKey(name: "question") required String question,
    @HiveField(2) @JsonKey(name: "options") required List<Option> options,
    @HiveField(3) @JsonKey(name: "createdAt") required DateTime createdAt,
    @HiveField(4) @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @HiveField(5) @JsonKey(name: "__v") required int v,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) => _$QuizModelFromJson(json);
}

@HiveType(typeId: 1)
@freezed
class Option with _$Option {
  const factory Option({
    @JsonKey(name: "text") required String text,
    @JsonKey(name: "isCorrect") required bool isCorrect,
    @JsonKey(name: "_id") required String id,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
