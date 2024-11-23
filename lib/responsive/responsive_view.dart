import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  final Widget mobileView;
  final Widget webView;

  const ResponsiveView({
    Key? key,
    required this.mobileView,
    required this.webView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 800;

    return isLargeScreen ? webView : mobileView;
  }
}
