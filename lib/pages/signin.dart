import 'package:flutter/material.dart';
import 'package:healthxchangehack/pages/patientportal.dart';

class SignInForm extends StatefulWidget {
  SignInForm();
  @override
  State<StatefulWidget> createState() {
    return _SignInFormState();
  }
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
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
                  hintText: 'Enter your username',
                  labelText: 'Username',
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
                  hintText: 'Enter your password',
                  labelText: 'Password',
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
                  child: const Text('Sign In'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => PatientPortal()));
                    }
                  },
                ),
              )
            ]));
  }
}
