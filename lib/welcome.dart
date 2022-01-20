import 'package:flutter/material.dart';
import 'login.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Image.asset('images/welcom.png',width: double.infinity,),
                Container(
                  child: Text('Welcome',
                    style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 30,
                ),

                Text('Log in with your data that you entered during Your registration',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),

                SizedBox(
                  height: 90,
                ),

                ElevatedButton(

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 130),
                    child:Text('Sing In',style: TextStyle(color: Colors.black),)
                    ,
                  ),

                ),

                ElevatedButton(

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),),

                  onPressed: (){
                  },
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 130),
                      child:Text('Sing Up',)
                  ),

                ),
              ],
            )
          ],
        )
      ),
    );
  }
}