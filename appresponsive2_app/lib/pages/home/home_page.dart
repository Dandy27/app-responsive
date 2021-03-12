import 'package:appresponsive2_app/breakpoints.dart';
import 'package:appresponsive2_app/pages/home/sections/advantage_sections.dart';
import 'package:appresponsive2_app/pages/home/sections/courses_sections.dart';
import 'package:appresponsive2_app/pages/home/sections/top_section.dart';
import 'package:appresponsive2_app/pages/home/widget/app_bar/mobile_app_bar.dart';
import 'package:appresponsive2_app/pages/home/widget/app_bar/web_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56),
              )
            : PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
        drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null ,
        body: Align(alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 1400),
            child: ListView(
              children: [
                TopSection(),
                Divider(),
                AdvantagesSections(),
                CoursesSections(),
              ],
            ),
          ),
        ),
        
      );
    });
  }
}
