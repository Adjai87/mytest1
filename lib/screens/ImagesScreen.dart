import 'package:flutter/material.dart';

class ImagesScreen extends StatefulWidget{

const ImagesScreen ({super.key, required this.title});
final String title;

@override

State<ImagesScreen> createState () => _ImagesScreenState();

}

class _ImagesScreenState extends State<ImagesScreen>{
  String? get url => null;


  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        title : const Text("Images"),
      ),
      body: ListView(
        children: [
          Image(
            
            image: AssetImage("assets/images/pic.jpg"),
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            
            ), 

            Image(
        
        image: NetworkImage("https://th.bing.com/th/id/R.e800d3da0e85f4ed49cf2816ae993cfb?rik=Q51TPRlWDr7Ufw&pid=ImgRaw&r=0"),
        width: 300,
        height: 300,
        fit: BoxFit.cover,
        
        ),

           Image(
        
        image: NetworkImage("https://th.bing.com/th/id/OIP.yyNJFqDsPNcw-GG5wxRoGQHaEo?w=1920&h=1200&rs=1&pid=ImgDetMain"),
        width: 300,
        height: 300,
        fit: BoxFit.cover,
        
        ),


        ],
      ),

        

    );
  }
}