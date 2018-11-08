import 'dart:async';

import 'network.dart';
import 'package:app/serializer/serializers.dart';

import 'package:app/models/user/user.dart';
import 'package:app/models/school/college/college.dart';
import 'package:app/models/school/courses/course.dart';

class AppAPI {
  NetworkUtil _netUtil = new NetworkUtil();
  final String baseUrl = 'https://akedu.herokuapp.com/api';

  Future<User> login(String email, String password) async {
    final String loginUrl = 'https://akedu.herokuapp.com/users/login';

    return _netUtil.post(loginUrl, body: {
      'email': email,
      'password': password,
    }).then((dynamic res) {
      if (res == null) return null;
      return serializers.deserializeWith(User.serializer, res);
    });
  }

  Future<User> signup(String name, String email, String password, String confirmPass) async {
    final String signUp = 'https://akedu.herokuapp.com/users/register';

    return _netUtil.post(signUp, body: {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': confirmPass
    }).then((dynamic res) {
      if (res == null) return null;
      return serializers.deserializeWith(User.serializer, res);
    });
  }

  Future<List<College>> fetchColleges() async {
    final String collegeUrl = '$baseUrl/colleges';

    return _netUtil.get(collegeUrl).then((dynamic res) {
      if (res == null) return null;
      return res
          .map<College>((college) =>
              serializers.deserializeWith(College.serializer, college))
          .toList();
    });
  }

  Future<Course> getCourse(String courseId) async {
    final String courseUrl = '$baseUrl/courses/$courseId';

    return _netUtil.get(courseUrl).then((dynamic res) {
      return serializers.deserializeWith(Course.serializer, res);
    });
  }

  Future<List<Course>> fetchCourses() async {
    final String coursesUrl = '$baseUrl/courses';

    return _netUtil.get(coursesUrl).then((dynamic res) {
      if (res == null) return null;
      return res
          .map<Course>((course) =>
              serializers.deserializeWith(Course.serializer, course))
          .toList();
    });
  }
}

AppAPI api = new AppAPI();
