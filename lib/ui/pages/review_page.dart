import 'package:chendra/shared/theme.dart';
import 'package:chendra/ui/widgets/review_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reviews',
              style: blacktTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            ReviewTemplate(
              name: 'Dimas Faturohman',
              username: 'dimasf',
              imageUrl: 'assets/user.png',
              layanan: 'layanan 1',
              caption: 'Informasi yang disediakan\n sangat bermanfaat',
              rating: 5,
            ),
            ReviewTemplate(
              name: 'Muhammad Daffa Firdaus',
              username: 'mdaffa',
              imageUrl: 'assets/user.png',
              layanan: 'layanan 2',
              caption: 'Fiturnya keren banget',
              rating: 5,
            ),
            ReviewTemplate(
              name: 'Reyhan Rasyid Ziddan',
              username: 'reyhanrz',
              imageUrl: 'assets/user.png',
              layanan: 'layanan 3',
              caption: 'Informasi nya sangat berguna',
              rating: 4,
            ),
            ReviewTemplate(
              name: 'Aprilia Dwi',
              username: 'apriliadwi',
              imageUrl: 'assets/user.png',
              layanan: 'layanan 4',
              caption:
                  'Saya merasakan banyak hal\n yang bisa didapatkan disini',
              rating: 4,
            ),
            ReviewTemplate(
                name: 'Febrilia Cantika',
                username: 'ferbriliaa',
                imageUrl: 'assets/user.png',
                layanan: 'layanan 5',
                caption: 'Tidak menyesal buka aplikasi ini',
                rating: 4.5),
          ],
        ),
      );
    }

    return ListView(children: [
      newDestinations(),
    ]);
  }
}
