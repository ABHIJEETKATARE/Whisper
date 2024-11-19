import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whisper/colors.dart';
import 'package:whisper/firebase_options.dart';
import 'package:whisper/utils/responsive_layout.dart';
import 'package:whisper/screens/mobile_screen_layout.dart';
import 'package:whisper/screens/web_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsup UI',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(color: appBarColor)),
      home: const Scaffold(
          body: ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      )),
    );
  }
}
