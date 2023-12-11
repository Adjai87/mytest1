import 'package:flutter/material.dart';


class ContainerScreen extends StatefulWidget{

const ContainerScreen ({super.key, required this.title});
final String title;

@override

State<ContainerScreen> createState () => _ContainerScreenState();

}

class _ContainerScreenState extends State<ContainerScreen>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title : const Text("Container"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(

          color: Colors.yellow.shade700,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),


          child: Text("I\n love \nArsenal". toUpperCase(),
          textAlign : TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700


          ),
          
          )
          ,
          ),
        color: Colors.green,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(left: 20, right: 20),
        
        ),
      
      

    );

  }
}