import 'package:eshop/utils/dimenssion.dart';
import 'package:eshop/view/account/user.dart';
import 'package:eshop/view/homescreen/homeScreen.dart';
import 'package:eshop/view/netification%20screen/netify.dart';
import 'package:eshop/view/order%20details/orderDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex=0;
  List<Widget> body= [
     HomeScreen(),
      netify(),
      orderDetails(),
    userDetails()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_selectedIndex],
     
     bottomNavigationBar:GNav(
              tabActiveBorder: Border.all(color: Colors.white, width: 1), // tab button border
              tabBorderRadius: 20,
              curve: Curves.easeOutExpo,
              activeColor: Colors.white,
              iconSize: dimensions.icon24-3,
              padding:  EdgeInsets.symmetric(horizontal:dimensions.LRpadmarg30+1.5, vertical: dimensions.TBpadmarg10+2),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.black,
              color: Colors.black,

      selectedIndex :_selectedIndex,
      
      tabs:const   [
        GButton(style:GnavStyle.oldSchool, icon: LineIcons.home,gap: 1, text: " Home",),
        GButton(style:GnavStyle.oldSchool,icon: LineIcons.envelope,gap: 1, text: " Netify"),
        GButton(style:GnavStyle.oldSchool,icon: LineIcons.gift,gap: 1, text: " Order",),
        GButton(style:GnavStyle.oldSchool,icon: LineIcons.user,gap: 1, text: " User"),
       


      ],
      onTabChange: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      
      
      )
      ,

    );
  }
}