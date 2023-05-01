import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
   ListViewBuilder({Key? key}) : super(key: key);
   List<Map> list2OfItems =  <Map>[
    {
      'image' : 'assets/images/experts_images/Ellipse 20.png',
      'text1' : 'Henry Itondo',
      'text2' : 'Math Teacher',
      Image : Image.asset('assets/images/masters_screen/phone_learning.png', width: 27, height: 27,),
    },
    {
      'image' : 'assets/images/experts_images/Ellipse 201.png',
      'text1' : 'Courtney Henry',
      'text2' : 'Supervisor',
      Image : Image.asset('assets/images/masters_screen/phone_learning.png', width: 27, height: 27,),
    },
    {
      'image' : 'assets/images/experts_images/Ellipse 202.png',
      'text1' : 'Darika Samak',
      'text2' : 'Admin',
      Image : Image.asset('assets/images/masters_screen/phone_learning.png', width: 27, height: 27,),
    },
    {
      'image' : 'assets/images/experts_images/Ellipse 203.png',
      'text1' : 'Em Assinder',
      'text2' : 'Class Teacher',
      Image : Image.asset('assets/images/masters_screen/phone_learning.png', width: 27, height: 27,),
    },
    {
      'image' : 'assets/images/experts_images/Ellipse 204.png',
      'text1' : 'Darika Samak',
      'text2' : 'Admin',
      Image : Image.asset('assets/images/masters_screen/phone_learning.png', width: 27, height: 27,),
    },
    {
      'image' : 'assets/images/experts_images/Ellipse 205.png',
      'text1' : 'Em Assinder',
      'text2' : 'Class Teacher',
      Image : Image.asset('assets/images/masters_screen/phone_learning.png', width: 27, height: 27,),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (context, index)=>Container(
      height: MediaQuery.of(context).size.width * 0.18,
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
              child: Image.asset('${list2OfItems[index]['image']}', fit: BoxFit.cover,),
            ),
            SizedBox(width: 11,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${list2OfItems[index]['text1']}',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width *0.044,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
                Text(
                  '${list2OfItems[index]['text2']}',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize:  MediaQuery.of(context).size.width *0.036,
                    fontFamily: 'Poppins',
                    color: Color(0xff6F6F79),
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: (){},
              icon: list2OfItems[index][Image],
            ),
          ],
        ),
      ),
    ),);
  }
}
