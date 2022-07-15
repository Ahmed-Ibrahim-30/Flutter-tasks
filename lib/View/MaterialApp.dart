import 'package:flutter/material.dart';

import 'login.dart';
class MaterialAppClass extends StatelessWidget {
  const MaterialAppClass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
