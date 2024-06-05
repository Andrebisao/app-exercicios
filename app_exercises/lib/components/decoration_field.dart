import 'package:flutter/material.dart';
import 'package:app_exercises/_color/my_colors.dart';

InputDecoration getDecorationField(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: const Color.fromARGB(64, 255, 255, 255),
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(color: Colors.black, width: 0.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(color: MyColors.amarelo, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(color: MyColors.red, width: 4),
    ),
  );
}
