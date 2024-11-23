import 'package:firstflutter/responsivePage.dart';
import 'package:flutter/material.dart';

import 'irresponsivePage.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioPage(),
      // home: IrresponsivePortfolioPage(),
    );
  }
}

