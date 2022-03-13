import 'package:flutter/material.dart';

class AboutPatientPage extends StatefulWidget {
  AboutPatientPage();
  @override
  State<StatefulWidget> createState() {
    return _AboutPatientPageState();
  }
}

class _AboutPatientPageState extends State<AboutPatientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Patient'),
      ),
      body: Text(
        ' Name: John Will Smith\n Date of birth: 03/12/1974\n Street Address: 47 Wormhill Drive\n City: Brampton\n State: DC\n Zip Code: 12345\n Phone: 1-732-234-4567\n Emergency Contact Name: Shannon Smith\n Emergency Contact Phone: 1-732-987-6543\n Sex Assigned at Birth: Male\n Gender Identity: Male\n Preferred Pronouns: He/Him/His\n Are you Hispanic or Latino?: Not hispanic or latino or Spanish origin\n Race: White\n',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
