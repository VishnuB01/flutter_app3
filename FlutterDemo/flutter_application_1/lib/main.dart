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

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("DEMO"),
      ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Screen 1',
              ),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            children:  <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color:Colors.blue,
                ),
                child: Text("Header Drawer",
                  style:TextStyle(
                    fontSize: 24,
                  ),
                ),
                  ),
              ListTile(
                  title:Text("Screen1"), onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Screen1()),
                );
              },

              ),

              ListTile(
                title: Text("Screen2"),
                onTap: (){
                  Route route=MaterialPageRoute(builder: (context)=>Screen2());
                  Navigator.pushReplacement(context, route);
                },
              ),
            ],
          ),
        ),

        ),
      );

  }
}
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("DEMO"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Screen 2',
              ),

            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children:  <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color:Colors.blue,
                ),
                child: Text("Header Drawer",
                  style:TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title:Text("Screen1"), onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Screen1()),
                );
              },

              ),

              ListTile(
                title: Text("Screen2"),
                onTap: (){
                  Route route=MaterialPageRoute(builder: (context)=>Screen2());
                  Navigator.pushReplacement(context, route);
                },
              ),
            ],
          ),
        ),

      ),
    );

  }
}