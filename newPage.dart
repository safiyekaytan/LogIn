// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

var vector = Padding(
  padding: const EdgeInsets.only(left: 90),
  child: SizedBox(width: 320, child: Image.asset("images/vector.png")),
);

var backButton = SizedBox(width: 155, child: Image.asset("images/ust.png"));

var vector1 = Padding(
  padding: const EdgeInsets.only(top: 140),
  child: SizedBox(width: 130, child: Image.asset("images/vector1.png")),
);

var midImage = Padding(
  padding: const EdgeInsets.fromLTRB(50, 260, 0, 0),
  child: SizedBox(width: 310, child: Image.asset("images/orta.png")),
);

var vector3 = Padding(
  padding: const EdgeInsets.only(top: 446),
  child: SizedBox(width: 190, child: Image.asset("images/vector3.png")),
);

var vector2 = Padding(
  padding: const EdgeInsets.fromLTRB(300, 390, 0, 0),
  child: SizedBox(width: 110, child: Image.asset("images/vector2.png")),
);

var vector4 = Padding(
  padding: const EdgeInsets.fromLTRB(220, 510, 0, 0),
  child: SizedBox(width: 70, child: Image.asset("images/vector4.png")),
);

var backImage = Padding(
  padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
  child: Image.asset("images/back.png"),
);

var title = const Padding(
  padding: EdgeInsets.fromLTRB(30, 171, 0, 0),
  child: Text("One last step!",
      style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 245, 114, 147))),
);

var text = const Padding(
  padding: EdgeInsets.fromLTRB(30, 220, 0, 0),
  child: Text("Please click the activation link we sent\n to your email",
      style:
          TextStyle(fontSize: 17, color: Color.fromARGB(255, 245, 114, 147))),
);

var elevatedButton = const Padding(
  padding: EdgeInsets.fromLTRB(30, 580, 0, 0),
  child: SizedBox(
    height: 60,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 157, 176)),
      ),
      // ignore: sort_child_properties_last
      child: Text(
        "                 Let's get Started!                 ",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: null,
    ),
  ),
);

// ignore: camel_case_types
class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              vector,
              GestureDetector(
                onDoubleTap: () {
                  Navigator.pop(context);
                },
                child: backButton,
              ),
              vector1,
              midImage,
              vector3,
              vector2,
              vector4,
              elevatedButton,
              backImage,
              title,
              text,
            ],
          ),
        ],
      ),
    );
  }
}
