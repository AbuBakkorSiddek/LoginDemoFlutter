import 'package:flutter/material.dart';
import 'package:loginpages/singin.dart';

void mian(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: SingUp(),
  ));
}
class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: ListView(
          children: [
            Container(
              width:double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(80.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New Account',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.pink),),
                  Text('Sing In and get start...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue))
                ],
              ),
              
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.account_circle_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Phone',
                        labelText: 'Phone',
                        prefixIcon: Icon(Icons.phone_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.lock_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  ElevatedButton(

                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },

                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 05,horizontal: 110),
                      child: Text('Sing Up'),
                    ),
                  ),


                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },

                    child:Text('Already have an account?Sing In',
                        style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,color: Colors.white)),
                  )


                ],
              )
            )


          ],
        ),
      ),
    );
  }
}
