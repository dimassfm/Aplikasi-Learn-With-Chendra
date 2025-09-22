import 'package:chendra/shared/theme.dart';
import 'package:chendra/ui/widgets/video_vertical.dart';
import 'package:chendra/ui/widgets/video_horizontal.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 10.0,
        shadowColor: Color(0xff0A1D37),
        // systemOverlayStyle()
        // brightness: Brightness.dark,
        backgroundColor: kWhiteColor,
        title: Text(
          "Video",
          style: TextStyle(
            fontSize: 20.0,
            color: kBlackColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage('assets/logo.png'))),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Favourites",
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xff0A1D37),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                VideoHorizontal(
                  title: "Bisnis Itu Mudah - Cara Gampang Memulai Bisnis",
                  thumb:
                      "assets/Bisnis Itu Mudah - Cara Gampang Memulai Bisnis.png",
                  videoUrl: "assets/Video1.mp4",
                ),
                SizedBox(width: 20),
                VideoHorizontal(
                  title:
                      "[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra",
                  thumb:
                      "assets/[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra.png",
                  videoUrl: "assets/Video2.mp4",
                ),
                SizedBox(width: 20),
                VideoHorizontal(
                  title: "Dinasti Motekar Academy - OVERVIEW by [ACEP HENDRA]",
                  thumb:
                      "assets/Dinasti Motekar Academy - OVERVIEW by [ACEP HENDRA].png",
                  videoUrl: "assets/Video3.mp4",
                ),
                SizedBox(width: 20),
                VideoHorizontal(
                  title: "Penting ga sih SEO",
                  thumb: "assets/Penting ga sih SEO.png",
                  videoUrl: "assets/Video4.mp4",
                ),
                SizedBox(width: 20),
                VideoHorizontal(
                  title: "Penting ga sih SEO",
                  thumb: "assets/Penting ga sih SEO.png",
                  videoUrl: "assets/Video4.mp4",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "My Videos",
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xff0A1D37),
              ),
            ),
          ),
          VideoVertical(
            title: "Bisnis Itu Mudah - Cara Gampang Memulai Bisnis",
            thumb: "assets/Bisnis Itu Mudah - Cara Gampang Memulai Bisnis.png",
            videoUrl: "assets/Video1.mp4",
            title2: "Penting ga sih SEO",
            thumb2: "assets/Penting ga sih SEO.png",
            videoUrl2: 'assets/Video4.mp4',
          ),
          VideoVertical(
            title:
                "[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra",
            thumb:
                "assets/[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra.png",
            videoUrl: 'assets/Video2.mp4',
            title2: "Bisnis Itu Mudah - Cara Gampang Memulai Bisnis",
            thumb2: "assets/Bisnis Itu Mudah - Cara Gampang Memulai Bisnis.png",
            videoUrl2: "assets/Video1.mp4",
          ),
          VideoVertical(
            title: "Bisnis Itu Mudah - Cara Gampang Memulai Bisnis",
            thumb: "assets/Bisnis Itu Mudah - Cara Gampang Memulai Bisnis.png",
            videoUrl: "assets/Video1.mp4",
            title2:
                "[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra",
            thumb2:
                "assets/[INTERNET MARKETING] Revolusi Bisnis Go Online by Acep Hendra.png",
            videoUrl2: 'assets/Video2.mp4',
          ),
          VideoVertical(
            title: "Dinasti Motekar Academy - OVERVIEW by [ACEP HENDRA]",
            thumb:
                "assets/Dinasti Motekar Academy - OVERVIEW by [ACEP HENDRA].png",
            videoUrl: "assets/Video3.mp4",
            title2: "Penting ga sih SEO",
            thumb2: "assets/Penting ga sih SEO.png",
            videoUrl2: 'assets/Video4.mp4',
          ),
        ],
      ),
    );
  }
}
