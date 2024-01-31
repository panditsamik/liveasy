import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:liveasy/SecondPage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late String phoneNumber;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.clear,
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
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: deviceHeight * 0.15,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: const Center(
                        child: Text(
                          "Please enter your mobile number",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 75.0, top: 8.0, right: 75.0),
                      child: const Center(
                        child: Text(
                          "You'll receive a 6 digit code \nto verify next.",
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
                      height: 35.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black, // Set border color to black
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      padding: EdgeInsets.only(
                          left: 10.0, top: 4.0, bottom: 5.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/flag.png",
                            width: 22.0,
                            height: 25.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "+91",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16.0),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            "-",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15.0),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                // Update the phoneNumber when the user types
                                setState(() {
                                  phoneNumber = value;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: 'Mobile Number',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  letterSpacing: 1.5,
                                  fontSize: 18.0,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                              cursorColor:
                                  Colors.black38, // Set the cursor color
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 12.0),
                      height: 53.0,
                      width: double.infinity,
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff2E3B62)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          if (phoneNumber.length == 10) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SecondPage(phone_no: phoneNumber),
                              ),
                            );
                          } else {
                            // Show a Snackbar indicating that the phone number is invalid
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Please enter a valid 10-digit phone number.'),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'CONTINUE',
                          style: TextStyle(fontSize: 18.0, letterSpacing: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
