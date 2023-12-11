import 'package:flutter/material.dart';


class TextStylingScreen extends StatefulWidget{

const TextStylingScreen ({super.key, required this.title});
final String title;

@override

State<TextStylingScreen> createState () => _TextStylingScreenState();

}

class _TextStylingScreenState extends State<TextStylingScreen>{
  String? get url => null;


  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        title : const Text("Text Styling"),
      ),
      body: ListView(
        children: [
          Container(
            
            child: Text("My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text My Text",

            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
      
          ),
            ),

        Container(
            
            child: Text("My Text",

            textAlign: TextAlign.justify,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle( 
              color: Colors.black,
              backgroundColor: Colors.yellow,
              fontSize: 20,
              fontStyle: FontStyle.italic,

            ),
      
          ),
            ),

        ],
      ),

        

    );
  }
}