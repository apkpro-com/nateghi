import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nateghi/checks_page.dart';
import 'package:nateghi/credits_page.dart';
import 'package:nateghi/sellers_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: GoogleFonts.vazirmatnTextTheme(),
      ),
      child: CupertinoApp(
        title: 'Flutter Demo',
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            textStyle: const CupertinoTextThemeData().textStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
            actionTextStyle:  const CupertinoTextThemeData().actionTextStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
            tabLabelTextStyle:  const CupertinoTextThemeData().tabLabelTextStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
            navTitleTextStyle:  const CupertinoTextThemeData().navTitleTextStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
            navLargeTitleTextStyle:  const CupertinoTextThemeData().navLargeTitleTextStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
            navActionTextStyle:  const CupertinoTextThemeData().navActionTextStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
            pickerTextStyle:  const CupertinoTextThemeData().pickerTextStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
            dateTimePickerTextStyle:  const CupertinoTextThemeData().dateTimePickerTextStyle.copyWith(fontFamily: GoogleFonts.vazirmatn().fontFamily),
          ),
        ),
        // locale: Locale('fa', 'IR'),
        // supportedLocales: [Locale('fa', 'IR')],
        // theme: CupertinoThemeData(textTheme: CupertinoTextThemeData()),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: 1,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: 'فروشندگان',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.money_dollar),
              label: 'اعتبارات',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.creditcard),
              label: 'چک ها',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) => index == 0
            ? const SellersPage()
            : index == 1
                ? const CreditsPage()
                : const ChecksPage());
  }
}
