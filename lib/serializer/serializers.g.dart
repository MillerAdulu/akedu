// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

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

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Branch.serializer)
      ..add(College.serializer)
      ..add(Comment.serializer)
      ..add(Country.serializer)
      ..add(Course.serializer)
      ..add(Facility.serializer)
      ..add(Image.serializer)
      ..add(Intake.serializer)
      ..add(User.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Branch)]),
          () => new ListBuilder<Branch>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Course)]),
          () => new ListBuilder<Course>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Facility)]),
          () => new ListBuilder<Facility>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Intake)]),
          () => new ListBuilder<Intake>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Image)]),
          () => new ListBuilder<Image>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(College)]),
          () => new ListBuilder<College>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Intake)]),
          () => new ListBuilder<Intake>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Comment)]),
          () => new ListBuilder<Comment>()))
    .build();
