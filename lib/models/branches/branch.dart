library branch;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:app/models/branches/country.dart';

part 'branch.g.dart';

abstract class Branch implements Built<Branch, BranchBuilder> {
  @nullable
  String get latitude;
  @nullable
  String get longitude;
  @nullable
  String get address;
  @nullable
  String get city;
  @nullable
  Country get country;

  Branch._();
  factory Branch([updates(BranchBuilder branchBuilder)]) = _$Branch;
  static Serializer<Branch> get serializer => _$branchSerializer;
}
