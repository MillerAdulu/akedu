import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:app/models/school/courses/course.dart';
import 'package:app/screens/courses/profile.dart';

class CollegeCourses extends StatelessWidget {
  final String college;
  final BuiltList<Course> courses;

  CollegeCourses({Key key, @required this.courses, @required this.college}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$college Courses')),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text('${courses[index].course_name}'),
                  subtitle: Text('${courses[index].certified == 1 ? "Certified" : "Not Certified" }'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => (CourseProfile(course: courses[index],)
                                    )
                                  )
                    );},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
