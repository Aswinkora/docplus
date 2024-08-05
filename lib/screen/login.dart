import 'package:docplus/components/Textform.dart';
import 'package:docplus/components/logbutton.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usercntrl = TextEditingController();
  TextEditingController passcontrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Textform(
              icons: Icons.person_2,
              label: 'Username',
              controller: usercntrl,
            ),
            SizedBox(height: 30),
            Textform(
              icons: Icons.lock,
              label: 'password',
              controller: passcontrl,
            ),
            SizedBox(height: 30),
            Buton(
              title: 'Login',
              onpress: () {
                action();
              },
            )
          ],
        ),
      ),
    );
  }
}

void action() {}
