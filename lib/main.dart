import 'package:flutter/material.dart';

import 'customColors.dart';
import 'uploadFile.dart';
import 'Widgets/customBottomNavBar.dart';

void main() {
  runApp(const Abled());
}

class Abled extends StatelessWidget {
  const Abled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customPurple, // custom color created
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => UploadFile(),
        '/bnb': (context) => myBottomNavBar(),
      },
    );
  }
}
