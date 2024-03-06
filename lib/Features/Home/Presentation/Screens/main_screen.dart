import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Static/colors.dart';
import 'package:fuilearning/Features/Home/Presentation/Screens/home_screen.dart';
import 'package:fuilearning/Features/Home/Presentation/Widgets/botton_menu_item.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            HomeScreen(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 12.h,
        decoration: const BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottonMenuItem(
              icon: Icons.home_outlined,
              title: "Home",
              isActive: currentPage == 0,
              onTap: () {
                setState(() {
                  pageController.jumpToPage(0);
                });
              },
            ),
            BottonMenuItem(
              icon: Icons.music_note,
              title: "Media",
              isActive: currentPage == 1,
              onTap: () {
                setState(() {
                  pageController.jumpToPage(1);
                });
              },
            ),
            BottonMenuItem(
              icon: Icons.book_online_outlined,
              title: "Courses",
              isActive: currentPage == 2,
              onTap: () {
                setState(() {
                  pageController.jumpToPage(2);
                });
              },
            ),
            BottonMenuItem(
              icon: Icons.stars_outlined,
              title: "Leaders",
              isActive: currentPage == 3,
              onTap: () {
                setState(() {
                  pageController.jumpToPage(3);
                });
              },
            ),
            BottonMenuItem(
              icon: Icons.person_outline,
              title: "Profile",
              isActive: currentPage == 4,
              onTap: () {
                setState(() {
                  pageController.jumpToPage(4);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
