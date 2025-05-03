
import 'package:flutter/material.dart';
import 'package:uoajk_day4/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: IconButton(onPressed: (){

          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return SecondScreen();
          }));

        }, icon: Icon(Icons.shopping_cart, size: 100,)),
      ),

    );
  }
}
