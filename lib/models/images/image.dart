library image;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image.g.dart';

abstract class Image implements Built<Image, ImageBuilder> {
  String get image;
  
  
  Image._();
  factory Image([updates(ImageBuilder imageBuilder)]) = _$Image;
  static Serializer<Image> get serializer => _$imageSerializer;
}
