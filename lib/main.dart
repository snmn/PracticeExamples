import 'package:flutter/material.dart';
import 'package:lab1/inputs.dart';

import 'custombutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Login Task'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 25.0),
                color: Colors.white,
                child: Center(
                    child: Image.asset('images/logo.png', width: 180,)
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(25.0),
                height: size.height/2.6,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all( Radius.circular(30),),
                    color: Color(0xffFBAF43)
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                      ),
                    ),
                    const AppInputField("Email"),
                    const AppInputField("Password"),
                     OrangeButton(
                          title: 'Sign In', onTap: (){

                     },
                        ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text('Sign Up', style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),
                            ),

                          ),
                          Text(' | ', style: Theme.of(context).textTheme.bodyText1),
                          const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text('Forgot Password?', style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                            ),


                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}