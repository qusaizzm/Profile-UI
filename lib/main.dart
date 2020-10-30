import 'package:profile_ui/page/doctor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(
      MaterialApp(
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''), // English, no country code
          const Locale('ar', ''), // Hebrew, no country code
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          return supportedLocales.last;
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // bottomSheetTheme:
          // BottomSheetThemeData(backgroundColor: Colors.transparent),
          //primarySwatch: kPrimaryColor,
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Cairo",
        ),
        home: DoctorProfile(),
      ),
    );
