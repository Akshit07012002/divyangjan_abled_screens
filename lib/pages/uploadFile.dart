import 'dart:io';

import 'package:divyangjan_abled_screens/common_utils/card.dart';
import 'package:flutter/material.dart';
import '../common_utils/utils.dart';
import '../customColors.dart';
import 'package:file_picker/file_picker.dart';

class UploadFile extends StatefulWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  int itemNum = 0;
  // String type = "";

  void getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      // allowedExtensions: ['jpg', 'pdf', 'doc', 'png'],
      allowedExtensions: ['pdf', 'jpg', 'png'],
    );

    if (result != null) {
      setState(() {
        itemNum++;
        // type = fileNames.elementAt(0).split('.');
        print("itemNum : ${itemNum}  ");
      });
      List<File> files = result.paths.map((path) => File(path!)).toList();
      PlatformFile file = result.files.first;

      fileNames.add(file.name);
      fileSizes.add(file.size);
      print(file.name);
      print(file.bytes);
      print(file.size);
      print(file.extension);
      print(file.path);
    } else {
      // User canceled the picker
      print("Canceled");
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // bottomNavigationBar: const myBottomNavBar(),
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          leading: Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            alignment: Alignment.center,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_rounded),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          title: Container(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.2, 20, 0, 0),
              alignment: Alignment.centerLeft,
              child: const Text('Upload Files')),
          toolbarHeight: 75,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                      vertical: screenHeight * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      width: 5,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: getFile,
                        icon: Icon(Icons.arrow_circle_up_rounded),
                        tooltip: 'Select File',
                        iconSize: 100,
                      ),
                      Text(
                        'Select File(s)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text('maximum size 2 Mb each'),
                    ],
                  ),
                ),
              ),

              // Files Scrollable
              (itemNum > 0)
                  ? Container(
                      height: screenHeight * 0.25,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.08,
                            screenHeight * 0.01,
                            screenWidth * 0.08,
                            screenHeight * 0.01),
                        child: ListView.builder(
                          // shrinkWrap: true,
                          itemCount: itemNum,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Container(
                            height: screenHeight * 0.09,
                            width: 100,
                            child: MyCard(
                              fileName: fileNames[index],
                              fileSize: fileSizes[index],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      alignment: Alignment.center,
                      height: screenHeight * 0.1,
                      width: screenWidth * 0.5,
                      child: const Text("NO FILES SELECTED"),
                    ),

              SizedBox(
                height: screenHeight * 0.1,
                child:
                    // Stack(
                    //   children: [
                    Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.1,
                      screenHeight * 0.01, screenWidth * 0.1, 0),
                  child: Container(
                    width: 320,
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.05,
                        screenHeight * 0.01, screenWidth * 0.05, 0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 4,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const TextField(
                      showCursor: true,
                      decoration: InputDecoration(
                        hintText: 'Add a comment',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //     bottom: 0,
                //     right: 30,
                //     child: RawMaterialButton(
                //       onPressed: null,
                //       elevation: 0,
                //       fillColor: Colors.white,
                //       child: Container(
                //         decoration: const BoxDecoration(
                //           color: customOrange,
                //           shape: BoxShape.circle,
                //         ),
                //         child: const Padding(
                //           padding: EdgeInsets.all(8.0),
                //           child: Icon(
                //             Icons.send,
                //             color: Colors.white,
                //             size: 30.0,
                //           ),
                //         ),
                //       ),
                //       padding: const EdgeInsets.all(5),
                //       shape: const CircleBorder(),
                //     )),
                // ],
                // ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              ElevatedButton(
                  child: const Text(
                    'Upload',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(customOrange),
                    padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(
                        screenWidth * 0.2,
                        screenHeight * 0.025,
                        screenWidth * 0.2,
                        screenHeight * 0.025)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/bnb');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
