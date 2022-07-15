import 'package:flutter/material.dart';
import 'package:testflutter/View/MaterialApp.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialAppClass();
  }
}
