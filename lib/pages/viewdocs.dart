import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/emsdoc.dart';
import 'package:healthxchangehack/pages/menshealth.dart';
import 'package:healthxchangehack/pages/physician.dart';
import 'package:photo_view/photo_view.dart';

class Documents extends StatefulWidget {
  Documents();
  @override
  State<StatefulWidget> createState() {
    return _DocumentsState();
  }
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Documentation'),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              Text(
                '08/01/2021 - Emergency Department Visit\nDr. Seema Ajulia',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                child: Text(
                  'View Documents',
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (() {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => EMSDocs()));
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 156, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(
                '',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '''06/24/2021 - Men's Health Specialist \nPhysician Telehealth \nDr. Johnson Taneja ''',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                child: Text(
                  'View Documents',
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (() {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => MensHealth()));
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 156, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Text(
                '',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '\n05/11/2021 - Primary Care Physician\nDr. John Doe',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                child: Text(
                  'View Documents',
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: (() {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Physician()));
                }),
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 156, 240),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ]))));
  }
}
