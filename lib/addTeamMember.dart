import 'package:flutter/material.dart';
import 'package:team_building/member.dart';

class addTeamMember extends StatefulWidget{


  State<StatefulWidget> createState() => _addTeamMember();


}

class _addTeamMember extends State<addTeamMember> {

  List<Member> member = new List.empty(growable: true);
  var textAge = new TextEditingController();
  var textName = new TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Team Member'),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).pushNamed('TML',arguments: member);
        }, icon: Icon(Icons.list))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('The number of team member is :', style: TextStyle(fontSize: 25),),
            SizedBox(height: 15),
            Text('${member.length}',style: TextStyle(fontSize: 20),),
            SizedBox(height: 25),
            ElevatedButton(onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context){

                return Padding(
                    child:Column(
                    children: [
                      Row(
                        children: [
                          Text('Age'),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 100,
                          child:TextField(
                            controller: textAge,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'age',


                            ),
                            keyboardType: TextInputType.number,

                          ),
                          ),
                          SizedBox(
                            width: 5,
                          ),

                          Text('Name'),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 200,
                          child:TextField(
                            controller: textName,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'name',

                            ),
                            keyboardType: TextInputType.text,
                          ))
                        ],
                      ),
                      ElevatedButton(onPressed: (){
                        setState(() {



                          member.add(Member(age: int.parse(textAge.text), name: textName.text));


                        }
                        );

                        Navigator.pop(context);

                      }, child: Text('ENTER')
                      )

                    ],

                  ),
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  );
              });

            }, child: Text('ADD'))

          ],
        ),
      ),

    );
  }
}