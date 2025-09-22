import 'package:chendra/cubit/page_cubit.dart';
import 'package:chendra/ui/pages/home_page.dart';
import 'package:chendra/ui/pages/video_page.dart';
import 'package:chendra/ui/pages/review_page.dart';
import 'package:chendra/ui/pages/setting_page.dart';
import 'package:chendra/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import 'Image_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return VideoPage();
        case 2:
          return ReviewPage();
        case 3:
          return ImagePage();
        case 4:
          return SettingPageUI();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: 'assets/Home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: 'assets/Video.png',
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: 'assets/Rating.png',
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: 'assets/Foto.png',
              ),
              CustomBottomNavigationItem(
                index: 4,
                imageUrl: 'assets/Pengaturan.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
