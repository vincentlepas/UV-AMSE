import 'package:flutter/material.dart';
import 'tile.dart';

Tile tile = new Tile(
    image: Image(image: AssetImage('images/Route_Californie.jpg')),
    divisions: 3,
    alignment: Alignment(0, 0));

class Exo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice 4'),
      ),
      body: Center(
          child: Column(children: [
        SizedBox(
            width: 150.0,
            height: 150.0,
            child: Container(
                margin: EdgeInsets.all(20.0),
                child: this.createTileWidgetFrom(tile))),
        Container(
            height: 200,
            child: Image(image: AssetImage('images/Route_Californie.jpg')))
      ])),
    );
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.build(),
      onTap: () {
        print("tapped on tile");
      },
    );
  }
}
