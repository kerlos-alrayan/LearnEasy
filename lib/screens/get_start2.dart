import 'package:flutter/material.dart';
import 'package:learner_app/components/custom_pointer.dart';
import 'package:learner_app/screens/phone_nom_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Circle Line
          RotationTransition(
            turns: AlwaysStoppedAnimation(125 / 360),
            child: CustomPaint(
              painter: EmptyContainer(),
              child: SizedBox(width: 175, height: 175),
            ),
          ),
          RotationTransition(
            turns: AlwaysStoppedAnimation(125 / 360),
            child: CustomPaint(
              painter: EmptyContainer(),
              child: SizedBox(width: 240, height: 240),
            ),
          ),
          RotationTransition(
            turns: AlwaysStoppedAnimation(125 / 360),
            child: CustomPaint(
              painter: EmptyContainer(),
              child: SizedBox(width: 275, height: 275),
            ),
          ),
          // Skip
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 55, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return PhoneNumberScreen();
                    }));
              },
              child: Text(
                'Skip',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff848587)),
              ),
            ),
          ),
          // Texts
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                  ),
                  child: Text(
                    'Fees',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet,',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6F6F79),
                    ),
                  ),
                ),
                Text(
                  'consectetur adipiscing elit, sed do',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6F6F79),
                  ),
                ),
                Text(
                  'eiusmod tempor incididunt dolore',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6F6F79),
                  ),
                ),
                Text(
                  'magna aliqua',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6F6F79),
                  ),
                ),
              ],
            ),
          ),
          // Yellow Circle
          Padding(
            padding: const EdgeInsets.only(top: 236, left: 330),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffFFD037),
              ),
              width: 30,
              height: 30,
            ),
          ),
          // Blue Circle
          Padding(
            padding: const EdgeInsets.only(top: 274, left: 28),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xff2CB4EC),
              ),
              width: 30,
              height: 30,
            ),
          ),
          // Half Circle
          RotatedBox(
            quarterTurns: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 550),
              child: CustomPaint(
                painter: FillContainer(color: Color(0xffE14B5A)),
                child: SizedBox(width: 30, height: 30),
              ),
            ),
          ),
          // Image

          Container(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Image.asset(
                  'assets/images/young-smiling-student-woman-white-background__1_-removebg-preview 1.png',
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
            ),
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
                Navigator.of(context).push(MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return PhoneNumberScreen();
                    }));
              },
              child: Container(
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
