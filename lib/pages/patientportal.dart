import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/aboutpatient.dart';
import 'package:healthxchangehack/pages/homepage.dart';
import 'package:healthxchangehack/pages/idgenerator.dart';
import 'package:healthxchangehack/pages/viewdocs.dart';

class PatientPortal extends StatefulWidget {
  PatientPortal();
  @override
  State<StatefulWidget> createState() {
    return _PatientPortalState();
  }
}

class _PatientPortalState extends State<PatientPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to your Patient Portal'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                child: Text(
                  'My information',
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
                  'Get ID',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => IdGenerator()));
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
              ),
            ])));
  }
}
