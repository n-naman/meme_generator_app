import 'package:flutter/material.dart';
import 'package:bdsm/view/mainScreen.dart';
import 'package:bdsm/view/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;
  showSplashScreen(){
    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        showSplash = false;
      });
    });
  }

  @override
  void initState() {
    showSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BDSM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  showSplash ? splashScreen() : MainScreen(),
    );
  }
}