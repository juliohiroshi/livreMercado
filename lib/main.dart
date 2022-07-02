import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livre Mercado',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Livre mercado'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade500,
        leading: const Icon(Icons.menu),
        title: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Buscar produtos, marcas e muito mais...',
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Click')));
            },
            icon: const Icon(
              Icons.local_grocery_store,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20.0),
          child: Center(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: Icon(Icons.send),
                ),
                Expanded(
                    flex: 4,
                    child: Text(
                      'Enviar para Leandro Poletti - Avenida Paulista, 69',
                      textAlign: TextAlign.justify,
                    ))
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: <Color>[
              Colors.yellow.shade500,
              Colors.yellow.shade200,
              Color(0xfff5f5f5),
              Color(0xfff5f5f5),
              Color(0xfff5f5f5),
              Color(0xfff5f5f5),
              Color(0xfff5f5f5),
            ],
          ),
        ),
      ),
    );
  }
}
