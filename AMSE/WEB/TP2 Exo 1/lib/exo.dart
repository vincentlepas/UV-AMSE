// ignore: camel_case_types
import 'package:flutter/widgets.dart';

import 'exo1.dart';
import 'exo2.dart';

class Exo {
  final name;
  final description;
  final buildfunction;

  Exo({this.name, this.description, this.buildfunction});
}

// ignore: non_constant_identifier_names
List<Exo> exos = [
  Exo(
    name: "Exo 1",
    description: "Afficher une image",
    buildfunction: (context) => Exo1(),
  ),
  Exo(
    name: "Exo 2",
    description: "Transformer une image",
    buildfunction: (context) => Exo2(),
  ),
  Exo(
    name: "Exo 3",
    description: "Menu et navigation entre page",
  ),
  Exo(
    name: "Exo 4",
    description: "Affichage d'une tuille (un morceau d'image)",
  ),
  Exo(
    name: "Exo 5",
    description: "Génération du plateau de tuile",
  ),
  Exo(
    name: "Exo 6",
    description: "Animation d'une tuile",
  ),
  Exo(
    name: "Exo 7",
    description: "Jeu de taquin",
  ),
];
