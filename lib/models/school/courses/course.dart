library course;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:app/models/school/college/college.dart';
import 'package:app/models/school/intakes/intake.dart';
import 'comment.dart';

part 'course.g.dart';

abstract class Course implements Built<Course, CourseBuilder> {
  int get id;
  String get course_name;
  int get certified;
  @nullable
  BuiltList<College> get colleges;
  @nullable
  BuiltList<Intake> get intakes;

  @nullable
  BuiltList<Comment> get comments;

  @nullable
  double get sentiment_score;
  @nullable
  double get popularity;
  @nullable
  double get professional_ethics_rating;
  @nullable
  double get communication_skills_rating;
  @nullable
  double get theory_prac_application_rating;
  @nullable
  double get current_field_trends_rating;
  @nullable
  double get written_communication_rating;
  @nullable
  double get critical_thinking_rating;
  @nullable
  double get team_member_functionality_rating;
  @nullable
  double get independent_learner_rating;
  @nullable
  double get further_education_career_rating;
  @nullable
  double get strong_leadership_skills_rating;
  @nullable
  double get acceptance_at_institution_rating;
  @nullable
  double get faculty_support_rating;
  @nullable
  double get social_activities_rating;
  @nullable
  double get employment_preparation_rating;
  
  
  Course._();
  factory Course([updates(CourseBuilder courseBuilder)]) = _$Course;
  static Serializer<Course> get serializer => _$courseSerializer;
}
