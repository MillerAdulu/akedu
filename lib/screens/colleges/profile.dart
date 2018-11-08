import 'package:flutter/material.dart';
import 'package:app/models/school/college/college.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:app/screens/colleges/branches.dart';
import 'courses.dart';

class CollegeProfile extends StatelessWidget {
  final College college;

  CollegeProfile({Key key, @required this.college}) : super(key: key);

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${college.college_name}'),
        ),
        body: Card(
          child: SingleChildScrollView( child:
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: '${college.images[0].image}',
            ),
            ListTile(
              leading: Icon(Icons.perm_identity),
              title: Text('Description'),
              subtitle: Text('${college.college_description}'),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('View Courses'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CollegeCourses(
                          college: college.college_name,
                              courses: college.courses,
                            )));
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('View Branches'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CollegeBranches(
                          college: college.college_name,
                              branches: college.branches,
                            )));
              },
            ),
          ]),
        )));
  }
}
