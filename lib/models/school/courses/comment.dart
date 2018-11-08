library comment;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  String get author;
  @nullable
  String get body;


  Comment._();
  factory Comment([updates(CommentBuilder commentBuilder)]) = _$Comment;
  static Serializer<Comment> get serializer => _$commentSerializer;
}
