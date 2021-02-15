import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/movie.dart';

class Grille extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Image(image: AssetImage(movies[0].poster)),
        Image(image: AssetImage(movies[1].poster)),
        Image(image: AssetImage(movies[2].poster)),
        Image(image: AssetImage(movies[3].poster)),
        Image(image: AssetImage(movies[4].poster)),
        Image(image: AssetImage(movies[5].poster)),
      ],
    );
  }
}
