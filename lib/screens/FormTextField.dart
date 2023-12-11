import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

 
class FormTextField extends StatefulWidget{

const FormTextField ({super.key, required this.title});
final String title;

@override

State<FormTextField> createState () => _FormTextFieldState();

}

class _FormTextFieldState extends State<FormTextField>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title : const Text("Text Field"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right:15),
        child: Column(
          
          
          children: [
            
            FormBuilderTextField(
        
              name: "first_name",
              initialValue: "Adjai",
            ),

             FormBuilderTextField(
        
              name: "last_name",
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