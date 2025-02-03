import 'package:flutter/material.dart';
import 'package:flutter_application_9/HomeWork.dart';

class hw_1 extends StatelessWidget {
  const hw_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.yellow,
          drawer: const Drawer(),
          appBar: AppBar(
            leading: IconButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork()), (route) => false);
            }, icon:const Icon(Icons.arrow_back_outlined)),
            backgroundColor: Colors.blue[800],
            title: const Text("السيرة الذاتية"),
            centerTitle: true,
            titleTextStyle: const TextStyle(
              fontSize: 25,
              //fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          body: Container(
            alignment: Alignment.topRight,
            child: Text(
              "الاسم: عبدالله محمد \n التخصص: تقنيات معلومات \n الجنسيه: يمني \n العمر:22 \n المستوى: بكلوريوس \n : الاعمال السابقة \n ..........-1 \n .........-2 \n .........-3",
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'OfficalFont',
              ),
            ),
            color: Colors.blue[800],
            margin: const EdgeInsets.all(20),
          )),
    );
  }
}
