import 'package:class_routine/custom_textfield.dart';
import 'package:class_routine/screen/login_screen.dart';
import 'package:class_routine/slider_drawer/slider_drawer.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(8.0),
          children: [
            Column(
              children: [
                SizedBox(height: 50.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Register",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(labelText: "User ID")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(labelText: "Email")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(labelText: "Password")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(labelText: "Confirm Password",)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .75),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15.0,
                            offset: Offset(0, 5))
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                            onPressed: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SliderDrawer() ));
                              });
                            },)),
                  ),
                ),
                Container(margin: EdgeInsets.only(top: 10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account.",
                        style: TextStyle(color: Colors.black,fontSize: 15),
                      ),
                      SizedBox(width: 8,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen() ));
                          });
                        },
                        child: Text(
                          "Login Now",
                          style: TextStyle(color: Colors.blue,fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
