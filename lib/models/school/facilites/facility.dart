library facility;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'facility.g.dart';

abstract class Facility implements Built<Facility, FacilityBuilder> {
  int get id;
  int get college_id;
  String get facility_name;
  String get facility_description;
  int get credits;
  int get certified;
  int get active;
  

  Facility._();
  factory Facility([updates(FacilityBuilder facilityBuilder)]) = _$Facility;
  static Serializer<Facility> get serializer => _$facilitySerializer;
}
