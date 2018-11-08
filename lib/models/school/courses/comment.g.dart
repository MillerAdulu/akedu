// GENERATED CODE - DO NOT MODIFY BY HAND

part of comment;

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

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
    ];
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Comment extends Comment {
  @override
  final String author;
  @override
  final String body;

  factory _$Comment([void updates(CommentBuilder b)]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._({this.author, this.body}) : super._() {
    if (author == null) {
      throw new BuiltValueNullFieldError('Comment', 'author');
    }
  }

  @override
  Comment rebuild(void updates(CommentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment && author == other.author && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, author.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('author', author)
          ..add('body', body))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Comment;
  }

  @override
  void update(void updates(CommentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ?? new _$Comment._(author: author, body: body);
    replace(_$result);
    return _$result;
  }
}
