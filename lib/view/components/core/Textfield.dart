import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';




  Widget Text_Form_Field(
      String text,
      var controller

      ) {
    return TextFormField(
      controller: controller,
      decoration: new InputDecoration(

          hintStyle: TextStyle(color: Colors.grey),
          label: Text(text),
          labelStyle: TextStyle(color: Colors.grey),
          // focusColor: Colors.deepOrange,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(15),
            // borderSide: new BorderSide(),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.deepOrange)
          )
      ),
    );
  }
