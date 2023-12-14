import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HttpRequestScreen extends StatefulWidget{

const HttpRequestScreen ({super.key, required this.title});
final String title;

@override

State<HttpRequestScreen> createState () => _HttpRequestScreenState();

}

class _HttpRequestScreenState extends State<HttpRequestScreen>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title : const Text("Http"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [

          ListTile(

            title: Text("Http Get"),
            
            onTap: (){
       
              httpGet();

            },


          ),
        ]
      ),

    );
  }
  
  void httpGet() async{

    var response = null;
   

    try{

       response = await Dio().get("https://mocki.io/v1/d4867d8b-b5d5-4a48-a4ab-79131b5809b8");
       print("======Success=====");
    } on DioError catch(e){
      print(e.response?.toString());
      print("FAILED....");

    } 
        print(response);
        return;
  }
  
}