import 'package:azkar/screen/about_Screen.dart';
import 'package:azkar/screen/azkar_screen.dart';
import 'package:azkar/screen/lunch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales:const [
        Locale('ar')
      ],
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_Screen' ,
      //home: const LaunchScreen(),
      routes: {
        '/launch_Screen' : (context) => const LaunchScreen(),
        '/azkar_Screen' : (context) => const AzkarScreen(),
        '/about_Screen' : (context)=> const AboutScreen(),

      },
    );
  }
}
