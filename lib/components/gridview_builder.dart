import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({Key? key}) : super(key: key);
  final List<Map> listOfItems = const<Map>[
    {
      'image' : 'assets/images/gridview_images/image 8.png',
      'text1' : 'Accounting',
      'text2' : '20 Courses',
    },
    {
      'image' : 'assets/images/gridview_images/69001270-removebg-preview (1) 1.png',
      'text1' : 'Bioloogy',
      'text2' : '15 Courses',
    },
    {
      'image' : 'assets/images/gridview_images/image 7.png',
      'text1' : 'Photography',
      'text2' : '25 Courses',
    },
    {
      'image' : 'assets/images/gridview_images/124-1247062_digital-marketing-illustration-png-transparent-png-removebg-preview 1.png',
      'text1' : 'Marketing',
      'text2' : '18 Courses',
    },
    {
      'image' : 'assets/images/gridview_images/UH14stzbXl4OZHrz-removebg-preview 1.png',
      'text1' : 'Social Media',
      'text2' : '13 Courses',
    },
    {
      'image' : 'assets/images/gridview_images/124619001-microscope-test-tubes-and-atom-science-vector-illustration-removebg-preview 1.png',
      'text1' : 'Chemistry',
      'text2' : '16 Courses',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: MediaQuery.of(context).size.width *0.06,
          crossAxisCount: 2,
          crossAxisSpacing: MediaQuery.of(context).size.width *0.04,
          childAspectRatio: MediaQuery.of(context).size.width *0.0022,
        ),
        itemCount: 6,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
                borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 23),
                child: Image.asset('${listOfItems[index]['image']}', width: 100,height: 100,),
              )),
              Padding(
                padding: const EdgeInsets.only( top: 8, left: 17),
                child: Text(
                  '${listOfItems[index]['text1']}',
                  style: TextStyle(
                    fontFamily: 'DMSana',
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, left: 17),
                child: Text(
                  '${listOfItems[index]['text2']}',
                  style: TextStyle(
                    fontFamily: 'DMSana',
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
