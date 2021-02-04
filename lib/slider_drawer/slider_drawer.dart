import 'package:class_routine/screen/today_routine_screen.dart';
import 'package:class_routine/slider_drawer/menu_widget.dart';
import 'package:class_routine/slider_drawer/slider_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class SliderDrawer extends StatefulWidget {
  @override
  _SliderDrawerState createState() => _SliderDrawerState();
}

class _SliderDrawerState extends State<SliderDrawer> {
  GlobalKey<SliderMenuContainerState> _key=new GlobalKey<SliderMenuContainerState>();
  String title;
  void initState(){
    title = "Class Routine";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SliderMenuContainer(
          key: _key,
          appBarColor: Colors.blue,
          appBarPadding: const EdgeInsets.only(top: 10),
          sliderMenuOpenOffset: 210,
          appBarHeight: 60,
          title: Text(title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          sliderMenu: MenuWidget(
            onItemClick: (title){
              _key.currentState.closeDrawer();
              setState(() {
                this.title=title;
              });
            },
          ),
          sliderMain: SliderHome(),
        )
      ),
    );
  }
}
