import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/doctor.dart';
import 'package:healthxchangehack/pages/patient.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HealthXchange'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                'Welcome to HealthXchange!\n',
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
              Text(
                'Are you a patient or a provider?\n',
                style: TextStyle(fontSize: 35),
              ),
              ElevatedButton(
                child: Text(
                  'Patient',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => PatientPage()));
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
                  'Healthcare Provider',
                  style: TextStyle(fontSize: 32),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => DoctorPage()));
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
