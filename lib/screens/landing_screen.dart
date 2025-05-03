

import 'package:flutter/material.dart';
import 'package:uoajk_day4/screens/first_screen.dart';
import 'package:uoajk_day4/screens/profile_screen.dart';
import 'package:uoajk_day4/screens/second_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  var nameC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('AJK'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            OutlinedButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return FirstScreen();
              }));

            }, child: Text('First Screen')),
            SizedBox(height: 20,),
            OutlinedButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return SecondScreen();
              }));

            }, child: Text("Second Screen")),

            ElevatedButton(onPressed: (){

              String name = nameC.text;


              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ProfileScreen(naam: name,);
              }));
            }, child: const Text('Profile')),

            TextField(
              controller: nameC,
              decoration: InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder()
              ),
            )
          ],
        ),
      ),

    );
  }
}
