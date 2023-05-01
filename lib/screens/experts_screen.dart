import 'package:flutter/material.dart';
import 'package:learner_app/components/listview_builder.dart';

class ExpertsScreen extends StatelessWidget {
  const ExpertsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerRight,
          child: IconButton(onPressed: () { },
            icon: Icon(Icons.search_outlined, color: Colors.black,),
          ),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:  MediaQuery.of(context).size.width * 0.18,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffE9E9F1)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.121,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150)
                      ),
                      child: Image.asset('assets/images/experts_images/Ellipse.png', fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 11,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lucas Wilson',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width *0.044,
                            fontFamily: 'Poppins',
                            color: Color(0xff161C2B),
                          ),
                        ),
                        Text(
                          'Thomas Jefferson High School ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: MediaQuery.of(context).size.width *0.036,
                            fontFamily: 'Poppins',
                            color: Color(0xff6F6F79),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width*0.11,
                      height: MediaQuery.of(context).size.width*0.11,
                      decoration: BoxDecoration(
                      color: Color(0xff4E74F9),
                        borderRadius: BorderRadius.circular(150),
                      ),
                      // child: Image.asset('assets/images/masters_screen/repeat.png',width: MediaQuery.of(context).size.width*0.05,
                      //   height: MediaQuery.of(context).size.width*0.05,),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.repeat_outlined, color: Colors.white, size: MediaQuery.of(context).size.width * 0.065,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Text
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
              child: Text(
                'Staff available for Lucas Wilson',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  color: Color(0xff4E74F9),
                ),
              ),
            ),
            ListViewBuilder(),
          ],
        ),
      ]
      ),
    );
  }
}
