import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/home/gender.dart';
import 'package:spotify/length.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Lengths.bgcolor,
        body: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: sw * (24 / Lengths.width),
                ),
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Color.fromARGB(255, 48, 47, 47),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,
                    iconSize: 18,
                  ),
                ),
                SizedBox(
                  width: sw * (82 / Lengths.width),
                ),
                Text(
                  "Create account",
                  style: GoogleFonts.averageSans(
                      color: Color(0xffffffff),
                      fontSize: sw * (16 / Lengths.width),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(
                sw * (31 / Lengths.width),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sh * (20 / Lengths.height),
                  ),
                  Text(
                    "Create a password",
                    style: GoogleFonts.averageSans(
                        color: Color(0xffffffff),
                        fontSize: sw * (20 / Lengths.width),
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 51,
                    width: sw * (365 / Lengths.width),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        filled: true,
                        fillColor: Color(0xff777777),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff777777),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff777777),
                            )),
                      ),
                    ),
                  ),
                  Text(
                    "Use atleast 8 characters.",
                    style: GoogleFonts.averageSans(
                        color: Color(0xffffffff),
                        fontSize: sw * (8 / Lengths.width),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: sh * (62 / Lengths.height),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Gender()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: sh * (42 / Lengths.height),
                        width: sw * (82 / Lengths.width),
                        decoration: BoxDecoration(
                          color: Color(0xff535353),
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Text(
                          "Next",
                          style: GoogleFonts.averageSans(
                              color: Color(0xff000000),
                              fontSize: sw * (15 / Lengths.width),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
