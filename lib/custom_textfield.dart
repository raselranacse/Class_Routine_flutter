import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key key,
    @required this.labelText,
  }) : super(key: key);

  final String labelText;


  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 10.0,
              offset: Offset(0.0,10.0)
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            labelText: widget.labelText,
            labelStyle: TextStyle(fontStyle: FontStyle.italic),
            filled: true,
            fillColor: Colors.white
        ),
      ),
    );
  }
}