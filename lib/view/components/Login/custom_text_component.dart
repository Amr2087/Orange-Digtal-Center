
import 'package:flutter/material.dart';

Widget customTextForm(var controller ,String hint){
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
        hintText: hint
    ),
  );
}