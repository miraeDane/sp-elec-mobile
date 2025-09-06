

import 'package:flutter/material.dart';

final appBartheme =  BoxDecoration(
  gradient: const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomRight,
  colors: [Color(0xffFEC163), Color(0xffDE6113)]),
  borderRadius: BorderRadius.circular(11),
);

final appBarthemeHome =  BoxDecoration(
  gradient: const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomRight,
  colors: [Color(0xffFEC163), Color(0xffDE6113)]),
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
);




TextFormField textfield(String text, IconData icon, bool isPasswordType, TextEditingController controller){

  return TextFormField(
    controller:  controller,
    style: const TextStyle(
       fontSize: 15,
       fontWeight: FontWeight.w500,
       color: Color.fromARGB(255, 57, 56, 56),
    ),
    obscureText: isPasswordType,
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
      ),
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6)),
      labelText: text
  )
 );
}

