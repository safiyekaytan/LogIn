import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/newPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

bool controlObscure = true;

var shadow = Padding(
  padding: const EdgeInsets.fromLTRB(0, 233, 0, 0),
  child: SizedBox(
    width: 450,
    height: 450,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 238, 178, 198),
            blurRadius: 15.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
    ),
  ),
);

var register = const Padding(
  padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
  child: Text("Register",
      style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 230, 90, 137),
          fontWeight: FontWeight.w900)),
);

var textField1 = const Padding(
  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
  child: SizedBox(
    width: 380,
    child: TextField(
      decoration: InputDecoration(
        labelText: "Yağmur",
        fillColor: Color.fromARGB(255, 254, 243, 240),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 230, 142, 171)), //<-- SEE HERE
        ),
      ),
    ),
  ),
);

var textField2 = const Padding(
  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
  child: SizedBox(
    width: 380,
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: Color.fromARGB(255, 254, 243, 240),
        filled: true,
        labelText: "Email",
      ),
    ),
  ),
);

var textField3 = Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
  child: SizedBox(
    width: 320,
    child: TextField(
      obscureText: controlObscure,
      decoration: const InputDecoration(
        border: InputBorder.none,
        fillColor: Color.fromARGB(255, 254, 243, 240),
        filled: true,
        labelText: "Password",
      ),
    ),
  ),
);

var spaceWidth = const SizedBox(
  width: 20,
);
var spaceHeight = const SizedBox(
  height: 20,
);

var backButton = Padding(
  padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
  child: Image.asset("images/back.png"),
);

Widget popupCard(BuildContext context) {
  return AlertDialog(
    title: const Text("Comment"),
    actions: <Widget>[
      Column(
        children: [
          Row(
            children: const [
              SizedBox(
                  height: 40,
                  child: FloatingActionButton(
                    onPressed: null,
                    child: Text("S"),
                  )),
              SizedBox(
                width: 200,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color.fromARGB(255, 245, 245, 245),
                    filled: true,
                    labelText: "Reply",
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Stack(
            children: [
              Image.asset("images/image.png"),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => popupCard(context),
                  );
                },
                child:
                    SizedBox(width: 155, child: Image.asset("images/ust.png")),
              ),
              Stack(
                children: [
                  shadow,
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 280, 0, 0),
                    child: Column(
                      children: [
                        register,
                        spaceHeight,
                        textField1,
                        spaceHeight,
                        textField2,
                        spaceHeight,
                        Row(
                          children: [
                            textField3,
                            spaceWidth,
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  controlObscure = false;
                                });
                              },
                              icon: const Icon(
                                Icons.remove_red_eye,
                                color: Color.fromARGB(255, 255, 157, 176),
                              ),
                            ),
                          ],
                        ),
                        spaceHeight,
                        spaceHeight,
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 238, 178, 198),
                                blurRadius: 50.0,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SizedBox(
                            height: 60,
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromARGB(255, 255, 157, 176)),
                              ),
                              child: const Text(
                                "                 Create Account                 ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const newPage()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  backButton,
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
