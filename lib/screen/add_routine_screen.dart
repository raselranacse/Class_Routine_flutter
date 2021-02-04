import 'package:class_routine/custom_textfield.dart';
import 'package:class_routine/slider_drawer/menu_widget.dart';
import 'package:class_routine/slider_drawer/slider_drawer.dart';
import 'package:class_routine/utils/AppConstant.dart';
import 'package:flutter/material.dart';

class AddRoutineScreen extends StatefulWidget {
  @override
  _AddRoutineScreenState createState() => _AddRoutineScreenState();
}

class _AddRoutineScreenState extends State<AddRoutineScreen> {
  var _day= ['Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
  var currentSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text(add_routine,style: TextStyle(color: Colors.black),),centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildDropDown(),
                        buildButton()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(labelText: 'Course Name'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(labelText: 'Room No'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * .95,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 10.0,
                              offset: Offset(0.0,10.0)
                          )
                        ]),
                    child: Center(
                        child: Text(
                      "Done",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  )
                ],
              ),
            ],
          )),
    );
  }

  Container buildDropDown() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * .45,
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 10.0,
                offset: Offset(0.0,10.0)
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DropdownButton<String>(
          underline: Container(color: Colors.grey),
          iconSize: 30,
          hint: Text("Select Day"),
          items: _day.map((String dropDownStringItem){
            return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem));}).toList(),
          onChanged: (String NewSelected){
            setState(() {
              currentSelected=NewSelected;
            });
          },
          value: currentSelected,

        ),
      ),
    );
  }
  Container buildButton(){
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * .45,
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
          child: Text(
            "Set Time",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black),
          )),
    );
  }
}
