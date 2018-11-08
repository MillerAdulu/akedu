library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:app/models/user/user.dart';
import 'package:app/models/branches/branch.dart';
import 'package:app/models/branches/country.dart';
import 'package:app/models/images/image.dart';
import 'package:app/models/school/college/college.dart';
import 'package:app/models/school/courses/course.dart';
import 'package:app/models/school/facilites/facility.dart';
import 'package:app/models/school/intakes/intake.dart';
import 'package:app/models/school/courses/comment.dart';


part 'serializers.g.dart';

@SerializersFor(const [
  User,
  Branch,
  Country,
  Image,
  College,
  Course,
  Facility,
  Intake,
  Comment
])

final Serializers serializers = (
      _$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
    ).build();