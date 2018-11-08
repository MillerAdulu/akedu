// GENERATED CODE - DO NOT MODIFY BY HAND

part of facility;

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

Serializer<Facility> _$facilitySerializer = new _$FacilitySerializer();

class _$FacilitySerializer implements StructuredSerializer<Facility> {
  @override
  final Iterable<Type> types = const [Facility, _$Facility];
  @override
  final String wireName = 'Facility';

  @override
  Iterable serialize(Serializers serializers, Facility object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'college_id',
      serializers.serialize(object.college_id,
          specifiedType: const FullType(int)),
      'facility_name',
      serializers.serialize(object.facility_name,
          specifiedType: const FullType(String)),
      'facility_description',
      serializers.serialize(object.facility_description,
          specifiedType: const FullType(String)),
      'credits',
      serializers.serialize(object.credits, specifiedType: const FullType(int)),
      'certified',
      serializers.serialize(object.certified,
          specifiedType: const FullType(int)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Facility deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FacilityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'college_id':
          result.college_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'facility_name':
          result.facility_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'facility_description':
          result.facility_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credits':
          result.credits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'certified':
          result.certified = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Facility extends Facility {
  @override
  final int id;
  @override
  final int college_id;
  @override
  final String facility_name;
  @override
  final String facility_description;
  @override
  final int credits;
  @override
  final int certified;
  @override
  final int active;

  factory _$Facility([void updates(FacilityBuilder b)]) =>
      (new FacilityBuilder()..update(updates)).build();

  _$Facility._(
      {this.id,
      this.college_id,
      this.facility_name,
      this.facility_description,
      this.credits,
      this.certified,
      this.active})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Facility', 'id');
    }
    if (college_id == null) {
      throw new BuiltValueNullFieldError('Facility', 'college_id');
    }
    if (facility_name == null) {
      throw new BuiltValueNullFieldError('Facility', 'facility_name');
    }
    if (facility_description == null) {
      throw new BuiltValueNullFieldError('Facility', 'facility_description');
    }
    if (credits == null) {
      throw new BuiltValueNullFieldError('Facility', 'credits');
    }
    if (certified == null) {
      throw new BuiltValueNullFieldError('Facility', 'certified');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('Facility', 'active');
    }
  }

  @override
  Facility rebuild(void updates(FacilityBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FacilityBuilder toBuilder() => new FacilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Facility &&
        id == other.id &&
        college_id == other.college_id &&
        facility_name == other.facility_name &&
        facility_description == other.facility_description &&
        credits == other.credits &&
        certified == other.certified &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), college_id.hashCode),
                        facility_name.hashCode),
                    facility_description.hashCode),
                credits.hashCode),
            certified.hashCode),
        active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Facility')
          ..add('id', id)
          ..add('college_id', college_id)
          ..add('facility_name', facility_name)
          ..add('facility_description', facility_description)
          ..add('credits', credits)
          ..add('certified', certified)
          ..add('active', active))
        .toString();
  }
}

class FacilityBuilder implements Builder<Facility, FacilityBuilder> {
  _$Facility _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _college_id;
  int get college_id => _$this._college_id;
  set college_id(int college_id) => _$this._college_id = college_id;

  String _facility_name;
  String get facility_name => _$this._facility_name;
  set facility_name(String facility_name) =>
      _$this._facility_name = facility_name;

  String _facility_description;
  String get facility_description => _$this._facility_description;
  set facility_description(String facility_description) =>
      _$this._facility_description = facility_description;

  int _credits;
  int get credits => _$this._credits;
  set credits(int credits) => _$this._credits = credits;

  int _certified;
  int get certified => _$this._certified;
  set certified(int certified) => _$this._certified = certified;

  int _active;
  int get active => _$this._active;
  set active(int active) => _$this._active = active;

  FacilityBuilder();

  FacilityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _college_id = _$v.college_id;
      _facility_name = _$v.facility_name;
      _facility_description = _$v.facility_description;
      _credits = _$v.credits;
      _certified = _$v.certified;
      _active = _$v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Facility other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Facility;
  }

  @override
  void update(void updates(FacilityBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Facility build() {
    final _$result = _$v ??
        new _$Facility._(
            id: id,
            college_id: college_id,
            facility_name: facility_name,
            facility_description: facility_description,
            credits: credits,
            certified: certified,
            active: active);
    replace(_$result);
    return _$result;
  }
}
