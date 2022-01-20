import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: DashBoard(),
  ));
}

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child:Text(
            'SIDDEK'
          ) ,
        ),
      ),
    );
  }
}
