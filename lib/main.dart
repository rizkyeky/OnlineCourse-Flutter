import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'injector.dart';

import 'view/page/page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();
  injector.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF3456DD),
        accentColor: const Color(0xFFF3EC00),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        colorScheme: colorScheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: textTheme,
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.white
        )
      ),
      home: EntryPage(),
    );
  }
}

const ColorScheme colorScheme = ColorScheme(
  surface: Colors.white,
  primary: Color(0xFF3456DD),
  primaryVariant: Color(0xFF4BD6F3),
  secondary: Color(0xFFF3EC00),
  secondaryVariant: Color(0xFFF3EC00),
  error: Colors.red,
  background: Colors.white,
  brightness: Brightness.light,
  onSurface: Colors.white,
  onError: Colors.red,
  onBackground: Colors.white,
  onPrimary: Color(0xFF3456DD),
  onSecondary: Color(0xFFF3EC00),
);

const TextTheme textTheme = TextTheme(
  headline4: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 32
  ),
  headline6: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold
  ),
  subtitle1: TextStyle(
    fontFamily: 'Poppins',
    color: Color(0xFF3456DD),
    fontSize: 16,
    fontWeight: FontWeight.bold
  ),
  subtitle2: TextStyle(
    fontFamily: 'Poppins',
    color: Color(0xFF464646),
    fontSize: 14,
    fontWeight: FontWeight.bold
  ),
  bodyText1: TextStyle(
    fontFamily: 'Poppins',
    color: Color(0xFF202020),
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  bodyText2: TextStyle(
    fontFamily: 'Poppins',
    color: Color(0xFF464646),
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ),
  button: TextStyle(
    fontFamily: 'Poppins',
    color: Colors.white,
    fontWeight: FontWeight.bold,
  ),
);