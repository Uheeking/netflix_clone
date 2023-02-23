import 'package:flutter/material.dart';
import 'package:netflix_clonecoding/screen/home_screen.dart';
import 'package:netflix_clonecoding/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UheeFlix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(
                secondary: Colors.blueAccent, brightness: Brightness.dark),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const HomeScreen(),
              Container(
                child: const Center(child: Text('b')),
              ),
              Container(
                child: const Center(child: Text('c')),
              ),
              Container(
                child: const Center(child: Text('d')),
              ),
            ],
          ),
          bottomNavigationBar: const Bottom(),
        ),
      ),
    );
  }
}
