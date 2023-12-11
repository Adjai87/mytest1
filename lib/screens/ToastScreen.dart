import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

 
class ToastScreen extends StatefulWidget{

const ToastScreen ({super.key, required this.title});
final String title;

@override

State<ToastScreen> createState () => _ToastScreenState();

}

class _ToastScreenState extends State<ToastScreen>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title : const Text("Rows"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              makeToast();
            },
            child: Center(
              child: Text("Make a Toast")
              )
              ),
          

        ],



      )

    );
  }
  
  void makeToast() {
  Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );


  }
}