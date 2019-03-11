// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiple_choice_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MultipleChoiceData> _$multipleChoiceDataSerializer =
    new _$MultipleChoiceDataSerializer();

class _$MultipleChoiceDataSerializer
    implements StructuredSerializer<MultipleChoiceData> {
  @override
  final Iterable<Type> types = const [MultipleChoiceData, _$MultipleChoiceData];
  @override
  final String wireName = 'MultipleChoiceData';

  @override
  Iterable serialize(Serializers serializers, MultipleChoiceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'answer',
      serializers.serialize(object.answer,
          specifiedType: const FullType(String)),
      'choices',
      serializers.serialize(object.choices,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  MultipleChoiceData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultipleChoiceDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'choices':
          result.choices.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MultipleChoiceData extends MultipleChoiceData {
  @override
  final String answer;
  @override
  final BuiltList<String> choices;

  factory _$MultipleChoiceData([void updates(MultipleChoiceDataBuilder b)]) =>
      (new MultipleChoiceDataBuilder()..update(updates)).build();

  _$MultipleChoiceData._({this.answer, this.choices}) : super._() {
    if (answer == null) {
      throw new BuiltValueNullFieldError('MultipleChoiceData', 'answer');
    }
    if (choices == null) {
      throw new BuiltValueNullFieldError('MultipleChoiceData', 'choices');
    }
  }

  @override
  MultipleChoiceData rebuild(void updates(MultipleChoiceDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipleChoiceDataBuilder toBuilder() =>
      new MultipleChoiceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipleChoiceData &&
        answer == other.answer &&
        choices == other.choices;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, answer.hashCode), choices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MultipleChoiceData')
          ..add('answer', answer)
          ..add('choices', choices))
        .toString();
  }
}

class MultipleChoiceDataBuilder
    implements
        Builder<MultipleChoiceData, MultipleChoiceDataBuilder>,
        GameDataBuilder {
  _$MultipleChoiceData _$v;

  String _answer;
  String get answer => _$this._answer;
  set answer(String answer) => _$this._answer = answer;

  ListBuilder<String> _choices;
  ListBuilder<String> get choices =>
      _$this._choices ??= new ListBuilder<String>();
  set choices(ListBuilder<String> choices) => _$this._choices = choices;

  MultipleChoiceDataBuilder();

  MultipleChoiceDataBuilder get _$this {
    if (_$v != null) {
      _answer = _$v.answer;
      _choices = _$v.choices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant MultipleChoiceData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MultipleChoiceData;
  }

  @override
  void update(void updates(MultipleChoiceDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MultipleChoiceData build() {
    _$MultipleChoiceData _$result;
    try {
      _$result = _$v ??
          new _$MultipleChoiceData._(answer: answer, choices: choices.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'choices';
        choices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MultipleChoiceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
