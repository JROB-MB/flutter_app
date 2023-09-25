import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/screens.dart'; 


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login',
      initialRoute: 'login',
      routes: {
        'home':(__) => HomeScreen(),
        
        'login':(__) => LoginScreen() 
      },
    );
  }
}
