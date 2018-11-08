library intake;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intake.g.dart';

abstract class Intake implements Built<Intake, IntakeBuilder> {
  @nullable
  String get intake_alias;
  @nullable
  String get intake_description;
  String get intake_start;
  String get intake_end;


  Intake._();
  factory Intake([updates(IntakeBuilder intakeBuilder)]) = _$Intake;
  static Serializer<Intake> get serializer => _$intakeSerializer;
}
