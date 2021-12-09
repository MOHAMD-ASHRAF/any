import 'package:flutter/material.dart';

Widget defaultField({

 required TextEditingController emailController,
  required double? width,
  bool isPassword = false,
  required  TextInputType typeOfInput,
  required IconData preFix,
  ValueChanged<String>? onSubmitted,
}) => Container(
  width: width,
  height: 30,
  child: TextField(
    controller: emailController,
    readOnly: false,
    keyboardType: typeOfInput,
    obscureText: isPassword,
    decoration: InputDecoration(
        prefix: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 5,0),
          child: Icon(preFix),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(7),
          ),
        )
    ),
    onSubmitted: onSubmitted,
  ),

);

void navigateTo(context , widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) =>widget,
  ),
);


Widget defaultButton({
 required double width,
  required Color color,
  required Color colorText,
  required String text,

})=> Container(
  width: width,
  height: 30,
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(7),
  ),
  child: MaterialButton(onPressed: (){},
      child: Text(text,
          style: TextStyle(color: colorText , fontWeight: FontWeight.bold , fontSize: 16)
      )
  ),
);
