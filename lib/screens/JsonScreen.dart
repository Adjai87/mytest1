import 'dart:convert';

import 'package:flutter/material.dart';

class JsonScreen extends StatefulWidget{

const JsonScreen ({super.key, required this.title});
final String title;

@override

State<JsonScreen> createState () => _JsonScreenState();

}

class _JsonScreenState extends State<JsonScreen>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title : const Text("JSON"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [

          ListTile(

            title: Text("string to json"),
            
            onTap: (){
       
              stringToJson();

            },


          ),
          
          ListTile(

            title: Text("object to json"),
            
            onTap: (){
       
              objectToJson();

            },


          ),
          
          

        ],

      ),

    );
  }
    String raw_string = "I love Theo";
    var processed_string  = "";
    Person my_person = new Person();
  void stringToJson() {
         
    var processed_string = jsonEncode(raw_string);
    print("=====> RAW STRING : $raw_string");
    print("=====> RAW STRING : $processed_string");
  }
  
  void objectToJson() {
    processed_string =jsonEncode(my_person);
    print(processed_string);
 }
}

class Person {

  String name = "John Doe";
  String country = "Kenya";
  int age = 21;

 Map<dynamic,dynamic> toJson() {

    return {

      "name" : name,
      "age"  : age,
      "country" : country

    };

  }
}