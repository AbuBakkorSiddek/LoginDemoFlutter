import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: ForgotPassword(),
  ));
}

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(margin: EdgeInsets.only(top: 20.0),
            child: Text('Forgot your Password?',
              style: TextStyle(fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,color: Colors.white,
                fontSize: 25,),
              textAlign: TextAlign.center,), ),

            Padding(padding: EdgeInsets.all(10.0),
            child:  Text('Enter your registered email below to receive password reset instruction...',
              style: TextStyle(fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,color: Colors.white,
                fontSize: 15,),textAlign: TextAlign.center,),),
            
            Container(
              width:250,
              height: 250,
              child:Card(
                elevation: 10.0,
                child: Image.asset('images/inbox.png'),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    )
                ),
              ),
            ),


            ElevatedButton(

              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: (){
              },

              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 05,horizontal: 120),
                child: Text('Send'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
