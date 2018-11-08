import 'package:flutter/material.dart';

import 'package:app/utils/api.dart';
import 'package:app/models/school/college/college.dart';

import 'profile.dart';

class Colleges extends StatefulWidget {
  @override
  CollegesScreen createState() => CollegesScreen();
}

class CollegesScreen extends State<Colleges> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<College>>(
        future: api.fetchColleges(),
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
                                '${snapshot.data[index].college_name}'),
                            subtitle: Text(
                                'Active: ${snapshot.data[index].active == 1}'),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => CollegeProfile(
                                      college: snapshot.data[index],
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
