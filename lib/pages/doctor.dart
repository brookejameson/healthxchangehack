import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/doctorportal.dart';

class DoctorPage extends StatefulWidget {
  DoctorPage();
  @override
  State<StatefulWidget> createState() {
    return _DoctorPageState();
  }
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor'),
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
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: '''Enter Patient's ID''',
                  labelText: 'Patient ID',
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
                  icon: const Icon(Icons.calendar_today),
                  hintText: '''Enter's Patient Date of Birth''',
                  labelText: '''Patient's DOB: MM/DD/YYYY''',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: new ElevatedButton(
                  child: const Text('Search'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => DoctorPortal()));
                    }
                  },
                ),
              )
            ]));
  }
}
