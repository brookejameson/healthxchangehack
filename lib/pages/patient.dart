import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/newpatient.dart';
import 'package:healthxchangehack/pages/signin.dart';

class PatientPage extends StatefulWidget {
  PatientPage();
  @override
  State<StatefulWidget> createState() {
    return _PatientPageState();
  }
}

class _PatientPageState extends State<PatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Patient'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'Are you a new or returning patient?\n',
                style: TextStyle(fontSize: 35),
              ),
              ElevatedButton(
                child: Text(
                  'New Patient',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => NewPatientPage()));
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
                  'Returning Patient',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => SignInForm()));
                }),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 53, 156, 240),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ), // This trailing comma makes auto-formatting nicer for build methods.
            ])));
  }
}
