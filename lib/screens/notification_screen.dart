import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      'Notification',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        color: Color(0xff161C2B),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: (){},
                        child: Image.asset('assets/images/notification_image/settings_learning.png', width: 28, height: 28,))
                  ],
                ),
              ),
              SizedBox(height: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/notification_image/Push notifications-rafiki 1.png'),
                  Text(
                    'No notification,',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      color: Color(0xff161C2B),
                    ),
                  ),
                  Text(
                    'yet!',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      color: Color(0xff161C2B),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff6F6F79),
                    ),
                  ),
                  Text(
                    'adipiscing elit, sed do eiusmod tempor',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff6F6F79),
                    ),
                  ),
                  Text(
                    'incididunt dolore magna aliqua',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff6F6F79),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
