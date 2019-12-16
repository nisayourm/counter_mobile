import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main()=> runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int i = 0;
  Color colors;
  void add(){
    setState(() {
     i++; 
     switch(i){
      case 5:
      colors = Colors.pink;
      break;
    }
     switch(i){
      case 2:
      colors = Colors.pink[200];
      break;
    }
     switch(i){
      case 3:
      colors = Colors.yellow;
      break;
    }
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
      
        appBar: AppBar( 
            backgroundColor:colors ,
          title: Text("Hello World"),
          centerTitle: true,
        ),
        body: Center( 
          child: Text("${i}",style: TextStyle(fontSize: 50.0),),
        ),
        floatingActionButton: FloatingActionButton( 
          backgroundColor:colors ,
          onPressed: (){add();},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),

    );
  }
}  
