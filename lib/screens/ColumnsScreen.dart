import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget{

const ColumnScreen ({super.key, required this.title});
final String title;

@override

State<ColumnScreen> createState () => _ColumnScreenState();

}

class _ColumnScreenState extends State<ColumnScreen>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title : const Text("Columns"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text("My Text #1"),
          Text("My Text #2"),
          Text("My Text #4"),
          Text("My Text #5"),

        ],

      ),

    );
  }
}