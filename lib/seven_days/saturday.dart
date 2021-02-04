import 'package:class_routine/utils/AppConstant.dart';
import 'package:flutter/material.dart';
class Saturday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(day1,style: TextStyle(color: Colors.black),),centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            flex: 1,
            child: CustomContainer("Course: Pattern Recognition","Start time: 01:00 pm","Room No: 3101"),
          ),
          Expanded(
            flex: 1,
            child: CustomContainer("Course: Computer Graphics","Start time: 06:00 pm","Room No: 3103"),
          ),
        ]),
      ),
    );
  }
  Padding CustomContainer(String course, String time, String room) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 3.0),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(course, style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(time, style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(room, style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
