import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'movie.dart';

'''onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailScreen(todo: movies[0]),
}

class DetailScreen extends StatelessWidget {
  // Declare a field that holds the Todo.
  final Movie movies;

  // In the constructor, require a Todo.
  DetailScreen({Key key, @required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(movies.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(movies.description),
      ),
    );
  }
}'''