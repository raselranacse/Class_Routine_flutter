import 'package:class_routine/screen/about_screen.dart';
import 'package:class_routine/screen/settings_screen.dart';
import 'package:class_routine/seven_days/monday.dart';
import 'package:class_routine/seven_days/saturday.dart';
import 'package:class_routine/seven_days/sunday.dart';
import 'package:class_routine/slider_drawer/menu_widget.dart';
import 'package:class_routine/slider_drawer/slider_drawer.dart';
import 'package:class_routine/utils/AppConstant.dart';
import 'package:flutter/material.dart';

class AllRoutineScreen extends StatefulWidget {
  @override
  _AllRoutineScreenState createState() => _AllRoutineScreenState();
}

class _AllRoutineScreenState extends State<AllRoutineScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text(all_routine,style: TextStyle(color: Colors.black),),centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: ListView(scrollDirection: Axis.vertical,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [SizedBox(height: 25,),
                BuildContainer(context, day1),
                BuildContainer(context, day2),
                BuildContainer(context, day3),
                BuildContainer(context, day4),
                BuildContainer(context, day5),
                BuildContainer(context, day6),
                BuildContainer(context, day7),

              ]),
            ],
          )),
    );
  }

  Center BuildContainer(BuildContext context, String day) {
    return Center(
            child: Container(margin: EdgeInsets.only(bottom: 10),
              height: 50,
              width: MediaQuery.of(context).size.width * .95,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10.0,
                        offset: Offset(0.0,10.0)
                    )
                  ]),
              child: Center(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        if(day==day1){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Saturday()));
                        }
                        if(day==day2){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Sunday()));
                        }
                        if(day==day3){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Monday()));
                        }

                      });
                    },
                    child: Text(
                day,
                style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)

                    ),
                  )),
            ),
          );
  }
}
