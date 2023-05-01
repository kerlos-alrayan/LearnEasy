import 'package:flutter/material.dart';
import 'package:learner_app/screens/account_screen.dart';
import 'package:learner_app/screens/main_screen.dart';
import 'package:learner_app/screens/messages_screen.dart';
import 'package:learner_app/screens/notification_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controler = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      MainScreen(),
      MessagesScreen(),
      NotificationScreen(),
      AccountScreen(),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        title: 'Home',
        icon: Image.asset('assets/images/home_image/home_learning.png'),
        inactiveIcon: Image.asset('assets/images/home_image/home_learning.png', color: Color(0xff161C2B),),
      ),
      PersistentBottomNavBarItem(
        title: 'Messages',
        icon: Image.asset('assets/images/home_image/message-circle 1_learning.png', color: Color(0xff4D8AF0),),
        inactiveIcon: Image.asset('assets/images/home_image/message-circle 1_learning.png'),
      ),
      PersistentBottomNavBarItem(
        title: 'Notification',
        icon:Image.asset('assets/images/home_image/bell_learning.png', color: Color(0xff4D8AF0),),
        inactiveIcon:Image.asset('assets/images/home_image/bell_learning.png'),
      ),
      PersistentBottomNavBarItem(
        title: 'Account',
        icon: Image.asset('assets/images/home_image/user_learning.png', color: Color(0xff4D8AF0),),
        inactiveIcon:  Image.asset('assets/images/home_image/user_learning.png'),
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        screens: _buildScreen(),
        items: _navBarItem(),
        backgroundColor: Colors.white,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(24)
        ),
      );
  }
}

