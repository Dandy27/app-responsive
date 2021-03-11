import 'package:appresponsive2_app/pages/home/widget/app_bar/mobile_app_bar.dart';
import 'package:appresponsive2_app/pages/home/widget/app_bar/web_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth < 800
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56),
              )
            : PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
        drawer: Drawer(),
        
      );
    });
  }
}
