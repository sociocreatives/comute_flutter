import 'package:comute/provider/internet_provider.dart';
import 'package:comute/provider/sign_in_provider.dart';
import 'package:comute/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => SignInProvider())),
        ChangeNotifierProvider(create: ((context) => InternetProvider())),
      ],
      child: MaterialApp(
        title: 'Comute',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const MySpalshScreen(),
      ),
    );
  }
}
