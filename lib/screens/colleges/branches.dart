import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:app/models/branches/branch.dart';

class CollegeBranches extends StatelessWidget {
  final String college;
  final BuiltList<Branch> branches;

  CollegeBranches({Key key, @required this.college, @required this.branches}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$college Branches'),
        ),
        body: ListView.builder(
          itemCount: branches.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text('${branches[index].city}'),
                  ),
                  ListTile(
                    leading: Icon(Icons.place),
                    title: Text('${branches[index].address}'),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
