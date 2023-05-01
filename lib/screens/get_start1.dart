import 'package:flutter/material.dart';
import 'package:learner_app/components/custom_pointer.dart';
import 'package:learner_app/screens/get_start2.dart';

class GetStarted1 extends StatelessWidget {
  const GetStarted1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Yellow Half Circle
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 100),
            child: RotatedBox(
              quarterTurns: 3,
              child: CustomPaint(
                painter: FillContainer(color: Color(0xffF9D048)),
                child: SizedBox(
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
          // Blue Half Circle
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 170),
            child: RotatedBox(
              quarterTurns: 1,
              child: CustomPaint(
                painter: FillContainer(color: Color(0xff5C5BFD)),
                child: SizedBox(
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
          // Yellow Circle
          Padding(
            padding: const EdgeInsets.only(top: 226, left: 70),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffFFD037),
              ),
              width: 25,
              height: 25,
            ),
          ),
          // Blue Circle
          Padding(
            padding: const EdgeInsets.only(top: 460, left: 330),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff2CB4EC),
              ),
              width: 25,
              height: 25,
            ),
          ),
          // Red Circle
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 70, bottom: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Color(0xffE14B5A),
              ),
              width: 200,
              height: 200,
            ),
          ),
          // Image
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/woman-with-laptop-computer-sitting-floor-isolated-white-removebg-preview (1) 1.png'),
              Text(
                'Welcome to',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                  fontFamily: 'Poppins',
                  color: Color(0xff161C2B),
                ),
              ),
              Text(
                'Learner',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 35,
                  fontFamily: 'Poppins',
                  color: Color(0xff161C2B),
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xff161C2B),
                ),
              ),
              Text(
                'adipiscing elit, sed do eiusmod tempor',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xff161C2B),
                ),
              ),
              Text(
                ' incididunt dolore magna aliqua',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: Color(0xff161C2B),
                ),
              ),
            ],
          ),
          // Elevated Button
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4E74F9),
                  fixedSize: Size(335, 54),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14))),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GetStarted(),
                  ),
                );
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 75),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}