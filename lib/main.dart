import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:healthxchangehack/pages/signin.dart';
import 'firebase_options.dart';
import './pages/patient.dart';
import './pages/doctor.dart';
import './pages/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthXchange',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/homepage': (context) => MyHomePage(),
        '/doctor': (context) => DoctorPage(),
        '/patient': (context) => PatientPage(),
        '/signin': ((context) => SignInForm()),
      },
    );
  }
}
