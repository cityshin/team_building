
import 'package:flutter/material.dart';
import 'package:team_building/member.dart';

class teamMemberList extends StatefulWidget {
  State<StatefulWidget> createState() => _teamMemberList();

}

class _teamMemberList extends State<teamMemberList> {
  Widget build(BuildContext context) {

   final List<Member>? members = ModalRoute.of(context)!.settings.arguments as List<Member>?;
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Container(
        child: Center(
          child: ListView.builder(itemBuilder: (context,position){
            return GestureDetector(
              child: Card(
                child: Row(
                  children: [
                    Text(members![position].age!.toString(),style: TextStyle(fontSize: 30),
                    ),
                    Text('살',style: TextStyle(fontSize: 30)),
                    SizedBox(
                      width: 30,
                    ),
                    Text(members![position].name!,style: TextStyle(fontSize: 30),),
                    Text('입니다',style: TextStyle(fontSize: 30),)
                  ],
                ),



              ),
           /* onTap: () {
                setState(() {
                  members.removeAt(position);
                });
              },*/
            );
          },
            itemCount: members!.length,),
        ),
      ),
    );
  }

}
