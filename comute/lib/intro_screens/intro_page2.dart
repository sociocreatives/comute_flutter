import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("images/alerts.svg", height: 250, fit: BoxFit.fill),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text("Get Accurate Alerts on Various Activities on your Way",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color(0xff002b5b),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                )),
          ),
        ],
      ),
    );
  }
}
