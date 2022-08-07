import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String fileName;
  final int fileSize;
  const MyCard({Key? key, required this.fileName, required this.fileSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 15,
            ),
            const Icon(
              Icons.picture_as_pdf,
              size: 50,
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text(fileName), Text('$fileSize Kb')],
            ),
          ],
        ),
      ),
    );
  }
}
