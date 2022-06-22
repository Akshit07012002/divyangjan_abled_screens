import 'package:flutter/material.dart';

import 'CustomColors.dart';
import 'UploadFile.dart';

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
      home: const UploadFile(),
      debugShowCheckedModeBanner: false,
    );
  }
}
