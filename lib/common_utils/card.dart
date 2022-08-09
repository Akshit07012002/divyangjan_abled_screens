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

    double fileSizeKb = double.parse((fileSize / 1000).toStringAsFixed(2));
    double fileSizeMb = double.parse((fileSize / 1000000).toStringAsFixed(2));
    double fileSizeGb =
        double.parse((fileSize / 1000000000).toStringAsFixed(2));

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
              (fileName.contains(".pdf")) ? Icons.picture_as_pdf : Icons.image,
              size: screenWidth * 0.1,
            ),
            SizedBox(
              width: screenWidth * 0.1,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$fileName'),
                  (fileSize > 1000000000)
                      ? Text('$fileSizeGb Gb')
                      : (fileSize > 1000000)
                          ? Text('$fileSizeMb '
                              'Mb')
                          : Text('$fileSizeKb '
                              'Kb')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
