import 'package:flutter/material.dart';
import 'package:flutter_application_9/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const login()), (route) => false);
          }, icon: const Icon(Icons.arrow_back_outlined)),
          title:const Text("Register",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold , ),),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Register" , style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:const InputDecoration(
                      hintText: ("Name"),
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:const InputDecoration(
                        hintText: ("Email Address"),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),)
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
                      child:const Text("Create Account" ,style:TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do have an account? "),
                      TextButton(onPressed: ()
                      {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const login(),), (route) => false);
                      },
                          child:const Text("Login Now" ,style: TextStyle(color: Colors.blue),))
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
