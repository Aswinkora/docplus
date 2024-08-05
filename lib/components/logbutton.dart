import 'package:flutter/material.dart';

class Buton extends StatelessWidget {
  final VoidCallback onpress;
  final String title;
  const Buton({super.key, required this.onpress, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
            fixedSize: WidgetStatePropertyAll(Size(300, 50)),
            backgroundColor: WidgetStatePropertyAll(Colors.blue)),
        onPressed: onpress,
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ));
  }
}
