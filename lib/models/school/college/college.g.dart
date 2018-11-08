// GENERATED CODE - DO NOT MODIFY BY HAND

part of college;

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

Serializer<College> _$collegeSerializer = new _$CollegeSerializer();

class _$CollegeSerializer implements StructuredSerializer<College> {
  @override
  final Iterable<Type> types = const [College, _$College];
  @override
  final String wireName = 'College';

  @override
  Iterable serialize(Serializers serializers, College object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'college_name',
      serializers.serialize(object.college_name,
          specifiedType: const FullType(String)),
      'college_email',
      serializers.serialize(object.college_email,
          specifiedType: const FullType(String)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(int)),
      'certified',
      serializers.serialize(object.certified,
          specifiedType: const FullType(int)),
      'college_description',
      serializers.serialize(object.college_description,
          specifiedType: const FullType(String)),
    ];
    if (object.branches != null) {
      result
        ..add('branches')
        ..add(serializers.serialize(object.branches,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Branch)])));
    }
    if (object.courses != null) {
      result
        ..add('courses')
        ..add(serializers.serialize(object.courses,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Course)])));
    }
    if (object.facilites != null) {
      result
        ..add('facilites')
        ..add(serializers.serialize(object.facilites,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Facility)])));
    }
    if (object.intakes != null) {
      result
        ..add('intakes')
        ..add(serializers.serialize(object.intakes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Intake)])));
    }
    if (object.images != null) {
      result
        ..add('images')
        ..add(serializers.serialize(object.images,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Image)])));
    }

    return result;
  }

  @override
  College deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollegeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'college_name':
          result.college_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'college_email':
          result.college_email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'certified':
          result.certified = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'college_description':
          result.college_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branches':
          result.branches.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Branch)]))
              as BuiltList);
          break;
        case 'courses':
          result.courses.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Course)]))
              as BuiltList);
          break;
        case 'facilites':
          result.facilites.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Facility)])) as BuiltList);
          break;
        case 'intakes':
          result.intakes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Intake)]))
              as BuiltList);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Image)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$College extends College {
  @override
  final int id;
  @override
  final String college_name;
  @override
  final String college_email;
  @override
  final int active;
  @override
  final int certified;
  @override
  final String college_description;
  @override
  final BuiltList<Branch> branches;
  @override
  final BuiltList<Course> courses;
  @override
  final BuiltList<Facility> facilites;
  @override
  final BuiltList<Intake> intakes;
  @override
  final BuiltList<Image> images;

  factory _$College([void updates(CollegeBuilder b)]) =>
      (new CollegeBuilder()..update(updates)).build();

  _$College._(
      {this.id,
      this.college_name,
      this.college_email,
      this.active,
      this.certified,
      this.college_description,
      this.branches,
      this.courses,
      this.facilites,
      this.intakes,
      this.images})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('College', 'id');
    }
    if (college_name == null) {
      throw new BuiltValueNullFieldError('College', 'college_name');
    }
    if (college_email == null) {
      throw new BuiltValueNullFieldError('College', 'college_email');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('College', 'active');
    }
    if (certified == null) {
      throw new BuiltValueNullFieldError('College', 'certified');
    }
    if (college_description == null) {
      throw new BuiltValueNullFieldError('College', 'college_description');
    }
  }

  @override
  College rebuild(void updates(CollegeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CollegeBuilder toBuilder() => new CollegeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is College &&
        id == other.id &&
        college_name == other.college_name &&
        college_email == other.college_email &&
        active == other.active &&
        certified == other.certified &&
        college_description == other.college_description &&
        branches == other.branches &&
        courses == other.courses &&
        facilites == other.facilites &&
        intakes == other.intakes &&
        images == other.images;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            college_name.hashCode),
                                        college_email.hashCode),
                                    active.hashCode),
                                certified.hashCode),
                            college_description.hashCode),
                        branches.hashCode),
                    courses.hashCode),
                facilites.hashCode),
            intakes.hashCode),
        images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('College')
          ..add('id', id)
          ..add('college_name', college_name)
          ..add('college_email', college_email)
          ..add('active', active)
          ..add('certified', certified)
          ..add('college_description', college_description)
          ..add('branches', branches)
          ..add('courses', courses)
          ..add('facilites', facilites)
          ..add('intakes', intakes)
          ..add('images', images))
        .toString();
  }
}

class CollegeBuilder implements Builder<College, CollegeBuilder> {
  _$College _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _college_name;
  String get college_name => _$this._college_name;
  set college_name(String college_name) => _$this._college_name = college_name;

  String _college_email;
  String get college_email => _$this._college_email;
  set college_email(String college_email) =>
      _$this._college_email = college_email;

  int _active;
  int get active => _$this._active;
  set active(int active) => _$this._active = active;

  int _certified;
  int get certified => _$this._certified;
  set certified(int certified) => _$this._certified = certified;

  String _college_description;
  String get college_description => _$this._college_description;
  set college_description(String college_description) =>
      _$this._college_description = college_description;

  ListBuilder<Branch> _branches;
  ListBuilder<Branch> get branches =>
      _$this._branches ??= new ListBuilder<Branch>();
  set branches(ListBuilder<Branch> branches) => _$this._branches = branches;

  ListBuilder<Course> _courses;
  ListBuilder<Course> get courses =>
      _$this._courses ??= new ListBuilder<Course>();
  set courses(ListBuilder<Course> courses) => _$this._courses = courses;

  ListBuilder<Facility> _facilites;
  ListBuilder<Facility> get facilites =>
      _$this._facilites ??= new ListBuilder<Facility>();
  set facilites(ListBuilder<Facility> facilites) =>
      _$this._facilites = facilites;

  ListBuilder<Intake> _intakes;
  ListBuilder<Intake> get intakes =>
      _$this._intakes ??= new ListBuilder<Intake>();
  set intakes(ListBuilder<Intake> intakes) => _$this._intakes = intakes;

  ListBuilder<Image> _images;
  ListBuilder<Image> get images => _$this._images ??= new ListBuilder<Image>();
  set images(ListBuilder<Image> images) => _$this._images = images;

  CollegeBuilder();

  CollegeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _college_name = _$v.college_name;
      _college_email = _$v.college_email;
      _active = _$v.active;
      _certified = _$v.certified;
      _college_description = _$v.college_description;
      _branches = _$v.branches?.toBuilder();
      _courses = _$v.courses?.toBuilder();
      _facilites = _$v.facilites?.toBuilder();
      _intakes = _$v.intakes?.toBuilder();
      _images = _$v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(College other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$College;
  }

  @override
  void update(void updates(CollegeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$College build() {
    _$College _$result;
    try {
      _$result = _$v ??
          new _$College._(
              id: id,
              college_name: college_name,
              college_email: college_email,
              active: active,
              certified: certified,
              college_description: college_description,
              branches: _branches?.build(),
              courses: _courses?.build(),
              facilites: _facilites?.build(),
              intakes: _intakes?.build(),
              images: _images?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'branches';
        _branches?.build();
        _$failedField = 'courses';
        _courses?.build();
        _$failedField = 'facilites';
        _facilites?.build();
        _$failedField = 'intakes';
        _intakes?.build();
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'College', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
