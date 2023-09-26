import 'package:flutter/material.dart';
import 'package:link/screens/bottom_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PassCode"),
      ),
      body: Center(
        child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
            },
            child: Text("Submit")),
      ),
    );
  }
}
