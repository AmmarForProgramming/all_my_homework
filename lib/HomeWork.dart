import 'package:flutter/material.dart';
import 'package:flutter_application_9/home.dart';
import 'package:flutter_application_9/hw_4.dart';
import 'package:flutter_application_9/hw_5.dart';
import 'package:flutter_application_9/hw_6.dart';
import 'package:flutter_application_9/hw_7.dart';

import 'hw_1.dart';
import 'hw_2.dart';
import 'hw_3.dart';
import 'hw_8.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          appBar: AppBar(

            leading: IconButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const home()), (route) => false);
            }, icon:const Icon(Icons.arrow_back_outlined)),
            title:const Text("قائمة الاعمال",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold , ),),
            backgroundColor: Colors.teal,
          ),

          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    // padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_1()), (route) => false);
                    },
                      child:const Text("المشروع 1 " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                  Container(
                    //  padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_2()), (route) => false);
                    },
                      child:const Text("المشروع2 " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                  Container(
                    //s  padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_3()), (route) => false);
                    },
                      child:const Text("المشروع3 " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                  Container(
                    //s  padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_4()), (route) => false);
                    },
                      child:const Text("المشروع 4 " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                  Container(
                    //s  padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_5()), (route) => false);
                    },
                      child:const Text("المشروع 5 " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                  Container(
                    //s  padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_6()), (route) => false);
                    },
                      child:const Text("المشروع 6 " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                  Container(
                    //s  padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_7()), (route) => false);
                    },
                      child:const Text("المشروع 7 اله حاسبه " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                  Container(
                    //s  padding: const EdgeInsets.all(30.0),
                    margin: const EdgeInsets.all(30.0),
                    color: Colors.teal,
                    width: double.infinity,
                    child: MaterialButton(onPressed: ()
                    {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const hw_8()), (route) => false);
                    },
                      child:const Text("المشروع 8 " , style: TextStyle(fontSize: 25.0),),
                    ),
                  ),
                ],
              ),
            ],)
      ),
    );
  }
}
