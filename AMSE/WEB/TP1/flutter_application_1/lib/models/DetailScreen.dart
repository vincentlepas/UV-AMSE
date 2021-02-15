import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'movie.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key key, this.movies}) : super(key: key);

  final Movie movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: BackButton(),
          title: Text(movies.title),
        ),
        body: Container(
          child: 
        ));
  }
}
