import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:liveasy/FourthPage.dart';
import 'package:liveasy/SecondPage.dart';
import 'package:liveasy/ThirdPage.dart';
import 'package:liveasy/provider/DemoPage.dart';

const List<String> list = <String>['English', 'Hindi', 'French'];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: FirstPage(),
      ),
    ),
  );
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.image,
                      color: Colors.black38,
                      size: 60.0,
                    ),
                  ),
                  const SizedBox(
                    height: 27.0,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: const Center(
                      child: Text(
                        "Please select your Language",
                        style: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 75.0, top: 5.0, right: 75.0),
                    child: const Center(
                      child: Text(
                        "You can change the language at any time",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF6A6C7B),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 27.0),
                  DropdownMenuExample(),
                  SizedBox(height: 20.0),
                  Container(
                    width: 200,
                    height: 50.0,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff2E3B62)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ThirdPage()),
                        );
                      },
                      child: const Text(
                        'NEXT',
                        style: TextStyle(fontSize: 18.0, letterSpacing: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/base.png",
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({Key? key}) : super(key: key);

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              dropdownValue,
              style: const TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
          DropdownButton<String>(
            value: null, // Set value to null to hide the hint text
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
            underline: Container(
              height: 1,
              color: Colors.transparent,
            ),
            items: [
              ...list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
