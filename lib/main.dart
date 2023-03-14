import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Novo Contato'),
          backgroundColor: Colors.red[300],
          centerTitle: true,
        ),
        // Create a body with 3 inputs Name, Email, Phone
        body: Column(
          textDirection: TextDirection.ltr,
          children: [
            Text('Nome',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            TextField(),
            Text('Email',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            TextField(),
            Text('Telefone',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            TextField(),
            // Create a button at the right bottom of the screen
            ElevatedButton(
                onPressed: null,
                child: Text('Salvar',
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red[300]!))),
          ],
        ),
      ),
    );
  }
}
