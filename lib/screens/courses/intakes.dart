import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:app/models/school/intakes/intake.dart';

class CourseIntakes extends StatelessWidget {
  final String course;
  final BuiltList<Intake> intakes;

  CourseIntakes({Key key, @required this.course, @required this.intakes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$course Branches'),
        ),
        body: ListView.builder(
          itemCount: intakes.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('${intakes[index].intake_description}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('From: ${intakes[index].intake_start} - To: ${intakes[index].intake_end}'),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
