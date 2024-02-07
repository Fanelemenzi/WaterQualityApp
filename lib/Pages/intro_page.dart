import 'package:flutter/material.dart';
import 'package:water_quality_app/Components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Logo
        Icon(
          Icons.music_note_rounded,
          size:72,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        SizedBox(height: 25,),

        //Title
        const Text(
          "WATER QUALITY APP",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ), 
        const SizedBox(height: 10,),

        //Subtilte
        Text(
          "Ready To Check Your Drinking Water",
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary
            )
        ),

        const SizedBox(height: 25,),

        //button
        MyButton(
          name: Text("Lets Start"),
          onTap: () => Navigator.pushNamed(context, '/regionpage'),
        child: Icon(Icons.arrow_forward, color: Theme.of(context).colorScheme.primary,), )
      ],
      ),  






       
    );
  }
}

