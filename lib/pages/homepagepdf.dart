// import 'dart:io';
// import 'dart:js';
// import 'dart:math';
// import 'package:flutter_document_picker/flutter_document_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("FlutterFire PDF"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.purple,
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//         onPressed: () async {
//           final path = await FlutterDocumentPicker.openDocument();
//           print(path);
//           File file = File(path);
//           firebase_storage.UploadTask task = await uploadFile(file);
//           //Functionality for Button to pick pdf will go here.
//         },
//       ),
//     );
//   }
// }

// Future<firebase_storage.UploadTask?> uploadFile(File file) async {
//   if (file == null) {
//     Scaffold.of(context)
//         .showSnackBar(SnackBar(content: Text("Unable to Upload")));
//     return null;
//   }

//   firebase_storage.UploadTask uploadTask;

//   // Create a Reference to the file
//   firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
//       .ref()
//       .child('playground')
//       .child('/some-file.pdf');

//   final metadata = firebase_storage.SettableMetadata(
//       contentType: 'file/pdf', customMetadata: {'picked-file-path': file.path});
//   print("Uploading..!");

//   uploadTask = ref.putData(await file.readAsBytes(), metadata);

//   print("done..!");
//   return Future.value(uploadTask);
// }
