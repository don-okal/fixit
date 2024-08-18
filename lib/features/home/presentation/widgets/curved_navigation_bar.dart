import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/features/home/presentation/views/home_view.dart';
import 'package:fixit/features/home/presentation/views/receipt_view.dart';
import 'package:fixit/features/home/presentation/views/services_view.dart';
import 'package:fixit/features/home/presentation/views/setting_view.dart';
import 'package:fixit/features/home/presentation/views/support_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  CustomNavigationBarState createState() => CustomNavigationBarState();
}

class CustomNavigationBarState extends State<CustomNavigationBar> {
  int page = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<Widget> pages = [
    const HomeView(),
    const ServicesView(),
    const SupportView(),
    const ReceiptView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 75,
        items: <Widget>[
          SvgPicture.asset(
            'assets/icons/home icon.svg',
            color: Colors.white,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/icons/services.svg',
            color: Colors.white,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/icons/callCentre.svg',
            color: Colors.white,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/icons/Paper_fill.svg',
            color: Colors.white,
            height: 30,
          ),
          SvgPicture.asset(
            'assets/icons/setting.svg',
            color: Colors.white,
            height: 30,
          ),
        ],
        color: kPrimaryColor,
        buttonBackgroundColor: kPrimaryColor,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
