import 'package:flutter/material.dart';
import 'Register.dart';
import 'home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}


class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const home()), (route) => false);
          }, icon:const Icon(Icons.arrow_back_outlined)),
          title:const Text("Login",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold , ),),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Login" , style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:const InputDecoration(
                      hintText: ("Email Address"),
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration:const InputDecoration(
                      hintText: ("Password"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(onPressed: (){

                    },
                      child:const Text("LOGIN" ,style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Don\'t have an account? "),
                      TextButton(onPressed: ()
                      {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const Register(),), (route) => false);
                      },
                          child:const Text("Register Now" ,style: TextStyle(color: Colors.blue),))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
