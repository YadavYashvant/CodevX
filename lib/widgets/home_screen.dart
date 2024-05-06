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
      child: Column(children: [
        SizedBox(
          height: screenHeight * 0.05,
        ),
        Align(
          alignment: const AlignmentDirectional(-1, 0),
          child: Container(
            width: screenWidth * 0.68,
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
                          TextSpan(text: 'May the\n'),
                          TextSpan(
                              text: 'open source ',
                              style: TextStyle(color: CupertinoColors.activeGreen)),
                          TextSpan(text: 'be with you')
                        ]),
                  ),
          ),
        )
      ],),
    );
  }
}
