import 'package:flutter/material.dart';

void main() => runApp(AsmaulHusna());

class AsmaulHusna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Adab Adab Kepada Guru"),
          centerTitle: true,
        ),
        body: FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> textindo = [
    "Menghormati guru.",
    "Mendengarkan apa yg guru sampaikan",
    "Tidak duduk ketika guru berdiri",
    "Tidak memotong omongan guru ketika berbicara",
    "Mendoakan guru.",
    "Meneladani  penerapaan ilmu dan akhlaqnya.",
    "Sabar dalam membersamainya.",
    "Patuh atau nurut ketika disuruh apapun",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textindo.length,
        itemBuilder: (BuildContext context, int posisi) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(posisi.toString()),
                    Text(textindo[posisi])
                  ],
                ),
              ),
            ),
          );
        });
  }
}
