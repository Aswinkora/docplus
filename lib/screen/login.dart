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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                  padding: EdgeInsets.all(16),
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/backgrnd.png'),
                          fit: BoxFit.fill))),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                    Text(
                      'Please enter your user name and',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'password',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Textform(
                      icons: Icons.person_2,
                      label: 'Username',
                      controller: usercntrl,
                    ),
                    SizedBox(height: 30),
                    Textform(
                      icons: Icons.lock_outline,
                      label: 'password',
                      controller: passcontrl,
                    ),
                    SizedBox(height: 30),
                    Buton(
                      title: 'LOGIN',
                      onpress: () {
                        action();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Forgot Your Password?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: reset,
                              child: Text(
                                'Reset',
                                style: TextStyle(color: Colors.green),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Button(title: 'Signup Here', onPressed: signup)
            ],
          ),
        ),
      ),
    );
  }
}

void reset() {}
void signup() {}

void action() {}
