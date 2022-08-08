import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String fileName;
  final int fileSize;
  const MyCard({Key? key, required this.fileName, required this.fileSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * 0.05,
            ),
            Icon(
              Icons.picture_as_pdf,
              size: screenWidth * 0.1,
            ),
            SizedBox(
              width: screenWidth * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(fileName), Text('$fileSize Kb')],
            ),
          ],
        ),
      ),
    );
  }
}
