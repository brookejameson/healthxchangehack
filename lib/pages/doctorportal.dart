import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/aboutpatient.dart';
import 'package:healthxchangehack/pages/homepage.dart';
import 'package:healthxchangehack/pages/uploaddocs.dart';
import 'package:healthxchangehack/pages/viewdocs.dart';

class DoctorPortal extends StatefulWidget {
  DoctorPortal();
  @override
  State<StatefulWidget> createState() {
    return _DoctorPortalState();
  }
}

class _DoctorPortalState extends State<DoctorPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('''Welcome to the Care Teams's Portal'''),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                child: Text(
                  '''Patient's Information''',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => AboutPatientPage()));
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 156, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(
                '\n',
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                child: Text(
                  'View Documents',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Documents()));
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 156, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(
                '\n',
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                child: Text(
                  'Upload Documents',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => UploadDocs()));
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 156, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(
                '\n',
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => MyHomePage()));
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 156, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              )
            ])));
  }
}
