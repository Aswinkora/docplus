import 'package:docplus/components/Textform.dart';
import 'package:docplus/components/logbutton.dart';
import 'package:docplus/logos/logos.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namecntrl = TextEditingController();
  TextEditingController emailcntrl = TextEditingController();
  TextEditingController agecntrl = TextEditingController();
  TextEditingController passcntrl = TextEditingController();
  String? selectsex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: backgroud),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Center(
                          child: Text(
                        'REGISTRATION',
                        style: TextStyle(
                            color: primarycolor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Regform(
                        controller: namecntrl,
                        label: 'NAME',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Regform(
                        controller: emailcntrl,
                        label: 'EMAIL',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Regform(
                              controller: namecntrl,
                              label: 'AGE',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                  labelText: 'SEX',
                                  labelStyle: TextStyle(
                                      color: Color.fromARGB(253, 40, 58, 217)),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          style: BorderStyle.solid,
                                          color: const Color.fromARGB(
                                              221, 167, 166, 166)),
                                      borderRadius: BorderRadius.circular(
                                        15,
                                      ))),
                              value: selectsex,
                              items: ['Male', 'Female', 'Other']
                                  .map((label) => DropdownMenuItem(
                                        child: Text(label),
                                        value: label,
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectsex = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Regform(
                        controller: namecntrl,
                        label: 'PASSWORD',
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13))),
                              fixedSize: WidgetStatePropertyAll(Size(400, 55)),
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(253, 40, 58, 217))),
                          onPressed: () {},
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 160,
                ),
                TextButton(
                    onPressed: () {
                      Login();
                    },
                    child: Text(
                      'Login Here',
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPresse() {}

  void Login() {}
}
