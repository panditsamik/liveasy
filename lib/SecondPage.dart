import 'package:flutter/services.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.grey.shade800,
          ), // Replace with your desired icon
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors
            .transparent, // Set to transparent to remove default app bar background
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: deviceHeight * 0.15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                child: const Center(
                  child: Text(
                    "Verify Phone",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 75.0, top: 8.0, right: 75.0),
                child: const Center(
                  child: Text(
                    "Code is sent to 9123632950",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0, right: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff93D2F3), // Set the background color to blue
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                              width: 2.0,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff93D2F3), // Set the background color to blue
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                              width: 2.0,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff93D2F3), // Set the background color to blue
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                              width: 2.0,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff93D2F3), // Set the background color to blue
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff93D2F3),
                              width: 2.0,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 50.0, right: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't receive the code?", style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                      textAlign: TextAlign.center,),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 13),
                        foregroundColor: Color(0xff2E3B62),
                      ),
                      onPressed: () {},
                      child: const Text('Request Again'),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
                height: 53.0,
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff2E3B62)),
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {

                  },
                  child: const Text(
                    'VERIFY AND CONTINUE',
                    style: TextStyle(fontSize: 18.0, letterSpacing: 1.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
