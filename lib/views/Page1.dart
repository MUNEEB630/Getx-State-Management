import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Page2.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  //  var count = 0.obs;
  // void increment(){
  //   count++;
  // }
  final person=PersonData(name:"Muneeb",age:15).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Text("Name is ${person.value.name}")),
            RaisedButton(onPressed:(){
              person.update((person){
                person?.name = person.name.toString().toUpperCase();
              });
            } ,child: Text("Upper Case"),),
          ],

        ),
                  // child: Text("${Get.arguments}"),

      ),
    );
  }
}
