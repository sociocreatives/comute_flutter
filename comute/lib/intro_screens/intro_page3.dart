import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("images/bergains.svg",
              height: 250, fit: BoxFit.fill),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
                "Discover Great Deals within your Travel Routes and Destinations",
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
