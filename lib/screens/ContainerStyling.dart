import 'package:flutter/material.dart';
 
class ContainerStylingScreen extends StatefulWidget{

const ContainerStylingScreen ({super.key, required this.title});
final String title;

@override

State<ContainerStylingScreen> createState () => _ContainerStylingScreenState();

}

class _ContainerStylingScreenState extends State<ContainerStylingScreen>{
  String? get url => null;


  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        title : const Text("Container Styling"),
      ),
      body: ListView(
        children: [
          Container(
           
            child: Text("Some data",
            style: TextStyle(color: Colors.white),
            ),
            width: 400,
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.all(20),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all()
            ),
            
            ),

       
        ],
      ),

        

    );
  }
}