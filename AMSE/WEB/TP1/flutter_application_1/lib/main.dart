import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/grille.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    ListView(
      padding: const EdgeInsets.all(3),
      children: <Widget>[
        Container(
          height: 400,
          child: const Center(
              child: Image(
                  image: AssetImage("assets/images/Tous les animes.png"))),
        ),
        Container(
          height: 300,
          color: Colors.lightBlue[200],
          child: const Center(
              child: Text(
            "Bienvenue sur notre première application mobile dédiée aux animés, si vous souhaitez obtenir plus d'information sur l'un d'entre eux, cliquez sur la miniature de celui-ci dans la rubrique animés",
            textAlign: TextAlign.center,
            style: optionStyle,
          )),
        ),
      ],
    ),
    Grille(),
    ListView(
      padding: const EdgeInsets.all(3),
      children: <Widget>[
        Container(
          height: 150,
          color: Colors.lightBlue[300],
          child: const Center(child: Text('Compte : Elian et Vincent')),
        ),
        Container(
          height: 150,
          color: Colors.lightBlue[200],
          child: const Center(child: Text('Informations du compte')),
        ),
        Container(
          height: 50,
          color: Colors.redAccent[100],
          child: const Center(child: Text('Se déconnecter')),
        ),
      ],
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Animé-Info')),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            label: 'Animés',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
