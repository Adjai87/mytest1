import 'package:flutter/material.dart';


class RowsScreen extends StatefulWidget{

const RowsScreen ({super.key, required this.title});
final String title;

@override

State<RowsScreen> createState () => _RowsScreenState();

}

class _RowsScreenState extends State<RowsScreen>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title : const Text("Rows"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("1"),
          Text("2"),
          Text("3"),

        ],



      )

    );
  }
}