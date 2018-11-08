import 'package:flutter/material.dart';

import 'package:app/models/school/courses/course.dart';

import 'offered.dart';
import 'intakes.dart';

class CourseProfile extends StatelessWidget {
  final Course course;

  CourseProfile({Key key, @required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${course.course_name}'),
        ),
        body: Card(
            child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            ListTile(
              leading: Icon(Icons.perm_identity),
              title: Text('Colleges Offered'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CollegeOffered(
                              course: course.course_name,
                              colleges: course.colleges,
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('View Intakes'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CourseIntakes(
                              course: course.course_name,
                              intakes: course.intakes,
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Sentiment Score'),
              subtitle: Text('${this._parse(course.sentiment_score)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Popularity'),
              subtitle: Text('${this._parse(course.popularity)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Professional Ethics Rating'),
              subtitle:
                  Text('${this._parse(course.professional_ethics_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Communication Skills Rating'),
              subtitle:
                  Text('${this._parse(course.communication_skills_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Theory Practice Application Rating'),
              subtitle:
                  Text('${this._parse(course.theory_prac_application_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Current Field Trends Rating'),
              subtitle:
                  Text('${this._parse(course.current_field_trends_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Written Communication Rating'),
              subtitle:
                  Text('${this._parse(course.written_communication_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Critical Thiking Rating'),
              subtitle: Text('${this._parse(course.critical_thinking_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Team Member Functionality Rating'),
              subtitle: Text(
                  '${this._parse(course.team_member_functionality_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Independent Learner Rating'),
              subtitle:
                  Text('${this._parse(course.independent_learner_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Further Education Career Rating'),
              subtitle: Text(
                  '${this._parse(course.further_education_career_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Strong Leadership Skills Rating'),
              subtitle: Text(
                  '${this._parse(course.strong_leadership_skills_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Acceptance at Institution Rating'),
              subtitle: Text(
                  '${this._parse(course.acceptance_at_institution_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Faculty Support Rating'),
              subtitle: Text('${this._parse(course.faculty_support_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Social Activities Rating'),
              subtitle: Text('${this._parse(course.social_activities_rating)}'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Employment Preparation Rating'),
              subtitle:
                  Text('${this._parse(course.employment_preparation_rating)}'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.view_headline),
              title: Text('Comments'),
            ),
            Padding(
                padding: EdgeInsets.all(0.1),
                child: ListView.builder(
                  itemCount: course.comments.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.create),
                            title: Text('${course.comments[index].body}'),
                            subtitle: Text('By: ${course.comments[index].author}'),
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ]),
        )));
  }

  String _parse(double val) {
    return val == null ? 'N/A' : val.toString();
  }
}
