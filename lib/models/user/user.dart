library user;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  String get access_token;
  String get name;
  String get email;

  User._();
  factory User([updates(UserBuilder userBuilder)]) = _$User;
  static Serializer<User> get serializer => _$userSerializer;
}
