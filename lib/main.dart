import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clonecoding/screen/home_screen.dart';
import 'package:netflix_clonecoding/screen/more_screen.dart';
import 'package:netflix_clonecoding/screen/search_screen.dart';
import 'package:netflix_clonecoding/widget/bottom_bar.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              const SearchScreen(),
              Container(
                child: const Center(child: Text('c')),
              ),
              const MoreScreen()
            ],
          ),
          bottomNavigationBar: const Bottom(),
        ),
      ),
    );
  }
}
