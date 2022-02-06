import 'package:flutter/material.dart';
import 'package:smgbuilders/colors/colors.dart';
import 'package:smgbuilders/screens/dashboardScreen.dart';

class MyTheme extends StatelessWidget {
  const MyTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: MyColors.primary,
          secondary: MyColors.secondary,
        ),
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: DashboardScreen.id,
      routes: <String,WidgetBuilder>{
        DashboardScreen.id :(BuildContext context) => DashboardScreen(),
      },
    );
  }
}
