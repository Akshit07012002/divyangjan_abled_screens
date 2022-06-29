import 'package:divyangjan_abled_screens/Widgets/customBottomNavBar.dart';
import 'package:flutter/material.dart';
import 'customColors.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: myBottomNavBar(),
        resizeToAvoidBottomInset: false,
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
              padding: const EdgeInsets.fromLTRB(70, 20, 0, 0),
              alignment: Alignment.centerLeft,
              child: const Text('Upload Files')),
          toolbarHeight: 75,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(75, 50, 75, 50),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black26,
                      width: 5,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: const [
                      IconButton(
                        onPressed: null,
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
              SizedBox(
                height: 215,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
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
                                  children: const [
                                    Text('Filename1.pdf'),
                                    Text('420 Kb')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
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
                                  children: const [
                                    Text('Filename2.pdf'),
                                    Text('69 Kb')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
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
                                  children: const [
                                    Text('Filename3.pdf'),
                                    Text('400 Kb')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
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
                                  children: const [
                                    Text('Filename4.pdf'),
                                    Text('420 Kb')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
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
                                  children: const [
                                    Text('Filename5.pdf'),
                                    Text('1 Mb')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 95,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                      child: Container(
                        width: 320,
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black26,
                            width: 4,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Add a comment',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 30,
                        child: RawMaterialButton(
                          onPressed: null,
                          elevation: 0,
                          fillColor: Colors.white,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: customOrange,
                              shape: BoxShape.circle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(5),
                          shape: const CircleBorder(),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  child: const Text(
                    'Upload',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(customOrange),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(95, 20, 95, 20)),
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
