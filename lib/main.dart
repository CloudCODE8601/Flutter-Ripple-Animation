import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ripple Animation'),
      ),
      body: Center(
        child: RippleAnimation(
            color: Color.fromARGB(255, 233, 17, 175),
            delay: const Duration(milliseconds: 300),
            repeat: true,
            minRadius: 75,
            ripplesCount: 2,
            duration: const Duration(milliseconds: 6 * 300),
            child: const CircleAvatar(
              minRadius: 75,
              maxRadius: 75,
              backgroundImage: NetworkImage('https://images.vexels.com/media/users/3/147101/isolated/preview/b4a49d4b864c74bb73de63f080ad7930-instagram-profile-button.png'),
            ),
          ),
      ),
      );
  }
}
