import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.teal.shade600,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
 
class _DicePageState extends State<DicePage> {
  int upper= 1;
    int lower= 2;
    int total=3;
  @override
  Widget build(BuildContext context) {
    
    return  Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,

                children: <Widget>[
            Expanded( flex:10,child: FlatButton(
            onPressed: (){
              setState(() {
                randomgene();
              });
             },
              child: Column(
                      children: <Widget>[
                      Expanded(flex: 5,
                          child: Padding(
                          padding: const EdgeInsets.all(36.0),
                          child: Image.asset('images/dice$upper.png'),
                       ),
                       ),
                      Expanded(flex: 5,
                          child: Padding(
                          padding: const EdgeInsets.all(36.0),
                          child:Image.asset('images/dice$lower.png'),
                        ),
                        ),
                        Expanded(child: FlatButton(child: Text('Click Change'), onPressed: () {setState(() {
                          randomgene();
                        });},),)
                ],
               ),
            )),
            Expanded(child:Container(
              width: double.infinity,
               color:Colors.white,
               child:Center(
                 child: Text('Dice Number: $total' , 
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 40.0,color: Colors.teal)),
               ))),
            ],)
    );
   }
            
    void randomgene() {
        upper =Random().nextInt(6)+1;
        lower= Random().nextInt(6)+1;
        total=upper+lower;
       
    }
}