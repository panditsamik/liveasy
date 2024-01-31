import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {

  Color shipper_color = Color(0xffffffff);
  Color transporter_color = Color(0xffffffff);
  int s = 0;
  int t = 0;
  Color active = Color(0xff2E3B62);
  Color inactive = Color(0xffffffff);

  void selectOption(int option) {
    if (option == 1) {
      if (shipper_color == inactive) {
        setState(() {
          shipper_color = active;
          transporter_color = inactive;
        });
      } else {
        setState(() {
          shipper_color = inactive;
        });
      }
    }
    if (option == 2) {
      if (transporter_color == inactive) {
        setState(() {
          transporter_color = active;
          shipper_color = inactive;
        });
      } else {
        setState(() {
          transporter_color = inactive;
        });
      }
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: const Center(
                    child: Text(
                      "Please select your profile",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    selectOption(1);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black, // Set border color to black
                      ),
                    ),
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    padding: EdgeInsets.all(10.0),
                    height: 100.0,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 30.0,
                            ),
                            Positioned(
                              top: 5.0, // Adjust the position as needed
                              left: 5.0, // Adjust the position as needed
                              bottom: 5.0,
                              right: 5.0,
                              child: Icon(
                                Icons.circle,
                                color: shipper_color,
                                size: 17.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.warehouse_sharp,
                          size: 45.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shipper",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, \nconsectetur adipiscing",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    selectOption(2);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black, // Set border color to black
                      ),
                    ),
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    padding: EdgeInsets.all(10.0),
                    height: 100.0,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 30.0,
                            ),
                            Positioned(
                              top: 5.0, // Adjust the position as needed
                              left: 5.0, // Adjust the position as needed
                              bottom: 5.0,
                              right: 5.0,
                              child: Icon(
                                Icons.circle,
                                color: transporter_color,
                                size: 17.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.local_shipping_outlined,
                          size: 45.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Transporter",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, \nconsectetur adipiscing",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FourthPage()),
                      );
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
      ),
    );
  }
}
