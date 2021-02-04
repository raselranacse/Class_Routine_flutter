import 'package:flutter/material.dart';
class SliderHome extends StatefulWidget {
  @override
  _SliderHomeState createState() => _SliderHomeState();
}

class _SliderHomeState extends State<SliderHome> {
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Notification",
                        style: TextStyle(
                            fontSize: 20.0,fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.notifications_active),
                    ),

                  ],)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10.0,),
                    Text(
                      "Events and Payments",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black),
                    ),
                      SizedBox(height: 10.0,),
                    Text(
                      "Click here to proceed",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue),
                    ),
                  ],)
                ),
            ),
          ),

        ],
      ),
    );
  }
}
