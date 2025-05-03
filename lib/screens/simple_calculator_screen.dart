import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SimpleCalculatorScreen extends StatefulWidget {
  const SimpleCalculatorScreen({super.key});

  @override
  State<SimpleCalculatorScreen> createState() => _SimpleCalculatorScreenState();
}

class _SimpleCalculatorScreenState extends State<SimpleCalculatorScreen> {

  String result = 'RES';

  var firstC  = TextEditingController();
  var secondC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            TextField(
              controller: firstC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'First Number',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: secondC,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Second Number',
                border: OutlineInputBorder(),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {

                    String num1 = firstC.text.trim();

                    if( num1.isEmpty){
                      Fluttertoast.showToast(msg: "Please provide number 1");
                      return;
                    }

                    String num2 = secondC.text.trim();
                    if( num2.isEmpty){
                      Fluttertoast.showToast(msg: "Please provide number 2");
                      return;
                    }

                    int n1 = int.parse(num1);
                    int n2 = int.parse(num2);


                    setState(() {
                      result = "${n1 + n2}";
                    });
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(onPressed: () {}, child: const Text('-')),
                ElevatedButton(onPressed: () {}, child: const Text('*')),
                ElevatedButton(onPressed: () {}, child: const Text('/')),
              ],
            ),

            ElevatedButton(onPressed: () {}, child: const Text("CLEAR")),

            Text(result, style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
