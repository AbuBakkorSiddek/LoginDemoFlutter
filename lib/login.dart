import 'package:flutter/material.dart';

import 'dashboard.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      backgroundColor: Color(0xFF2F3FA),
    ),
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amberAccent,
        body:ListView(
          children: [
            Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.pink),),
                        Text('Sing In and get start...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight:Radius.circular(80.0),
                        )
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            prefixIcon: Icon(Icons.people),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        TextField(
                          decoration:InputDecoration(
                              hintText: 'Password',
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              prefixIcon: Icon(Icons.lock)
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                          },
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 120),
                              child:Text('Sing In',)
                          ),

                        ),

                        SizedBox(
                          height: 10,
                        ),
                        
                        Text('Forgot Password?',
                        style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white)),

                        SizedBox(
                          height: 5,
                        ),

                        TextButton(
                          onPressed: (){},

                          child:Text('Don not have an account?Sing Up',
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,color: Colors.white)),
                        )
                      ],
                    ),
                  ),



                   //add  ICON
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('images/facebook.png'),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(10.0),

                          ),
                        ) ,
                      ),
                      Expanded(
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('images/google.png'),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(10.0),

                          ),
                        ) ,
                      ),
                      Expanded(
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('images/linkedin.png'),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(10.0),

                          ),
                        ) ,
                      ),
                    ],
                  )

                ]
            ),
          ],
        )
      ),
    );
  }
}
