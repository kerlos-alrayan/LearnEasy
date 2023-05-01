import 'package:flutter/material.dart';
import 'package:learner_app/screens/home_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
   PhoneNumberScreen({Key? key}) : super(key: key);
GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
        color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add a gurdian',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: 'Poppins'
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 31),
                  child: Text(
                    'Give access to another guardian',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      color: Color(0xff4E74F9)
                    ),
                  ),
                ),
                // Mobile
                Padding(
                  padding: const EdgeInsets.only(top: 31, bottom: 8),
                  child: Text(
                    'Mobile',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                _textFormField(),
                // Confirm Mobile
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 8),
                  child: Text(
                    'Confirm mobile',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                _textFormField(),
                // Elevated Button
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4E74F9),
                        fixedSize: Size(335, 54),
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)
                        )
                    ),
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route) => false);
                      }
                    },
                    child: Container(
                      child: Text(
                        'Give Access',
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
          ),
        ),
      ),
    );
  }

  TextFormField _textFormField() {
    return TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: '+20 01283439201',
                hintStyle: TextStyle(
                  color: Color(0xffA3A3AE),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.5, color: Color(0xffE9E9F1),),
                  borderRadius: BorderRadius.circular(12)
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: Icon(Icons.phone_android_outlined, color: Color(0xff6F6F79),)
              ),
              validator: (String? num){
                if(num!.isEmpty){
                  return 'Your number cannot be empty';
                }else if(num.length != 11){
                  return 'Your number is incorrect';
                }else{
                  return null;
                }
              },
            );
  }
}
