import 'package:docplus/logos/logos.dart';
import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  final String label;
  TextEditingController controller;
  final IconData icons;
  Textform({
    super.key,
    required this.icons,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 15),
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: Icon(
            icons,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: const Color.fromARGB(221, 167, 166, 166)),
              borderRadius: BorderRadius.circular(
                15,
              )),
          label: Text(
            label,
            style: TextStyle(color: Colors.blueGrey),
          )),
    );
  }
}

class Regform extends StatelessWidget {
  final String label;
  TextEditingController controller;

  Regform({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 15),
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: const Color.fromARGB(221, 167, 166, 166)),
              borderRadius: BorderRadius.circular(
                15,
              )),
          label: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(253, 40, 58, 217)),
          )),
    );
  }
}
