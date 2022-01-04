// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_/components/category.dart';

class SubScreen extends StatelessWidget {
  final ktabpages = categories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        backgroundColor:const Color(0xFFE6B398),
        elevation: 0,
        leading: IconButton(
          icon:  const Icon(Icons.keyboard_backspace, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
   
    );
  }
}
