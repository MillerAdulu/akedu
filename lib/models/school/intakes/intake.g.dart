// GENERATED CODE - DO NOT MODIFY BY HAND

part of intake;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<Intake> _$intakeSerializer = new _$IntakeSerializer();

class _$IntakeSerializer implements StructuredSerializer<Intake> {
  @override
  final Iterable<Type> types = const [Intake, _$Intake];
  @override
  final String wireName = 'Intake';

  @override
  Iterable serialize(Serializers serializers, Intake object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'intake_start',
      serializers.serialize(object.intake_start,
          specifiedType: const FullType(String)),
      'intake_end',
      serializers.serialize(object.intake_end,
          specifiedType: const FullType(String)),
    ];
    if (object.intake_alias != null) {
      result
        ..add('intake_alias')
        ..add(serializers.serialize(object.intake_alias,
            specifiedType: const FullType(String)));
    }
    if (object.intake_description != null) {
      result
        ..add('intake_description')
        ..add(serializers.serialize(object.intake_description,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Intake deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IntakeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'intake_alias':
          result.intake_alias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'intake_description':
          result.intake_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'intake_start':
          result.intake_start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'intake_end':
          result.intake_end = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Intake extends Intake {
  @override
  final String intake_alias;
  @override
  final String intake_description;
  @override
  final String intake_start;
  @override
  final String intake_end;

  factory _$Intake([void updates(IntakeBuilder b)]) =>
      (new IntakeBuilder()..update(updates)).build();

  _$Intake._(
      {this.intake_alias,
      this.intake_description,
      this.intake_start,
      this.intake_end})
      : super._() {
    if (intake_start == null) {
      throw new BuiltValueNullFieldError('Intake', 'intake_start');
    }
    if (intake_end == null) {
      throw new BuiltValueNullFieldError('Intake', 'intake_end');
    }
  }

  @override
  Intake rebuild(void updates(IntakeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  IntakeBuilder toBuilder() => new IntakeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Intake &&
        intake_alias == other.intake_alias &&
        intake_description == other.intake_description &&
        intake_start == other.intake_start &&
        intake_end == other.intake_end;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, intake_alias.hashCode), intake_description.hashCode),
            intake_start.hashCode),
        intake_end.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Intake')
          ..add('intake_alias', intake_alias)
          ..add('intake_description', intake_description)
          ..add('intake_start', intake_start)
          ..add('intake_end', intake_end))
        .toString();
  }
}

class IntakeBuilder implements Builder<Intake, IntakeBuilder> {
  _$Intake _$v;

  String _intake_alias;
  String get intake_alias => _$this._intake_alias;
  set intake_alias(String intake_alias) => _$this._intake_alias = intake_alias;

  String _intake_description;
  String get intake_description => _$this._intake_description;
  set intake_description(String intake_description) =>
      _$this._intake_description = intake_description;

  String _intake_start;
  String get intake_start => _$this._intake_start;
  set intake_start(String intake_start) => _$this._intake_start = intake_start;

  String _intake_end;
  String get intake_end => _$this._intake_end;
  set intake_end(String intake_end) => _$this._intake_end = intake_end;

  IntakeBuilder();

  IntakeBuilder get _$this {
    if (_$v != null) {
      _intake_alias = _$v.intake_alias;
      _intake_description = _$v.intake_description;
      _intake_start = _$v.intake_start;
      _intake_end = _$v.intake_end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Intake other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Intake;
  }

  @override
  void update(void updates(IntakeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Intake build() {
    final _$result = _$v ??
        new _$Intake._(
            intake_alias: intake_alias,
            intake_description: intake_description,
            intake_start: intake_start,
            intake_end: intake_end);
    replace(_$result);
    return _$result;
  }
}
