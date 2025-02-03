import 'package:flutter/material.dart';
import 'HomeWork.dart';

class hw_7 extends StatefulWidget {
  const hw_7({super.key});

  @override
  State<hw_7> createState() => _hw_7State();
}

class _hw_7State extends State<hw_7> {


  TextEditingController one=TextEditingController();
  TextEditingController tow=TextEditingController();
  String res="0";

  //الجمع
  void sum(){
    double num1=double.tryParse(one.text)??0;
    double num2=double.tryParse(tow.text)??0;
    setState(() {
      res=(num1 + num2).toString();
    });
  }

  //الطرح
  void sub(){
    double num1=double.tryParse(one.text)??0;
    double num2=double.tryParse(tow.text)??0;
    setState(() {
      res=(num1 - num2).toString();
    });
  }

  //الضرب
  void mult(){
    double num1=double.tryParse(one.text)??0;
    double num2=double.tryParse(tow.text)??0;
    setState(() {
      res=(num1 * num2).toString();
    });
  }

  //القسمة
  void divi(){
    double num1=double.tryParse(one.text)??0;
    double num2=double.tryParse(tow.text)??0;
    setState(() {
      res=(num1 / num2).toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const HomeWork()), (route) => false);
          }, icon:const Icon(Icons.arrow_back_outlined)),
          title:const Text("تصميم الة حاسبة ",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
          centerTitle:true,
          backgroundColor: Colors.teal,
        ),
        body: Container(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text("الة حاسبة" , style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: one,
                      keyboardType: TextInputType.number,
                      decoration:const InputDecoration(
                        labelText: ("First number"),
                        prefixIcon: Icon(Icons.numbers),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: tow,
                      keyboardType: TextInputType.number,
                      decoration:const InputDecoration(
                        labelText: ("Second number"),
                        prefixIcon: Icon(Icons.numbers),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),

                     Text("الناتج: $res" ,style:const TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),

                          //زر الجمع
                          Container(
                            width: 50,
                            color: Colors.teal,
                            child: MaterialButton(onPressed: (){
                              sum();
                            },
                              child:const Text("+" ,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center,),
                            ),
                          ),

                          const SizedBox(
                            height: 15.0,
                          ),

                          //زر الطرح
                          Container(
                            width: 50,
                            color: Colors.teal,
                            child: MaterialButton(onPressed: (){
                              sub();
                            },

                              child:const Text("-" ,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center),
                            ),
                          ),

                          const SizedBox(
                            height: 15.0,
                          ),

                          //زر الضرب
                          Container(
                            width: 50,
                            color: Colors.teal,
                            child: MaterialButton(onPressed: (){
                              mult();
                            },
                              child:const Text("*" ,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),textAlign: TextAlign.center),
                            ),
                          ),

                          const SizedBox(
                            height: 15.0,
                          ),

                          //زر القسمة
                          Container(
                            width: 50,
                            color: Colors.teal,
                            child: MaterialButton(onPressed: (){
                              divi();
                            },
                              child:const Text("/" ,style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                            ),
                          ),

                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                    ),


                  ],

                ),
              ),
            ),

          ),
        ),

      ),
    );
  }
}
