import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:app/models/school/college/college.dart';

class CollegeOffered extends StatelessWidget {
  final String course;
  final BuiltList<College> colleges;

  CollegeOffered({Key key, @required this.course, @required this.colleges}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$course offered in:'),
        ),
        body: ListView.builder(
          itemCount: colleges.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('${colleges[index].college_name}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('${colleges[index].college_description}'),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
