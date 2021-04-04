import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:books_mini_project_ui/FirstScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

var fntsz;

class sem7 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

var dio = new Dio();
// /storage/emulated/0/Android/data/com.example.books_mini_project_2/files

class _MyAppState extends State<sem7> {
  Future<void> openFile(String lnk, String name) async {
    fntsz = MediaQuery.of(context).orientation == Orientation.landscape
        ? MediaQuery.of(context).size.height * 0.024
        : MediaQuery.of(context).size.width * 0.024;
    var dir = await getExternalStorageDirectory();
    print(dir.path);
    final filePath = ('${dir.path}' + '/$name.pdf');
    final result = await OpenFile.open(filePath);
    if (result.type.toString() == "ResultType.fileNotFound") {
      print("downloading the file ,please wait...");
      Navigator.push(context, MaterialPageRoute(builder: (context) => load()));
      await dio.download(lnk, filePath);
      Navigator.of(context).pop();
      openFile(lnk, name);
    }
    // setState(() {
    //   _openResult = "type=${result.type}  message=${result.message}";
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffce5b78), Colors.blueGrey[600]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(70),
                    child: ListTile(
                      leading: Image.asset('assets/CEB_Logo.png'),
                      title: Text(
                        "Semester 2 ",
                        style: TextStyle(
                            fontFamily: "Lora",
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print("Digital Signal & Image Processing");
              var lnk =
                  "https://firebasestorage.googleapis.com/v0/b/booksapp-628fb.appspot.com/o/Semster%207%2FDigital_Image_Processing.pdf?alt=media&token=d03841e7-42c4-4e06-b734-76c5b79ff002";
              openFile(lnk, "71");
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 20,
              margin: EdgeInsets.all(10),
              color: Color(0xff42447a),
              //Colors.blueGrey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Digital Signal & Image Processing',
                        style:
                            TextStyle(fontFamily: "Lora", color: Colors.white),
                      ),
                      subtitle: Text(
                        'Rafel C. Gonzalez and Richard E. Woods,  ̳Digital Image Processing‘',
                        style: TextStyle(
                            fontFamily: "Lora",
                            color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              print("Mobile Communication & Computing");
              var lnk =
                  "https://firebasestorage.googleapis.com/v0/b/booksapp-628fb.appspot.com/o/Semster%207%2Ftutorial%5CMobile-Communications-JochenSchiller.pdf?alt=media&token=0469e665-c6e5-4e6b-9857-f6b0fff920d0";
              openFile(lnk, "72");
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 20,
              margin: EdgeInsets.all(10),
              color: //Color(0xff42447a)
                  Color(0xff42447a),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Mobile Communication & Computing',
                        style:
                            TextStyle(fontFamily: "Lora", color: Colors.white),
                      ),
                      subtitle: Text(
                        'Jochen Schilller,‖Mobile Communication ―, Addision wisely,Pearson Education',
                        style: TextStyle(
                            fontFamily: "Lora",
                            color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              print("Artificial Intelligence & Soft Computing");
              var lnk =
                  "https://firebasestorage.googleapis.com/v0/b/booksapp-628fb.appspot.com/o/Semster%207%2FAIMA-3rd-edition.pdf?alt=media&token=a1a586d0-f6e0-4cd8-baff-c25eb2dbafdb";
              openFile(lnk, "73");
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 20,
              margin: EdgeInsets.all(10),
              color: //Color(0xff42447a)
                  Color(0xff42447a),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Artificial Intelligence & Soft Computing',
                        style:
                            TextStyle(fontFamily: "Lora", color: Colors.white),
                      ),
                      subtitle: Text(
                        'Stuart J. Russell and Peter Norvig, "Artificial Intelligence A Modern Approach',
                        style: TextStyle(
                            fontFamily: "Lora",
                            color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              print("Advanced System Security and Digital Forensics");
              var lnk =
                  "https://firebasestorage.googleapis.com/v0/b/booksapp-628fb.appspot.com/o/Semster%207%2FComputer_Security_Principles_and_Practice_(3rd_Edition).pdf?alt=media&token=a008b85e-1c2c-4adf-bbd3-acd82827fa61";
              openFile(lnk, "74");
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 20,
              margin: EdgeInsets.all(10),
              color: //Color(0xff42447a)
                  Color(0xff42447a),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Advanced System Security and Digital Forensics',
                        style:
                            TextStyle(fontFamily: "Lora", color: Colors.white),
                      ),
                      subtitle: Text(
                        'Computer Security Principles and Practice, William Stallings',
                        style: TextStyle(
                            fontFamily: "Lora",
                            color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              print("Big Data Analytics");
              var lnk =
                  "https://firebasestorage.googleapis.com/v0/b/booksapp-628fb.appspot.com/o/Semster%207%2FMining%20Datasets.pdf?alt=media&token=6bf06039-97f5-4042-91ff-025694bc47aa";
              openFile(lnk, "75");
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 20,
              margin: EdgeInsets.all(10),
              color: //Color(0xff42447a)
                  Color(0xff42447a),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Big Data Analytics',
                        style:
                            TextStyle(fontFamily: "Lora", color: Colors.white),
                      ),
                      subtitle: Text(
                        'CreAnand Rajaraman and Jeff Ullman ―Mining of Massive Datasets‖',
                        style: TextStyle(
                            fontFamily: "Lora",
                            color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              print("MP");
              var lnk =
                  "https://firebasestorage.googleapis.com/v0/b/booksapp-628fb.appspot.com/o/Semster%204%2FUnderstanding%208085_8086%20Microprocessors%20and%20Peripheral%20ICs%20%20(%20PDFDrive%20).pdf?alt=media&token=250f1675-b01b-4569-98c3-3042ac9ef7d5";
              openFile(lnk, "46");
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 20,
              margin: EdgeInsets.all(10),
              color: //Color(0xff42447a)
                  Color(0xff42447a),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.article,
                        color: Colors.white,
                      ),
                      title: const Text(
                        'Microprocessor',
                        style:
                            TextStyle(fontFamily: "Lora", color: Colors.white),
                      ),
                      subtitle: Text(
                        'Understanding 8086,8086 Microprocessors',
                        style: TextStyle(
                            fontFamily: "Lora",
                            color: Colors.white.withOpacity(0.6)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

// Column(children: [
//   SizedBox(
//     height: 25,
//   ),
//
// ]),
// SizedBox(
//   width: 20,
// ),
// Column(
//   children: [
//     FittedBox(
//       child: Text(
//         "E. Mathematics-IV ",
//         style: TextStyle(
//                               fontFamily: "Lora",
//           color: Colors.white,
//           //fontWeight: FontWeight.w700
//         ),
//       ),
//     ),
//   ],
// ),

/*
class _MyAppState extends State<sem7> {
  final double _borderRadius = 24.0;
  bool show = false;
  Future<void> openFile() async {
    var dir = await getExternalStorageDirectory();
    print(dir.path);
    final filePath = ('${dir.path}' + '/3.pdf');
    final result = await OpenFile.open(filePath);
    if (result.type.toString() == "ResultType.fileNotFound") {
      print("downloading the file ,please wait...");
      await dio.download(
        "https://firebasestorage.googleapis.com/v0/b/booksapp-628fb.appspot.com/o/(Data%20Warehousing%20and%20Mining)The-Morgan-Kaufmann-Series-in-Data-Management-Systems-Jiawei-Han-Micheline-Kamber-Jian-Pei-Data-Mining.-Concepts-and-Techniques-3rd-Edition-Morgan-Kaufmann-2011.pdf?alt=media&token=fb117284-c0ca-48d2-8eda-b6ad74ba0332",
        filePath,
        onReceiveProgress: (count, total) {
          setState(() {
            show = true;
          });
        },
      );
      setState(() {
        show = false;
      });
      openFile();
    }
    // setState(() {
    //   _openResult = "type=${result.type}  message=${result.message}";
    // });
  }
*/
class load extends StatefulWidget {
  @override
  _loadState createState() => _loadState();
}

class _loadState extends State<load> {
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      backgroundColor: Color(0xff42447a),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitRotatingCircle(
                color: Colors.white,
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Downloading file,Please wait...",
                style: TextStyle(
                    fontFamily: "Lora", color: Colors.white, fontSize: fntsz),
              ),
              Text(
                "It will open after download gets completed",
                style: TextStyle(
                    fontFamily: "Lora", color: Colors.white, fontSize: fntsz),
              )
            ],
          ),
        ),
      ),
    );
  }
}
