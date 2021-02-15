import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'movie.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key key, this.movies}) : super(key: key);

  final Movie movies;

  get optionStyle => null;

  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          title: Text(movies.title),
        ),
        body: Container(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(5),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                children: <Widget>[
              Container(
                  child: Center(child: Text("Affiche", style: optionStyle)),
                  color: Colors.blueGrey[300]),
              Container(
                  child:
                      Center(child: Text("Informations", style: optionStyle)),
                  color: Colors.blueGrey[300]),
              Container(
                child: Image(image: AssetImage(movies.poster)),
              ),
              Container(
                child: Center(
                    child: Text(
                  movies.title +
                      " est un animé de style " +
                      movies.genra +
                      " sorti en " +
                      movies.year,
                  textAlign: TextAlign.center,
                  style: optionStyle,
                )),
              ),
            ])));
  }
}
