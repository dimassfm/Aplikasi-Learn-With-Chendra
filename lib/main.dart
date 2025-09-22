import 'package:chendra/cubit/auth_cubit.dart';
import 'package:chendra/cubit/page_cubit.dart';
import 'package:chendra/ui/pages/account_created_page.dart';
import 'package:chendra/ui/pages/sign_in_success_page.dart';
import 'package:flutter/material.dart';
import 'package:chendra/ui/pages/get_started_page.dart';
import 'package:chendra/ui/pages/sign_up_page.dart';
import 'package:chendra/ui/pages/sign_in_page.dart';
import 'package:chendra/ui/pages/splash_page.dart';
import 'package:chendra/ui/pages/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with proper error handling
  try {
    if (kIsWeb) {
      // Web-specific Firebase configuration
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: "firebase_api_key",
          appId: "firebase_app_id",
          messagingSenderId: "firebase_messaging_sender_id",
          projectId: "firebase_project_id",
          authDomain: "chendra-project.firebaseapp.com",
          storageBucket: "chendra-project.appspot.com",
          measurementId: "G-MEASUREMENT_ID", // Optional for analytics
        ),
      );
    } else {
      // Mobile configuration
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: "firebase_api_key",
          appId: "firebase_app_id",
          messagingSenderId: "firebase_messaging_sender_id",
          projectId: "firebase_project_id",
        ),
      );
    }

    if (kDebugMode) {
      print('Firebase initialized successfully');
    }
  } catch (e) {
    if (kDebugMode) {
      print('Firebase initialization error: $e');
      print('Continuing without Firebase...');
    }
    // Continue running the app even if Firebase fails to initialize
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/account-created': (context) => AccountCreatedPage(),
          '/login-success': (context) => AccountSignInPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
