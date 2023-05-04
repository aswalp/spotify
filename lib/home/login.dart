import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/home/email.dart';
import 'package:spotify/length.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Lengths.bgcolor,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/IMG_2756 1.png",
                height: sh * (465 / Lengths.height),
                width: sw,
              ),
              // Positioned(
              //   top: 338,
              //   left: 154,
              //   child: SizedBox(
              //     width: 52,
              //     height: 52,
              //     child: Image.asset(
              //       'assets/images/Vector@3x.png',
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // )
            ],
          ),
          Text(
            "Millions of Songs.",
            style: GoogleFonts.averageSans(
                color: Colors.white,
                fontSize: sw * (28 / Lengths.width),
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Free on Spotify.",
            style: GoogleFonts.averageSans(
                color: Colors.white,
                fontSize: sw * (28 / Lengths.width),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: sh * (22 / Lengths.height),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Email()));
            },
            child: Container(
              alignment: Alignment.center,
              height: sh * (49 / Lengths.height),
              width: sw * (337 / Lengths.width),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Color(0xff1ED760),
              ),
              child: Text(
                "Sign up free",
                style: GoogleFonts.averageSans(
                    color: Color(0xff000000),
                    fontSize: sw * (16 / Lengths.width),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: sh * (12 / Lengths.height),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * (17 / Lengths.width)),
            height: sh * (49 / Lengths.height),
            width: sw * (337 / Lengths.width),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                // color: Color(0xff1ED760),
                border: Border.all(color: Colors.white, width: 0.6)),
            child: Row(
              children: [
                SizedBox(
                  height: sh * (18 / Lengths.height),
                  width: sw * (18 / Lengths.width),
                  child: Image.asset(
                    "assets/images/go.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: sw * (49 / Lengths.width),
                ),
                Text(
                  "Continue with Google",
                  style: GoogleFonts.averageSans(
                      color: Color(0xffffffff),
                      fontSize: sw * (16 / Lengths.width),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: sh * (12 / Lengths.height),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * (17 / Lengths.width)),
            height: sh * (49 / Lengths.height),
            width: sw * (337 / Lengths.width),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                // color: Color(0xff1ED760),
                border: Border.all(color: Colors.white, width: 0.6)),
            child: Row(
              children: [
                SizedBox(
                  height: sh * (18 / Lengths.height),
                  width: sw * (18 / Lengths.width),
                  child: Image.asset(
                    "assets/images/fa.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: sw * (49 / Lengths.width),
                ),
                Text(
                  "Continue with Facebook",
                  style: GoogleFonts.averageSans(
                      color: Color(0xffffffff),
                      fontSize: sw * (16 / Lengths.width),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: sh * (12 / Lengths.height),
          ),
          Container(
            padding: EdgeInsets.only(left: sw * (17 / Lengths.width)),
            // alignment: Alignment.center,
            height: sh * (49 / Lengths.height),
            width: sw * (337 / Lengths.width),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                // color: Color(0xff1ED760),
                border: Border.all(color: Colors.white, width: 0.6)),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.values[3],
              children: [
                Icon(
                  Icons.apple,
                  size: 18,
                  color: Colors.white,
                ),
                SizedBox(
                  width: sw * (49 / Lengths.width),
                ),
                Text(
                  "Continue with Apple",
                  style: GoogleFonts.averageSans(
                      color: Color(0xffffffff),
                      fontSize: sw * (16 / Lengths.width),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: sh * (12 / Lengths.height),
          ),
          Text(
            "Log in",
            style: GoogleFonts.averageSans(
                color: Color(0xffffffff),
                fontSize: sw * (17 / Lengths.width),
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
