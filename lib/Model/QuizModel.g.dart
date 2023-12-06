// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuizModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuizModelAdapter extends TypeAdapter<QuizModel> {
  @override
  final int typeId = 0;

  @override
  QuizModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuizModel(
      id: fields[0] as String,
      question: fields[1] as String,
      options: (fields[2] as List).cast<Option>(),
      createdAt: fields[3] as DateTime,
      updatedAt: fields[4] as DateTime,
      v: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, QuizModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.question)
      ..writeByte(2)
      ..write(obj.options)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.v);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuizModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OptionAdapter extends TypeAdapter<Option> {
  @override
  final int typeId = 1;

  @override
  Option read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return const Option(text: 'eROR', isCorrect: true, id: '');
  }

  @override
  void write(BinaryWriter writer, Option obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      id: json['_id'] as String,
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      text: json['text'] as String,
      isCorrect: json['isCorrect'] as bool,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'isCorrect': instance.isCorrect,
      '_id': instance.id,
    };
