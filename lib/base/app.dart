import 'package:flutter/material.dart';
import 'package:job_post_ui/screens/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SignUp(),
        theme: ThemeData(
            fontFamily: "Poppins",
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xFF191720),
            appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xFF191720),
                elevation: 0,
                toolbarHeight: 120,
                centerTitle: false)));
  }
}
