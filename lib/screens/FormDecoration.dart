import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

 
class FormDecoration extends StatefulWidget{

const FormDecoration ({super.key, required this.title});
final String title;

@override

State<FormDecoration> createState () => _FormDecorationState();

}

class _FormDecorationState extends State<FormDecoration>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title : const Text("Form Decoration"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right:15),
        child: Column(
          
          
          children: [
            
            FormBuilderTextField(
        
              name: "first_name",
              
                decoration: InputDecoration(
                label: Text("First name"),
                helperText: "Enter name as it appears on your passport",
                helperStyle: TextStyle(color: Colors.green),
                icon: Icon(Icons.verified_user_outlined),
                 
              ),
               
            ),

             FormBuilderTextField(
        
              name: "last_name",
              decoration: InputDecoration(
                icon: Icon(Icons.verified_user_outlined),
                iconColor: Colors.blue,
                label: Text("Last Name"),
              ),
            ),
        
          ],
        
        
        
        ),
      ),

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