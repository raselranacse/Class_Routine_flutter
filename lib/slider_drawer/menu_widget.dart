import 'package:class_routine/screen/add_routine_screen.dart';
import 'package:class_routine/screen/all_routine_screen.dart';
import 'package:class_routine/screen/logout_screen.dart';
import 'package:class_routine/screen/about_screen.dart';
import 'package:class_routine/screen/settings_screen.dart';
import 'package:class_routine/screen/today_routine_screen.dart';
import 'package:class_routine/utils/AppConstant.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final Function(String) onItemClick;

  const MenuWidget({Key key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                    height: MediaQuery.of(context).size.height*.15,
                    width: MediaQuery.of(context).size.width*.30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/rasel.jpg"),
                            fit: BoxFit.fill))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text("Md. Rasel Rana", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10.0,),
              sliderItem(today_routine, Icons.date_range, context),
              sliderItem(add_routine, Icons.event_available, context),
              sliderItem(all_routine, Icons.event, context),
              sliderItem(profile, Icons.person, context),
              sliderItem(settings, Icons.settings, context),
              Divider(),
              sliderItem(about, Icons.brightness_high, context),
              sliderItem(logout, Icons.exit_to_app, context),
            ],
          )
        ],
      ),
    );
  }

  ListTile sliderItem(String title, IconData icons, BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      leading: Icon(
        icons,
        color: Colors.black,
      ),
      onTap: () {
        //onItemClick(title);
        if (title == today_routine) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TodayRoutineScreen()));
        }
        if (title == add_routine) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddRoutineScreen()));
        }
        if (title == all_routine) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AllRoutineScreen()));
        }
        if (title == profile) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AboutScreen()));
        }
        if (title == settings) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SettingsScreen()));
        }
        if (title == logout) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LogoutScreen()));
        }
      },
    );
  }
}
