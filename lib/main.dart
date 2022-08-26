import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/Page1.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page:()=>MyApp()),
        GetPage(name: "/home", page: ()=> Home()),
        // GetPage(name: "/home2", page:()=> Home2()),
      ],
      home: Scaffold(
        body: Center(
          child: Container(
            child: RaisedButton(onPressed: (){
              Get.toNamed("/home?parameter1=Flutter");
              // Get.to(Home(),arguments: "New Arguments");
            }, child: Text("NewScreen")),
          ),
        ),
      ),
    );
  }
}
