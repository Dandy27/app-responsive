import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
            'https://images.pexels.com/photos/1714208/pexels-photo-1714208.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
            fit: BoxFit.cover),
        const SizedBox(
          height: 4,
        ),
        Flexible(
          child: LayoutBuilder(builder: (_, constraints) {
            print(constraints.biggest);
            return AutoSizeText(
              'Criação de Apps Android e Ios com Flutter - Crie 16 Apps',
              minFontSize: 3,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
            );
          }),
        ),
        Text(
          'Dandy 27 Store',
          style: TextStyle(color: Colors.grey),
        ),
        Text('R\$22,90',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white))
      ],
    );
  }
}
