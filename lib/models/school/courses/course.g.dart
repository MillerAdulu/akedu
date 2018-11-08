// GENERATED CODE - DO NOT MODIFY BY HAND

part of course;

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

Serializer<Course> _$courseSerializer = new _$CourseSerializer();

class _$CourseSerializer implements StructuredSerializer<Course> {
  @override
  final Iterable<Type> types = const [Course, _$Course];
  @override
  final String wireName = 'Course';

  @override
  Iterable serialize(Serializers serializers, Course object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'course_name',
      serializers.serialize(object.course_name,
          specifiedType: const FullType(String)),
      'certified',
      serializers.serialize(object.certified,
          specifiedType: const FullType(int)),
    ];
    if (object.colleges != null) {
      result
        ..add('colleges')
        ..add(serializers.serialize(object.colleges,
            specifiedType:
                const FullType(BuiltList, const [const FullType(College)])));
    }
    if (object.intakes != null) {
      result
        ..add('intakes')
        ..add(serializers.serialize(object.intakes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Intake)])));
    }
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Comment)])));
    }
    if (object.sentiment_score != null) {
      result
        ..add('sentiment_score')
        ..add(serializers.serialize(object.sentiment_score,
            specifiedType: const FullType(double)));
    }
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(double)));
    }
    if (object.professional_ethics_rating != null) {
      result
        ..add('professional_ethics_rating')
        ..add(serializers.serialize(object.professional_ethics_rating,
            specifiedType: const FullType(double)));
    }
    if (object.communication_skills_rating != null) {
      result
        ..add('communication_skills_rating')
        ..add(serializers.serialize(object.communication_skills_rating,
            specifiedType: const FullType(double)));
    }
    if (object.theory_prac_application_rating != null) {
      result
        ..add('theory_prac_application_rating')
        ..add(serializers.serialize(object.theory_prac_application_rating,
            specifiedType: const FullType(double)));
    }
    if (object.current_field_trends_rating != null) {
      result
        ..add('current_field_trends_rating')
        ..add(serializers.serialize(object.current_field_trends_rating,
            specifiedType: const FullType(double)));
    }
    if (object.written_communication_rating != null) {
      result
        ..add('written_communication_rating')
        ..add(serializers.serialize(object.written_communication_rating,
            specifiedType: const FullType(double)));
    }
    if (object.critical_thinking_rating != null) {
      result
        ..add('critical_thinking_rating')
        ..add(serializers.serialize(object.critical_thinking_rating,
            specifiedType: const FullType(double)));
    }
    if (object.team_member_functionality_rating != null) {
      result
        ..add('team_member_functionality_rating')
        ..add(serializers.serialize(object.team_member_functionality_rating,
            specifiedType: const FullType(double)));
    }
    if (object.independent_learner_rating != null) {
      result
        ..add('independent_learner_rating')
        ..add(serializers.serialize(object.independent_learner_rating,
            specifiedType: const FullType(double)));
    }
    if (object.further_education_career_rating != null) {
      result
        ..add('further_education_career_rating')
        ..add(serializers.serialize(object.further_education_career_rating,
            specifiedType: const FullType(double)));
    }
    if (object.strong_leadership_skills_rating != null) {
      result
        ..add('strong_leadership_skills_rating')
        ..add(serializers.serialize(object.strong_leadership_skills_rating,
            specifiedType: const FullType(double)));
    }
    if (object.acceptance_at_institution_rating != null) {
      result
        ..add('acceptance_at_institution_rating')
        ..add(serializers.serialize(object.acceptance_at_institution_rating,
            specifiedType: const FullType(double)));
    }
    if (object.faculty_support_rating != null) {
      result
        ..add('faculty_support_rating')
        ..add(serializers.serialize(object.faculty_support_rating,
            specifiedType: const FullType(double)));
    }
    if (object.social_activities_rating != null) {
      result
        ..add('social_activities_rating')
        ..add(serializers.serialize(object.social_activities_rating,
            specifiedType: const FullType(double)));
    }
    if (object.employment_preparation_rating != null) {
      result
        ..add('employment_preparation_rating')
        ..add(serializers.serialize(object.employment_preparation_rating,
            specifiedType: const FullType(double)));
    }

    return result;
  }

  @override
  Course deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseBuilder();

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
        case 'course_name':
          result.course_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'certified':
          result.certified = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'colleges':
          result.colleges.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(College)])) as BuiltList);
          break;
        case 'intakes':
          result.intakes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Intake)]))
              as BuiltList);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Comment)])) as BuiltList);
          break;
        case 'sentiment_score':
          result.sentiment_score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'professional_ethics_rating':
          result.professional_ethics_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'communication_skills_rating':
          result.communication_skills_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'theory_prac_application_rating':
          result.theory_prac_application_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'current_field_trends_rating':
          result.current_field_trends_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'written_communication_rating':
          result.written_communication_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'critical_thinking_rating':
          result.critical_thinking_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'team_member_functionality_rating':
          result.team_member_functionality_rating = serializers.deserialize(
              value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'independent_learner_rating':
          result.independent_learner_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'further_education_career_rating':
          result.further_education_career_rating = serializers.deserialize(
              value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'strong_leadership_skills_rating':
          result.strong_leadership_skills_rating = serializers.deserialize(
              value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'acceptance_at_institution_rating':
          result.acceptance_at_institution_rating = serializers.deserialize(
              value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'faculty_support_rating':
          result.faculty_support_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'social_activities_rating':
          result.social_activities_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'employment_preparation_rating':
          result.employment_preparation_rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Course extends Course {
  @override
  final int id;
  @override
  final String course_name;
  @override
  final int certified;
  @override
  final BuiltList<College> colleges;
  @override
  final BuiltList<Intake> intakes;
  @override
  final BuiltList<Comment> comments;
  @override
  final double sentiment_score;
  @override
  final double popularity;
  @override
  final double professional_ethics_rating;
  @override
  final double communication_skills_rating;
  @override
  final double theory_prac_application_rating;
  @override
  final double current_field_trends_rating;
  @override
  final double written_communication_rating;
  @override
  final double critical_thinking_rating;
  @override
  final double team_member_functionality_rating;
  @override
  final double independent_learner_rating;
  @override
  final double further_education_career_rating;
  @override
  final double strong_leadership_skills_rating;
  @override
  final double acceptance_at_institution_rating;
  @override
  final double faculty_support_rating;
  @override
  final double social_activities_rating;
  @override
  final double employment_preparation_rating;

  factory _$Course([void updates(CourseBuilder b)]) =>
      (new CourseBuilder()..update(updates)).build();

  _$Course._(
      {this.id,
      this.course_name,
      this.certified,
      this.colleges,
      this.intakes,
      this.comments,
      this.sentiment_score,
      this.popularity,
      this.professional_ethics_rating,
      this.communication_skills_rating,
      this.theory_prac_application_rating,
      this.current_field_trends_rating,
      this.written_communication_rating,
      this.critical_thinking_rating,
      this.team_member_functionality_rating,
      this.independent_learner_rating,
      this.further_education_career_rating,
      this.strong_leadership_skills_rating,
      this.acceptance_at_institution_rating,
      this.faculty_support_rating,
      this.social_activities_rating,
      this.employment_preparation_rating})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Course', 'id');
    }
    if (course_name == null) {
      throw new BuiltValueNullFieldError('Course', 'course_name');
    }
    if (certified == null) {
      throw new BuiltValueNullFieldError('Course', 'certified');
    }
  }

  @override
  Course rebuild(void updates(CourseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseBuilder toBuilder() => new CourseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Course &&
        id == other.id &&
        course_name == other.course_name &&
        certified == other.certified &&
        colleges == other.colleges &&
        intakes == other.intakes &&
        comments == other.comments &&
        sentiment_score == other.sentiment_score &&
        popularity == other.popularity &&
        professional_ethics_rating == other.professional_ethics_rating &&
        communication_skills_rating == other.communication_skills_rating &&
        theory_prac_application_rating ==
            other.theory_prac_application_rating &&
        current_field_trends_rating == other.current_field_trends_rating &&
        written_communication_rating == other.written_communication_rating &&
        critical_thinking_rating == other.critical_thinking_rating &&
        team_member_functionality_rating ==
            other.team_member_functionality_rating &&
        independent_learner_rating == other.independent_learner_rating &&
        further_education_career_rating ==
            other.further_education_career_rating &&
        strong_leadership_skills_rating ==
            other.strong_leadership_skills_rating &&
        acceptance_at_institution_rating ==
            other.acceptance_at_institution_rating &&
        faculty_support_rating == other.faculty_support_rating &&
        social_activities_rating == other.social_activities_rating &&
        employment_preparation_rating == other.employment_preparation_rating;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, id.hashCode), course_name.hashCode), certified.hashCode),
                                                                                colleges.hashCode),
                                                                            intakes.hashCode),
                                                                        comments.hashCode),
                                                                    sentiment_score.hashCode),
                                                                popularity.hashCode),
                                                            professional_ethics_rating.hashCode),
                                                        communication_skills_rating.hashCode),
                                                    theory_prac_application_rating.hashCode),
                                                current_field_trends_rating.hashCode),
                                            written_communication_rating.hashCode),
                                        critical_thinking_rating.hashCode),
                                    team_member_functionality_rating.hashCode),
                                independent_learner_rating.hashCode),
                            further_education_career_rating.hashCode),
                        strong_leadership_skills_rating.hashCode),
                    acceptance_at_institution_rating.hashCode),
                faculty_support_rating.hashCode),
            social_activities_rating.hashCode),
        employment_preparation_rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Course')
          ..add('id', id)
          ..add('course_name', course_name)
          ..add('certified', certified)
          ..add('colleges', colleges)
          ..add('intakes', intakes)
          ..add('comments', comments)
          ..add('sentiment_score', sentiment_score)
          ..add('popularity', popularity)
          ..add('professional_ethics_rating', professional_ethics_rating)
          ..add('communication_skills_rating', communication_skills_rating)
          ..add(
              'theory_prac_application_rating', theory_prac_application_rating)
          ..add('current_field_trends_rating', current_field_trends_rating)
          ..add('written_communication_rating', written_communication_rating)
          ..add('critical_thinking_rating', critical_thinking_rating)
          ..add('team_member_functionality_rating',
              team_member_functionality_rating)
          ..add('independent_learner_rating', independent_learner_rating)
          ..add('further_education_career_rating',
              further_education_career_rating)
          ..add('strong_leadership_skills_rating',
              strong_leadership_skills_rating)
          ..add('acceptance_at_institution_rating',
              acceptance_at_institution_rating)
          ..add('faculty_support_rating', faculty_support_rating)
          ..add('social_activities_rating', social_activities_rating)
          ..add('employment_preparation_rating', employment_preparation_rating))
        .toString();
  }
}

class CourseBuilder implements Builder<Course, CourseBuilder> {
  _$Course _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _course_name;
  String get course_name => _$this._course_name;
  set course_name(String course_name) => _$this._course_name = course_name;

  int _certified;
  int get certified => _$this._certified;
  set certified(int certified) => _$this._certified = certified;

  ListBuilder<College> _colleges;
  ListBuilder<College> get colleges =>
      _$this._colleges ??= new ListBuilder<College>();
  set colleges(ListBuilder<College> colleges) => _$this._colleges = colleges;

  ListBuilder<Intake> _intakes;
  ListBuilder<Intake> get intakes =>
      _$this._intakes ??= new ListBuilder<Intake>();
  set intakes(ListBuilder<Intake> intakes) => _$this._intakes = intakes;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  double _sentiment_score;
  double get sentiment_score => _$this._sentiment_score;
  set sentiment_score(double sentiment_score) =>
      _$this._sentiment_score = sentiment_score;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  double _professional_ethics_rating;
  double get professional_ethics_rating => _$this._professional_ethics_rating;
  set professional_ethics_rating(double professional_ethics_rating) =>
      _$this._professional_ethics_rating = professional_ethics_rating;

  double _communication_skills_rating;
  double get communication_skills_rating => _$this._communication_skills_rating;
  set communication_skills_rating(double communication_skills_rating) =>
      _$this._communication_skills_rating = communication_skills_rating;

  double _theory_prac_application_rating;
  double get theory_prac_application_rating =>
      _$this._theory_prac_application_rating;
  set theory_prac_application_rating(double theory_prac_application_rating) =>
      _$this._theory_prac_application_rating = theory_prac_application_rating;

  double _current_field_trends_rating;
  double get current_field_trends_rating => _$this._current_field_trends_rating;
  set current_field_trends_rating(double current_field_trends_rating) =>
      _$this._current_field_trends_rating = current_field_trends_rating;

  double _written_communication_rating;
  double get written_communication_rating =>
      _$this._written_communication_rating;
  set written_communication_rating(double written_communication_rating) =>
      _$this._written_communication_rating = written_communication_rating;

  double _critical_thinking_rating;
  double get critical_thinking_rating => _$this._critical_thinking_rating;
  set critical_thinking_rating(double critical_thinking_rating) =>
      _$this._critical_thinking_rating = critical_thinking_rating;

  double _team_member_functionality_rating;
  double get team_member_functionality_rating =>
      _$this._team_member_functionality_rating;
  set team_member_functionality_rating(
          double team_member_functionality_rating) =>
      _$this._team_member_functionality_rating =
          team_member_functionality_rating;

  double _independent_learner_rating;
  double get independent_learner_rating => _$this._independent_learner_rating;
  set independent_learner_rating(double independent_learner_rating) =>
      _$this._independent_learner_rating = independent_learner_rating;

  double _further_education_career_rating;
  double get further_education_career_rating =>
      _$this._further_education_career_rating;
  set further_education_career_rating(double further_education_career_rating) =>
      _$this._further_education_career_rating = further_education_career_rating;

  double _strong_leadership_skills_rating;
  double get strong_leadership_skills_rating =>
      _$this._strong_leadership_skills_rating;
  set strong_leadership_skills_rating(double strong_leadership_skills_rating) =>
      _$this._strong_leadership_skills_rating = strong_leadership_skills_rating;

  double _acceptance_at_institution_rating;
  double get acceptance_at_institution_rating =>
      _$this._acceptance_at_institution_rating;
  set acceptance_at_institution_rating(
          double acceptance_at_institution_rating) =>
      _$this._acceptance_at_institution_rating =
          acceptance_at_institution_rating;

  double _faculty_support_rating;
  double get faculty_support_rating => _$this._faculty_support_rating;
  set faculty_support_rating(double faculty_support_rating) =>
      _$this._faculty_support_rating = faculty_support_rating;

  double _social_activities_rating;
  double get social_activities_rating => _$this._social_activities_rating;
  set social_activities_rating(double social_activities_rating) =>
      _$this._social_activities_rating = social_activities_rating;

  double _employment_preparation_rating;
  double get employment_preparation_rating =>
      _$this._employment_preparation_rating;
  set employment_preparation_rating(double employment_preparation_rating) =>
      _$this._employment_preparation_rating = employment_preparation_rating;

  CourseBuilder();

  CourseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _course_name = _$v.course_name;
      _certified = _$v.certified;
      _colleges = _$v.colleges?.toBuilder();
      _intakes = _$v.intakes?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _sentiment_score = _$v.sentiment_score;
      _popularity = _$v.popularity;
      _professional_ethics_rating = _$v.professional_ethics_rating;
      _communication_skills_rating = _$v.communication_skills_rating;
      _theory_prac_application_rating = _$v.theory_prac_application_rating;
      _current_field_trends_rating = _$v.current_field_trends_rating;
      _written_communication_rating = _$v.written_communication_rating;
      _critical_thinking_rating = _$v.critical_thinking_rating;
      _team_member_functionality_rating = _$v.team_member_functionality_rating;
      _independent_learner_rating = _$v.independent_learner_rating;
      _further_education_career_rating = _$v.further_education_career_rating;
      _strong_leadership_skills_rating = _$v.strong_leadership_skills_rating;
      _acceptance_at_institution_rating = _$v.acceptance_at_institution_rating;
      _faculty_support_rating = _$v.faculty_support_rating;
      _social_activities_rating = _$v.social_activities_rating;
      _employment_preparation_rating = _$v.employment_preparation_rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Course other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Course;
  }

  @override
  void update(void updates(CourseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Course build() {
    _$Course _$result;
    try {
      _$result = _$v ??
          new _$Course._(
              id: id,
              course_name: course_name,
              certified: certified,
              colleges: _colleges?.build(),
              intakes: _intakes?.build(),
              comments: _comments?.build(),
              sentiment_score: sentiment_score,
              popularity: popularity,
              professional_ethics_rating: professional_ethics_rating,
              communication_skills_rating: communication_skills_rating,
              theory_prac_application_rating: theory_prac_application_rating,
              current_field_trends_rating: current_field_trends_rating,
              written_communication_rating: written_communication_rating,
              critical_thinking_rating: critical_thinking_rating,
              team_member_functionality_rating:
                  team_member_functionality_rating,
              independent_learner_rating: independent_learner_rating,
              further_education_career_rating: further_education_career_rating,
              strong_leadership_skills_rating: strong_leadership_skills_rating,
              acceptance_at_institution_rating:
                  acceptance_at_institution_rating,
              faculty_support_rating: faculty_support_rating,
              social_activities_rating: social_activities_rating,
              employment_preparation_rating: employment_preparation_rating);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'colleges';
        _colleges?.build();
        _$failedField = 'intakes';
        _intakes?.build();
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Course', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
