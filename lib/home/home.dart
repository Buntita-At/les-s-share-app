import 'dart:html';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lets_share/loginfuntion/singup.dart';
import 'package:lets_share/spiltbill/result.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Color.fromARGB(255, 243, 201, 215),
        activeColor: Colors.white,
        tabBackgroundColor: Color.fromARGB(255, 243, 158, 186),
        color: Colors.black,
        gap: 8,
        padding: EdgeInsets.all(15),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "HOME",
          ),
          GButton(
            icon: Icons.add,
            text: "ADD",
          ),
        ],
      ),
      body: BillSplit(),
    );
  }
}

class BillSplit extends StatefulWidget {
  const BillSplit({super.key});

  @override
  _BillSplitState createState() => _BillSplitState();
}

class _BillSplitState extends State<BillSplit> {
  String bill = '';
  double friendsValue = 0.0;
  buildButton(String text) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(20)),
        onPressed: () {
          if (text == '-') {
            setState(() {
              bill = '';
            });
          } else {
            setState(() {
              bill += text;
            });
          }
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  clearData() {
    setState(() {
      bill = '';
      friendsValue = 0.0;
    });
  }

  TextStyle infoStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 5),
              child: const Center(
                child: Text(
                  "Split Bill",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // elevation: 5,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 251, 181, 205),
                      ),
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total Firends",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            friendsValue.round().toString() == "0"
                                ? "0"
                                : friendsValue.round().toString() + " Friends",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    // color: const Color.fromARGB(255, 251, 181, 205),
                    // elevation: 5,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 251, 181, 205),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Calculate",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            bill,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 251, 181, 205),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "14 %",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Friends",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 120,
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(10)),
            //     color: Color.fromARGB(255, 251, 181, 205),
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(15.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             const Text(
            //               "Total",
            //               style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             ),
            //             Text(
            //               bill,
            //               style: const TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.all(15.0),
            //         child: Row(
            //           children: [
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text("Friends", style: infoStyle),
            //               ],
            //             ),
            //             const SizedBox(width: 15),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(friendsValue.round().toString(),
            //                     style: infoStyle),
            //                 Text("14 %", style: infoStyle),
            //                 Text("Friends", style: infoStyle),
            //               ],
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            const SizedBox(height: 10),
            // Text left
            const Text(
              "How many friends?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.justify,
            ),
            Slider(
              min: 0,
              max: 15,
              divisions: 15,
              activeColor: const Color.fromARGB(255, 254, 135, 175),
              inactiveColor: const Color.fromARGB(255, 251, 183, 206),
              value: friendsValue,
              onChanged: (value) {
                setState(() {
                  friendsValue = value;
                });
              },
            ),
            const SizedBox(height: 10),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: 70,
            //         decoration: BoxDecoration(
            //           color: Colors.pink,
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //         child: const Center(
            //           child: Text(
            //             'Calculate',
            //             style: TextStyle(
            //               fontSize: 24,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 10),
            Row(
              children: [
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
              ],
            ),
            Row(
              children: [
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
              ],
            ),
            Row(
              children: [
                buildButton("7"),
                buildButton("8"),
                buildButton("9"),
              ],
            ),
            Row(
              children: [
                buildButton("."),
                buildButton("0"),
                buildButton("-"),
              ],
            ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 92, 166, 227),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ResultPage(bill == "" ? "0" : bill, friendsValue),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  "Split Bill",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 202, 223, 241),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 166, 227),
                ),
                onPressed: clearData,
                child: const Center(
                  child: Text(
                    "Clear Data",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 202, 223, 241),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
