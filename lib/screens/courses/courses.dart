import 'package:flutter/material.dart';

import 'package:app/utils/api.dart';
import 'package:app/models/school/courses/course.dart';

import 'profile.dart';

class Courses extends StatefulWidget {
  @override
  CollegesScreen createState() => CollegesScreen();
}

class CollegesScreen extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
        future: api.fetchCourses(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Text('${snapshot.data[index].id}'),
                            title: Text(
                                '${snapshot.data[index].course_name}'),
                            subtitle: Text(
                                'Certified: ${snapshot.data[index].certified == 1}'),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => CourseProfile(
                                      course: snapshot.data[index],
                                    )
                                  ));
                                },
                          ),
                        ],
                      ),
                    );
                  },
                )
              : Center(child: CircularProgressIndicator());
        },
    );
  }
}

void viewCollege() {

}
