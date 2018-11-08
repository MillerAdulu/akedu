// GENERATED CODE - DO NOT MODIFY BY HAND

part of branch;

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

Serializer<Branch> _$branchSerializer = new _$BranchSerializer();

class _$BranchSerializer implements StructuredSerializer<Branch> {
  @override
  final Iterable<Type> types = const [Branch, _$Branch];
  @override
  final String wireName = 'Branch';

  @override
  Iterable serialize(Serializers serializers, Branch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude,
            specifiedType: const FullType(String)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(Country)));
    }

    return result;
  }

  @override
  Branch deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country.replace(serializers.deserialize(value,
              specifiedType: const FullType(Country)) as Country);
          break;
      }
    }

    return result.build();
  }
}

class _$Branch extends Branch {
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String address;
  @override
  final String city;
  @override
  final Country country;

  factory _$Branch([void updates(BranchBuilder b)]) =>
      (new BranchBuilder()..update(updates)).build();

  _$Branch._(
      {this.latitude, this.longitude, this.address, this.city, this.country})
      : super._();

  @override
  Branch rebuild(void updates(BranchBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchBuilder toBuilder() => new BranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Branch &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        address == other.address &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, latitude.hashCode), longitude.hashCode),
                address.hashCode),
            city.hashCode),
        country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Branch')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('address', address)
          ..add('city', city)
          ..add('country', country))
        .toString();
  }
}

class BranchBuilder implements Builder<Branch, BranchBuilder> {
  _$Branch _$v;

  String _latitude;
  String get latitude => _$this._latitude;
  set latitude(String latitude) => _$this._latitude = latitude;

  String _longitude;
  String get longitude => _$this._longitude;
  set longitude(String longitude) => _$this._longitude = longitude;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  CountryBuilder _country;
  CountryBuilder get country => _$this._country ??= new CountryBuilder();
  set country(CountryBuilder country) => _$this._country = country;

  BranchBuilder();

  BranchBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _address = _$v.address;
      _city = _$v.city;
      _country = _$v.country?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Branch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Branch;
  }

  @override
  void update(void updates(BranchBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Branch build() {
    _$Branch _$result;
    try {
      _$result = _$v ??
          new _$Branch._(
              latitude: latitude,
              longitude: longitude,
              address: address,
              city: city,
              country: _country?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'country';
        _country?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Branch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
