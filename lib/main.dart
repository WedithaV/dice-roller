import 'package:flutter/material.dart';
import 'package:dice_roller/hello.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Hello(),
      ),
    ),
  );
}