import 'package:appresponsive2_app/breakpoints.dart';
import 'package:appresponsive2_app/pages/home/widget/app_bar/custom_seach_field.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1000) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.2,
                child: Image.network(
                  'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                top: 50,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(18),
                    width: 400,
                    child: Column(
                      children: [
                        Text(
                          'Aprenda Flutter com este curso',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bora Aprender Flutter com o professor Daniel Ciolfi ! Cursos por apenas R\$22,90.Qualidade Garantida',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        CustomSearchField()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      if (maxWidth >= mobileBreakpoint) {
        return Stack(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Card(
                color: Colors.black,
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(18),
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        'Aprenda Flutter com este curso',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Bora Aprender Flutter com o professor Daniel Ciolfi ! Cursos por apenas R\$22,90.Qualidade Garantida',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      CustomSearchField()
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      }

      return Container(color: Colors.pink,);
    });
  }
}
