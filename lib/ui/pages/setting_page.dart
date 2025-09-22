import 'package:chendra/cubit/auth_cubit.dart';
import 'package:chendra/cubit/page_cubit.dart';
import 'package:chendra/shared/theme.dart';
import 'package:chendra/ui/pages/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:chendra/ui/pages/detail_account_settings.dart';

class SettingPageUI extends StatefulWidget {
  @override
  _SettingPageUIState createState() => _SettingPageUIState();
}

class _SettingPageUIState extends State<SettingPageUI> {
  String url = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        title: Text(
          'Settings',
          style: TextStyle(
            color: kBlackColor,
          ),
        ),
        automaticallyImplyLeading: false,
        shadowColor: Color(0xff0A1D37),
        leading: Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/icon_settings.png'))),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

// Account

            buildAccountDetail(
                context, "User", "User@gmail.com", 'assets/user.png'),

            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.list,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("More",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 10),
            buildSocialLink(context, 'assets/file.png', "Portofolio",
                'https://instagram.com/acephendra99'),
            SizedBox(height: 10),
            buildSocialLink(context, 'assets/instagram.png', "Social Media",
                'https://instagram.com/acephendra99'),

            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.apps,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Apps Version",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 10),
            buildAccountOption(context, 'assets/beta.png', "Beta 1.0"),
            SizedBox(height: 40),

            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: kRedColor,
                      content: Text(state.error),
                    ),
                  );
                } else if (state is AuthInitial) {
                  context.read<PageCubit>().setPage(0);
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-in', (route) => false);
                }
              },
              builder: (context, state) {
                if (state is AuthLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Center(
                  child: Container(
                    width: 200.0,
                    height: 50.0,
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                        context.read<AuthCubit>().signOut();
                      },
                      child: Text("Sign Out",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.white)),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Future<void> openUrl(String url,
      {bool forceWebView = false, bool enableJavaScript = false}) async {
    await launchUrl(Uri.parse(url));
  }

  Future<void> _launchInWebViewOrVC(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      webViewConfiguration: WebViewConfiguration(
        headers: <String, String>{'my_header_key': 'my_header_value'},
      ),
    )) {
      throw 'Could not launch $url';
    }
  }

  GestureDetector buildSocialLink(
      BuildContext context, String imageUrl, String title, String link) {
    return GestureDetector(
      onTap: () {
        openUrl(link);
        _launchInWebViewOrVC(link);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: kBlackColor),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 60, height: 60, child: Image.asset(imageUrl)),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountDetail(
      BuildContext context, String name, String email, String imageUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SettingsUI(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: kBlackColor),
            borderRadius: BorderRadius.circular(10)),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      email,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(imageUrl))),
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector buildAccountOption(
      BuildContext context, String imageUrl, String title) {
    return GestureDetector(
      // onTap: () {
      //   showDialog(
      //       context: context,
      //       builder: (BuildContext context) {
      //         return AlertDialog(
      //           title: Text(title),
      //           content: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               Text("Option 1"),
      //               Text("Option 2"),
      //             ],
      //           ),
      //           actions: [
      //             TextButton(
      //                 onPressed: () {
      //                   Navigator.of(context).pop();
      //                 },
      //                 child: Text("Close")),
      //           ],
      //         );
      //       });
      // },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: kBlackColor),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 60, height: 60, child: Image.asset(imageUrl)),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
