import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CupertinoColors.systemGreen),
              padding: const EdgeInsets.all(16.0),
              width: screenWidth * 0.70,
              margin: EdgeInsets.only(left: screenWidth * 0.05),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.1,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                    children: const <TextSpan>[
                      TextSpan(text: 'Welcome\n'),
                      TextSpan(
                          text: 'To ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 90, 107, 32))),
                      TextSpan(text: 'Codev')
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
