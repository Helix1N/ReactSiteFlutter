import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/home.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int? varTest;

  int blueLeft = 4;
  int redLeft = 4;

  int gameState = 1;

  List<Container> _generateBoxes() {
    return List.generate(
      36,
      (index) => Container(
        padding: const EdgeInsets.all(8), // Adjusted padding
        color: Colors.white,
        child: Text(""),
      ),
    );
  }

  void makeMove() {}

  void _funcTest() {}
  @override
  Widget build(BuildContext context) {
    List<Container> listOfBoxes = _generateBoxes();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Home(
                          title: "home",
                        )));
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Container(
          child: Text(
            'Teeko Game',
            style: TextStyle(color: Colors.white),
          ),
          alignment: Alignment.centerLeft,
        ),
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisCount: 6,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            children: listOfBoxes,
          )),
    );
  }
}
