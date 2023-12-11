import 'package:flutter/material.dart';
import 'package:mytest/screens/ColumnsScreen.dart';
import 'package:mytest/screens/Container.dart';
import 'package:mytest/screens/ContainerStyling.dart';
import 'package:mytest/screens/FormDecoration.dart';
import 'package:mytest/screens/FormTextField.dart';
import 'package:mytest/screens/ImagesScreen.dart';
import 'package:mytest/screens/JsonScreen.dart';
import 'package:mytest/screens/RowsScreen.dart';
import 'package:mytest/screens/TextstylingScreen.dart';
import 'package:mytest/screens/ToastScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: ListView(
        children: [
          ListTile(

            title: Text("Collumns"),
            leading: Icon(Icons.view_column_outlined),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("All about columns"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const ColumnScreen(title: '',),
                  ),
                  );
                   },


          ),

               ListTile(

            title: Text("JSON"),
            leading: Icon(Icons.join_inner_sharp),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("json data format---"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  JsonScreen(title: '',),
                  ),
                  );
                   },


          ),
            ListTile(

            title: Text("Rows"),
            leading: Icon(Icons.table_rows_outlined),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("All about Rows"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  RowsScreen(title: '',),
                  ),
                  );
                   },


          ),

          ListTile(

            title: Text("Container"),
            leading: Icon(Icons.check_box_outline_blank_outlined),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("All about Containers"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  ContainerScreen(title: '',),
                  ),
                  );
                   },


          ),

           ListTile(

            title: Text("Images"),
            leading: Icon(Icons.photo_size_select_actual_outlined),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("All about Images"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  ImagesScreen(title: '',),
                  ),
                  );
                   },


          ),

           ListTile(

            title: Text("Text Styling"),
            leading: Icon(Icons.text_fields_outlined),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("Decorating Text"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  TextStylingScreen(title: '',),
                  ),
                  );
                   },


          ),

           ListTile(

            title: Text("Container Styling"),
            leading: Icon(Icons.deblur_rounded),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("Decorating Containers"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  ContainerStylingScreen(title: '',),
                  ),
                  );
                   },


          ),
             ListTile(

            title: Text("Toast"),
            leading: Icon(Icons.touch_app),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("How to make popups"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  ToastScreen(title: '',),
                  ),
                  );
                   },


          ), 

          ListTile(

            title: Text("Form Text Field"),
            leading: Icon(Icons.text_fields),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("Text input"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const  FormTextField(title: '',),
                  ),
                  );
                   },


          ), 

          
          ListTile(

            title: Text("Form Decoration"),
            leading: Icon(Icons.text_fields),
            trailing:  Icon(Icons.chevron_right),
            subtitle: Text("Dercorating the input field"),

            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const FormDecoration(title: '',),
                  ),
                  );
                   },


          ), 
          /*InkWell(
            
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const ColumnScreen(title: '',),
                  ),
                  );

            },
            child: Text("Columnsss")),

            InkWell(
            
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>const ColumnScreen(title: '',),
                  ),
                  );

            },
            child: Text("Columnsss")),*/
        
        
        ],
      ),
    );
  }
}
