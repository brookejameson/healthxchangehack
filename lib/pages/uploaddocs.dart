import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/patientportal.dart';
import 'package:healthxchangehack/pages/viewdocs.dart';

class UploadDocs extends StatefulWidget {
  UploadDocs();
  @override
  State<StatefulWidget> createState() {
    return _UploadDocsState();
  }
}

class _UploadDocsState extends State<UploadDocs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Documents'),
      ),
      body: SignInForm2(),
    );
  }
}

//Form
class SignInForm2 extends StatefulWidget {
  get model => null;
  @override
  SignInForm2State createState() {
    return SignInForm2State();
  }
}

class SignInForm2State extends State<SignInForm2> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var checkboxValue;
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: '''Enter the Patient's ID:''',
                  labelText: '''Patient's ID''',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: '''Enter the Patient's Date of Birth:''',
                  labelText: 'DOB: MM/DD/YYYY',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Text('Select File'),
              ),
              Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: new ElevatedButton(
                  child: const Text('Upload'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Documents()));
                    }
                  },
                ),
              )
            ]));
  }
}
