import 'package:flutter/material.dart';

class ScreenHelper extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  ScreenHelper({this.desktop, this.mobile, this.tablet});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700.0;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700.0 &&
      MediaQuery.of(context).size.width < 1200.0;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200.0) {
          return desktop!;
        } else if (constraints.maxWidth >= 700 &&
            constraints.maxWidth < 1200.0) {
          return tablet!;
        } else {
          return mobile!;
        }
      },
    );
  }
}
