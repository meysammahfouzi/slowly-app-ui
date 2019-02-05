import 'package:flutter/material.dart';

import 'package:slowly/pages/main_page.dart';

void main() {
  runApp(SlowlyApp());
}

class SlowlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slowly',
      home: MainPage(),
    );
  }
}
