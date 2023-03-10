import 'package:flutter/material.dart';
import 'package:team_building/addTeamMember.dart';
import 'package:team_building/teamMemberList.dart';

import 'member.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: 'ATM',
      routes: {
        'ATM': (context) => addTeamMember(),
        'TML': (context) => teamMemberList()
      }

    );
  }
}



