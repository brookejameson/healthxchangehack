// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:healthxchangehack/pages/signin.dart';
// import 'dart:async';
// import 'package:flutter/services.dart';
// import 'package:stacked_services/stacked_services.dart';

// class Wrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Authenticate();
//   }
// }

// class Authenticate extends StatefulWidget {
//   @override
//   _AuthenticateState createState() => _AuthenticateState();
// }

// class _AuthenticateState extends State<Authenticate> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//     );
//   }
// }



// class AuthService {
//   final DialogService _dialogService = locator<DialogService>();
//   final DatabaseService _databaseService = locator<DatabaseService>();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   User user;

//   Stream<User> get firebaseUser {
//     print('Start listening to firebase user');
//     return _auth.authStateChanges();
//   }

//   Future<void> signIn(String email, String password) async {
//     await _auth.signInWithEmailAndPassword(email: email, password: password);
//   }

//   Future<User?> signUp(String email, String passcode) async {
//     try {
//       UserCredential result = await _auth.createUserWithEmailAndPassword(
//           email: email, password: passcode);
//       User firebaseUser = result.user;
//       await firebaseUser.sendEmailVerification();
//       return firebaseUser;
//     } on PlatformException catch (error) {
//       await _dialogService.showDialog(
//           title: 'เกิดข้อผิดพลาด',
//           description: error.message,
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     } catch (e) {
//       await _dialogService.showDialog(
//           title: 'ข้อผิดพลาดที่ไม่รู้จัก',
//           description: e.toString(),
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     }
//   }

//   Future<void> sendEmailVerification() async {
//     try {
//       await user.sendEmailVerification();
//       await _dialogService.showDialog(
//           title: 'ส่งลิงค์แล้ว',
//           description: 'โปรดตรวจสอบอีเมลของคุณ',
//           dialogPlatform: DialogPlatform.Material);
//       return;
//     } on PlatformException catch (error) {
//       await _dialogService.showDialog(
//           title: 'เกิดข้อผิดพลาด',
//           description: error.message,
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     } catch (e) {
//       await _dialogService.showDialog(
//           title: 'ข้อผิดพลาดที่ไม่รู้จัก',
//           description: e.toString(),
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     }
//   }

//   Future<void> resetPassword(String email) async {
//     try {
//       await _auth.sendPasswordResetEmail(email: email);
//       await _dialogService.showDialog(
//           title: 'ส่งลิงค์รีเซ็ตแล้ว',
//           description: 'โปรดตรวจสอบอีเมลของคุณ',
//           dialogPlatform: DialogPlatform.Material);
//       return;
//     } on PlatformException catch (_) {
//       await _dialogService.showDialog(
//           title: 'เกิดข้อผิดพลาด',
//           description: 'กรุณากรอกอีเมลของคุณ',
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     } catch (e) {
//       await _dialogService.showDialog(
//           title: 'ข้อผิดพลาดที่ไม่รู้จัก',
//           description: e.toString(),
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     }
//   }

//   Future signOut() async {
//     try {
//       await _auth.signOut();
//       _databaseService.reset();
//       return;
//     } on PlatformException catch (error) {
//       await _dialogService.showDialog(
//           title: 'Error',
//           description: error.message,
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     } catch (e) {
//       await _dialogService.showDialog(
//           title: 'ข้อผิดพลาดที่ไม่รู้จัก',
//           description: e.toString(),
//           dialogPlatform: DialogPlatform.Material);
//       return null;
//     }
//   }
// }
