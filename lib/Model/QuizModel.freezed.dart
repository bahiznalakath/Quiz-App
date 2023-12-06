// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'QuizModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) {
  return _QuizModel.fromJson(json);
}

/// @nodoc
mixin _$QuizModel {
  @HiveField(0)
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "question")
  String get question => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "options")
  List<Option> get options => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizModelCopyWith<QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelCopyWith<$Res> {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) then) =
      _$QuizModelCopyWithImpl<$Res, QuizModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "_id") String id,
      @HiveField(1) @JsonKey(name: "question") String question,
      @HiveField(2) @JsonKey(name: "options") List<Option> options,
      @HiveField(3) @JsonKey(name: "createdAt") DateTime createdAt,
      @HiveField(4) @JsonKey(name: "updatedAt") DateTime updatedAt,
      @HiveField(5) @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$QuizModelCopyWithImpl<$Res, $Val extends QuizModel>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizModelImplCopyWith<$Res>
    implements $QuizModelCopyWith<$Res> {
  factory _$$QuizModelImplCopyWith(
          _$QuizModelImpl value, $Res Function(_$QuizModelImpl) then) =
      __$$QuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "_id") String id,
      @HiveField(1) @JsonKey(name: "question") String question,
      @HiveField(2) @JsonKey(name: "options") List<Option> options,
      @HiveField(3) @JsonKey(name: "createdAt") DateTime createdAt,
      @HiveField(4) @JsonKey(name: "updatedAt") DateTime updatedAt,
      @HiveField(5) @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$QuizModelImplCopyWithImpl<$Res>
    extends _$QuizModelCopyWithImpl<$Res, _$QuizModelImpl>
    implements _$$QuizModelImplCopyWith<$Res> {
  __$$QuizModelImplCopyWithImpl(
      _$QuizModelImpl _value, $Res Function(_$QuizModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? options = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$QuizModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizModelImpl implements _QuizModel {
  const _$QuizModelImpl(
      {@HiveField(0) @JsonKey(name: "_id") required this.id,
      @HiveField(1) @JsonKey(name: "question") required this.question,
      @HiveField(2)
      @JsonKey(name: "options")
      required final List<Option> options,
      @HiveField(3) @JsonKey(name: "createdAt") required this.createdAt,
      @HiveField(4) @JsonKey(name: "updatedAt") required this.updatedAt,
      @HiveField(5) @JsonKey(name: "__v") required this.v})
      : _options = options;

  factory _$QuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "_id")
  final String id;
  @override
  @HiveField(1)
  @JsonKey(name: "question")
  final String question;
  final List<Option> _options;
  @override
  @HiveField(2)
  @JsonKey(name: "options")
  List<Option> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @HiveField(3)
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @HiveField(4)
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @HiveField(5)
  @JsonKey(name: "__v")
  final int v;

  @override
  String toString() {
    return 'QuizModel(id: $id, question: $question, options: $options, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_options), createdAt, updatedAt, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      __$$QuizModelImplCopyWithImpl<_$QuizModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizModelImplToJson(
      this,
    );
  }
}

abstract class _QuizModel implements QuizModel {
  const factory _QuizModel(
      {@HiveField(0) @JsonKey(name: "_id") required final String id,
      @HiveField(1) @JsonKey(name: "question") required final String question,
      @HiveField(2)
      @JsonKey(name: "options")
      required final List<Option> options,
      @HiveField(3)
      @JsonKey(name: "createdAt")
      required final DateTime createdAt,
      @HiveField(4)
      @JsonKey(name: "updatedAt")
      required final DateTime updatedAt,
      @HiveField(5)
      @JsonKey(name: "__v")
      required final int v}) = _$QuizModelImpl;

  factory _QuizModel.fromJson(Map<String, dynamic> json) =
      _$QuizModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "_id")
  String get id;
  @override
  @HiveField(1)
  @JsonKey(name: "question")
  String get question;
  @override
  @HiveField(2)
  @JsonKey(name: "options")
  List<Option> get options;
  @override
  @HiveField(3)
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @HiveField(4)
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @HiveField(5)
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  @JsonKey(name: "text")
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "isCorrect")
  bool get isCorrect => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res, Option>;
  @useResult
  $Res call(
      {@JsonKey(name: "text") String text,
      @JsonKey(name: "isCorrect") bool isCorrect,
      @JsonKey(name: "_id") String id});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res, $Val extends Option>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionImplCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$OptionImplCopyWith(
          _$OptionImpl value, $Res Function(_$OptionImpl) then) =
      __$$OptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "text") String text,
      @JsonKey(name: "isCorrect") bool isCorrect,
      @JsonKey(name: "_id") String id});
}

/// @nodoc
class __$$OptionImplCopyWithImpl<$Res>
    extends _$OptionCopyWithImpl<$Res, _$OptionImpl>
    implements _$$OptionImplCopyWith<$Res> {
  __$$OptionImplCopyWithImpl(
      _$OptionImpl _value, $Res Function(_$OptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isCorrect = null,
    Object? id = null,
  }) {
    return _then(_$OptionImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionImpl implements _Option {
  const _$OptionImpl(
      {@JsonKey(name: "text") required this.text,
      @JsonKey(name: "isCorrect") required this.isCorrect,
      @JsonKey(name: "_id") required this.id});

  factory _$OptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionImplFromJson(json);

  @override
  @JsonKey(name: "text")
  final String text;
  @override
  @JsonKey(name: "isCorrect")
  final bool isCorrect;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'Option(text: $text, isCorrect: $isCorrect, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, isCorrect, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      __$$OptionImplCopyWithImpl<_$OptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionImplToJson(
      this,
    );
  }
}

abstract class _Option implements Option {
  const factory _Option(
      {@JsonKey(name: "text") required final String text,
      @JsonKey(name: "isCorrect") required final bool isCorrect,
      @JsonKey(name: "_id") required final String id}) = _$OptionImpl;

  factory _Option.fromJson(Map<String, dynamic> json) = _$OptionImpl.fromJson;

  @override
  @JsonKey(name: "text")
  String get text;
  @override
  @JsonKey(name: "isCorrect")
  bool get isCorrect;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$OptionImplCopyWith<_$OptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
