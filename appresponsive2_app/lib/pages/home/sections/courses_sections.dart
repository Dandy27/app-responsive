import 'package:appresponsive2_app/breakpoints.dart';
import 'package:appresponsive2_app/pages/home/widget/app_bar/course_item.dart';
import 'package:flutter/material.dart';

class CoursesSections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300, mainAxisSpacing: 16, crossAxisSpacing: 16),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return CourseItem();
          });
    });
  }
}
