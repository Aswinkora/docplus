import 'package:flutter/material.dart';

class Buton extends StatelessWidget {
  final VoidCallback onpress;
  final String title;
  const Buton({super.key, required this.onpress, required this.title, });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
            fixedSize: WidgetStatePropertyAll(Size(344, 50)),
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 62, 136, 201))),
        onPressed: onpress,
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ));
  }
}

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  
  const Button({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: const Color.fromARGB(255, 62, 136, 201)),
        ));
  }
}
