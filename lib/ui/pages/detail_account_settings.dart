// import 'package:chendra/shared/theme.dart';
// import 'package:flutter/cupertino.dart';

// import 'package:flutter/material.dart';

// class DetailAccountSettingss extends StatefulWidget {
//   @override
//   _DetailAccountSettingsState createState() => _DetailAccountSettingsState();
// }

// class _DetailAccountSettingsState extends State<DetailAccountSettingss> {
//   String image1 = '';
//   String image2 = '';
//   late String gantiGambar;

//   String nama1 = 'Username';
//   String nama2 = 'Email';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kWhiteColor,
//         title: Text(
//           'Account',
//           style: TextStyle(
//             color: kBlackColor,
//           ),
//         ),
//         automaticallyImplyLeading: false,
//         shadowColor: Color(0xff0A1D37),
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 13.0),
//           child: Container(
//             height: 40,
//             width: 40,
//             margin: EdgeInsets.all(6),
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                     image: AssetImage('assets/icon_settings.png'))),
//           ),
//         ),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(10),
//             child: Center(
//               child: Column(
//                 children: [
//                   Container(
//                     width: 100,
//                     height: 100,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                             image: AssetImage('assets/image_profile.png'))),
//                   ),
//                   Text(
//                     'Firdaus',
//                     style: TextStyle(fontSize: 30),
//                   ),
//                   Text('firdaus@mail.com'),
//                   TextField(
//                     decoration: InputDecoration(
//                         hintText: 'nama',
//                         hintStyle: TextStyle(color: kBlackColor),
//                         suffixIcon: Icon(
//                           Icons.edit,
//                           color: kBlackColor,
//                         )),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(15.0),
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                         hintText: 'email',
//                         hintStyle: TextStyle(color: kBlackColor),
//                         suffixIcon: Icon(
//                           Icons.edit,
//                           color: kBlackColor,
//                         )),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   GestureDetector buildAccountOption(
//       BuildContext context, String imageUrl, String title) {
//     return GestureDetector(
//       onTap: () {
//         showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: Text(title),
//                 content: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text("Option 1"),
//                     Text("Option 2"),
//                   ],
//                 ),
//                 actions: [
//                   TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: Text("Close")),
//                 ],
//               );
//             });
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Image.asset(imageUrl),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.grey[600],
//               ),
//             ),
//             Icon(Icons.arrow_forward_ios, color: Colors.grey),
//           ],
//         ),
//       ),
//     );
//   }
// }
