import 'package:flutter/material.dart';

// function to trigger build process
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  @override

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
        ),
        body: Center(
          
          child: Container(
            child: Text("Vishnu"),
          height: 200.0, 
          width: 200.0, 
          decoration: BoxDecoration(   
           color: Colors.blueAccent, 
           border: Border.all( 
             color: Colors.black, 
             width: 2.0, 
           ),
            borderRadius: BorderRadius.circular(10.0), 
           gradient: LinearGradient( 
             colors: [ 
              Colors.indigo, 
              Colors.blueAccent 
             ] 
           ), 
            boxShadow: [ 
            BoxShadow( 
              color: Colors.grey , 
              blurRadius: 2.0, 
              offset: Offset(2.0,2.0) 
            ) 
          ] 
          
      ),
   
    ),
        ),
      ),
    );
  }
}