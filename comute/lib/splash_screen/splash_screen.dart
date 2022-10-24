import 'dart:async';
import 'package:comute/Onboarding/onboarding_screen.dart';
import 'package:comute/authentication/sign_up_page.dart';
import 'package:comute/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../provider/sign_in_provider.dart';

class MySpalshScreen extends StatefulWidget {
  const MySpalshScreen({super.key});

  @override
  State<MySpalshScreen> createState() => _MySpalshScreenState();
}

class _MySpalshScreenState extends State<MySpalshScreen> {
  @override
  void initState() {
    final sp = context.read<SignInProvider>();
    super.initState();
    Timer(const Duration(seconds: 5), () {
      sp.isSignedIn == false
          ? Navigator.push(context,
              MaterialPageRoute(builder: (c) => const OnBoardingScreen()))
          : Navigator.push(
              context, MaterialPageRoute(builder: (c) => const HomePage()));
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff002b5b),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("images/comute_logo.svg",
              height: 100, fit: BoxFit.fill)
        ],
      ),
    );
  }
}
