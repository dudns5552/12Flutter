import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter기본형'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var myTextStyle1 = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: Colors.red.withOpacity(0.8),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(          
          children: <Widget>[
            const Text(
              '0123456789Aa가#',
              style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontFamily: "D2Coding",
                letterSpacing: 4.0,
              ),  
            ),
            const Text(
              '0123456789Aa가#',
              style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              '0123456789Aa가#',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Text('0123456789Aa가#',
              textAlign: TextAlign.left,
              style: myTextStyle1, 
            ),
          ],
        ),
      ),
    );
  }
}
