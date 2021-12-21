import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(backgroundColor: Colors.green))),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.green[500],
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.person_outline,
              size: 100,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso (Kg)',
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Altura(Cm)',
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Calcular',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Text(
              'Info',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
