import 'package:flutter/material.dart';
import 'package:learner_app/components/gridview_builder.dart';
import 'package:learner_app/screens/experts_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Blue Container
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, right: 13),
                child: Container(
                  width: MediaQuery.of(context).size.height * 2.04,
                  height: 192,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff4E74F9)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 32, top: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Text
                            Text(
                              'Hello,',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                  color: Colors.white),
                            ),
                            // Notification Icon
                            InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/main_images/Group_learning.png',
                                  width: 30,
                                  height: 30,
                                )),
                          ],
                        ),
                        Text(
                          'good Morning',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              fontFamily: 'DMSana',
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.76,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.search_outlined,
                                color: Color(0xffB7B7B7),
                              ),
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 35,
                                color: Color(0xffB7B7B7),
                              ),
                              suffixText: 'All',
                              suffixStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: Color(0xffB7B7B7),
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: Color(0xffB7B7B7),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100),
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.transparent)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Text
              Padding(
                padding: const EdgeInsets.only(top: 26, left: 30, right: 30),
                child: Row(
                  children: [
                    Text(
                      'Explore categories',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.width * 0.042,
                        fontFamily: 'Poppins',
                        color: Color(0xff4D8AF0),
                      ),
                    ),
                  ],
                ),
              ),
              // GridView.builder
              Padding(
                padding: const EdgeInsets.only(
                  left: 26,
                  right: 26,
                ),
                child: GridViewBuilder(),
              ),
              // Masters Text
              Container(
                // color: Colors.grey,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.071,
                    right: MediaQuery.of(context).size.width * 0.071,
                    top: 24,
                    bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Masters',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Color(0xff4D8AF0),
                      ),
                    ),
                  ],
                ),
              ),
              // Masters
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //color: Colors.grey,
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.071),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: MediaQuery.of(context).size.width * 0.37,
                          height: MediaQuery.of(context).size.width * 0.37,
                          decoration: BoxDecoration(
                              color: Color(0xffF9D048),
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(
                            'assets/images/masters/portrait-asian-woman-teacher_1258-13821-removebg-preview 1.png',
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 14),
                          width: MediaQuery.of(context).size.width * 0.33,
                          height: MediaQuery.of(context).size.width * 0.34,
                          decoration: BoxDecoration(
                              color: Color(0xffee5d6c),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Image.asset(
                            'assets/images/masters/161-1615078_female-teacher-png-transparent-png-download-removebg-preview 1.png',
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 14),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.44,
                          decoration: BoxDecoration(
                              color: Color(0xff02B1EE),
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                              'assets/images/masters/[removal 1.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width * 0.45,
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.071),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              color: Color(0xff02B1EE),
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(
                              'assets/images/masters/portrait-young-male-teacher-light-background_99433-2422-removebg-preview 1.png'),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(top: 14),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.42,
                          decoration: BoxDecoration(
                              color: Color(0xff01B6CB),
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                              'assets/images/masters/handsome-businessman-suit-glasses-cross-arms-chest-look_176420-21750-removebg-preview 1.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // True Masters
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 26, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'True masters in',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' their fields,',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'ready to teach you',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4E74F9),
                        fixedSize: Size(142, 58),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ExpertsScreen()));
                      },
                      child: Text(
                        'Meet experts',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
