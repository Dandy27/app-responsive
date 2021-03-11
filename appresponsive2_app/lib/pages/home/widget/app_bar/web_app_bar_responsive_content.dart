import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context, constraints){
        print('biggest ${constraints.biggest} smallest ${constraints.smallest}');
        return Row(
          children: [
            SizedBox(width: 4),
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey[600]),
                ),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.search), onPressed: (){}, color: Colors.grey[500],),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pesquise alguma coisa aqui',
                          isCollapsed: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (constraints.maxWidth >= 400) ...[
              SizedBox(width: 32,),
              FlatButton(onPressed: (){}, child: Text('Aprender'),
                textColor: Colors.white,),
            ],
            if(constraints.maxWidth >= 500 )...[
              FlatButton(onPressed: (){}, child: Text('Flutter'),
                textColor: Colors.white,)
            ]


          ],
        );
      },
    ));
  }
}
