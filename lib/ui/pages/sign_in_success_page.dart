import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class AccountSignInPage extends StatelessWidget {
  const AccountSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget tittle() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Congratulations!',
          style: blacktTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtittle() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Your account has been Sign In \nWelcome Learn with Chendra',
          style: greytTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return Container(
        width: 220,
        height: 55,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                defaultRadius,
              ),
            ),
          ),
          child: Text(
            'Start Now',
            style: whitetTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tittle(),
            subtittle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
