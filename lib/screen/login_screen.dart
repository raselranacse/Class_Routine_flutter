import 'package:class_routine/custom_textfield.dart';
import 'package:class_routine/screen/register_screen.dart';
import 'package:class_routine/slider_drawer/slider_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * .25,
                  width: MediaQuery.of(context).size.width * .75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "images/undraw_contract_uy56.png"),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                    labelText: "Email",
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(labelText: "Password"),
                ),
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
                SizedBox(height: 10,),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.black,fontSize: 15),
                      ),
                      SizedBox(width: 8.0,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                            return RegisterScreen();
                          }));
                        },
                        child: Text(
                          "Register Now",
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
