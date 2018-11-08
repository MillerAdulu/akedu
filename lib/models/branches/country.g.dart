// GENERATED CODE - DO NOT MODIFY BY HAND

part of country;

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

Serializer<Country> _$countrySerializer = new _$CountrySerializer();

class _$CountrySerializer implements StructuredSerializer<Country> {
  @override
  final Iterable<Type> types = const [Country, _$Country];
  @override
  final String wireName = 'Country';

  @override
  Iterable serialize(Serializers serializers, Country object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'country_name',
      serializers.serialize(object.country_name,
          specifiedType: const FullType(String)),
      'region_code',
      serializers.serialize(object.region_code,
          specifiedType: const FullType(String)),
      'continent',
      serializers.serialize(object.continent,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Country deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'country_name':
          result.country_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region_code':
          result.region_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'continent':
          result.continent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Country extends Country {
  @override
  final String country_name;
  @override
  final String region_code;
  @override
  final String continent;

  factory _$Country([void updates(CountryBuilder b)]) =>
      (new CountryBuilder()..update(updates)).build();

  _$Country._({this.country_name, this.region_code, this.continent})
      : super._() {
    if (country_name == null) {
      throw new BuiltValueNullFieldError('Country', 'country_name');
    }
    if (region_code == null) {
      throw new BuiltValueNullFieldError('Country', 'region_code');
    }
    if (continent == null) {
      throw new BuiltValueNullFieldError('Country', 'continent');
    }
  }

  @override
  Country rebuild(void updates(CountryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryBuilder toBuilder() => new CountryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Country &&
        country_name == other.country_name &&
        region_code == other.region_code &&
        continent == other.continent;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, country_name.hashCode), region_code.hashCode),
        continent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Country')
          ..add('country_name', country_name)
          ..add('region_code', region_code)
          ..add('continent', continent))
        .toString();
  }
}

class CountryBuilder implements Builder<Country, CountryBuilder> {
  _$Country _$v;

  String _country_name;
  String get country_name => _$this._country_name;
  set country_name(String country_name) => _$this._country_name = country_name;

  String _region_code;
  String get region_code => _$this._region_code;
  set region_code(String region_code) => _$this._region_code = region_code;

  String _continent;
  String get continent => _$this._continent;
  set continent(String continent) => _$this._continent = continent;

  CountryBuilder();

  CountryBuilder get _$this {
    if (_$v != null) {
      _country_name = _$v.country_name;
      _region_code = _$v.region_code;
      _continent = _$v.continent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Country other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Country;
  }

  @override
  void update(void updates(CountryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Country build() {
    final _$result = _$v ??
        new _$Country._(
            country_name: country_name,
            region_code: region_code,
            continent: continent);
    replace(_$result);
    return _$result;
  }
}
