library country;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'country.g.dart';

abstract class Country implements Built<Country, CountryBuilder> {
  String get country_name;
  String get region_code;
  String get continent;
  

  Country._();
  factory Country([updates(CountryBuilder countryBuilder)]) = _$Country;
  static Serializer<Country> get serializer => _$countrySerializer;
}
