import 'package:ecommerce/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

/// ------ Entry point of Flutter App ------
Future<void> main() async {

  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Init Payment Methods
  // Todo: Await Native Splash
  // Todo: Initialize Firebase

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
      (FirebaseApp value) => Get.put(AutenticationRepository()),
  );
  // Todo: Initialize Authentication

  // Load all the Material Design / Themes / Localizations / Bindings
  runApp(const App());
}

