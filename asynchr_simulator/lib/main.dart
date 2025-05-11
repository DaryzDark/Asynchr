import 'package:flutter/material.dart';
import 'ui/main_view.dart';

void main() {
  runApp(const AsynchrApp());
}

class AsynchrApp extends StatelessWidget {
  const AsynchrApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asynchr Simulator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainView(),
    );
  }
}

