library college;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:app/models/branches/branch.dart';
import 'package:app/models/school/intakes/intake.dart';
import 'package:app/models/school/courses/course.dart';
import 'package:app/models/school/facilites/facility.dart';
import 'package:app/models/images/image.dart';

part 'college.g.dart';

abstract class College implements Built<College, CollegeBuilder> {
  int get id;
  String get college_name;
  String get college_email;
  int get active;
  int get certified;
  String get college_description;
  @nullable
  BuiltList<Branch> get branches;
  @nullable
  BuiltList<Course> get courses;
  @nullable
  BuiltList<Facility> get facilites;
  @nullable
  BuiltList<Intake> get intakes;
  @nullable
  BuiltList<Image> get images;

  College._();
  factory College([updates(CollegeBuilder collegeBuilder)]) = _$College;
  static Serializer<College> get serializer => _$collegeSerializer;
}
