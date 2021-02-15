import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/DetailScreen.dart';
import 'package:flutter_application_1/models/movie.dart';
import 'DetailScreen.dart';

class Grille extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      crossAxisCount: 2,
      children: List.generate(movies.length, (index) {
        return ListTile(
          title: Center(child: Image(image: AssetImage(movies[index].poster))),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(movies: movies[index])));
          },
        );
      }),
    );
  }
}
