import 'package:farm/rout.dart';
import 'package:farm/core/services/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBUeEH4GqvYwvbuvMNQKUesBekCsv-9pk0",
        appId: "1:751153195601:android:f370d23c536a3bcc46a670",
        messagingSenderId: "751153195601",
        projectId: "farm-ad194.appspot.com"),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      getPages: routes,
    );
  }
}
