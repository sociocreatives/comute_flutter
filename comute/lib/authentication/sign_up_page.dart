import 'package:comute/home_page/home_page.dart';
import 'package:comute/provider/internet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final RoundedLoadingButtonController googleController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController facebookController =
      RoundedLoadingButtonController();
  final GlobalKey _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("images/comute_logo_hr2.svg",
                height: 50, fit: BoxFit.fill),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("Welcome to Comute, Your One-Stop location Solution",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff002b5b),
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    height: 1.3,
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedLoadingButton(
                  color: Colors.red,
                  elevation: 0,
                  onPressed: () {
                    // handleGoogleSignIn();
                  },
                  controller: googleController,
                  successColor: Colors.red,
                  child: Wrap(
                    children: [
                      const Icon(
                        FontAwesomeIcons.google,
                        size: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text("Sign In With Google",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundedLoadingButton(
                  color: Colors.blue.shade800,
                  elevation: 0,
                  onPressed: () {},
                  controller: facebookController,
                  successColor: Colors.blue.shade800,
                  child: Wrap(
                    children: [
                      const Icon(
                        FontAwesomeIcons.facebook,
                        size: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text("Sign In With Facebook",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
