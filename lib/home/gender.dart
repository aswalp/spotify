import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/length.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

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
                    "What's your gender?",
                    style: GoogleFonts.averageSans(
                        color: Color(0xffffffff),
                        fontSize: sw * (20 / Lengths.width),
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      height: 51,
                      width: sw * (365 / Lengths.width),
                      child: DropDownTextField(
                        textStyle: TextStyle(color: Colors.white),
                        dropDownList: const [
                          DropDownValueModel(name: "Male", value: "Male"),
                          DropDownValueModel(name: "FeMale", value: "FeMale"),
                          DropDownValueModel(name: "Others", value: "Others")
                        ],
                        textFieldDecoration: InputDecoration(
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
                      )),
                  SizedBox(
                    height: sh * (62 / Lengths.height),
                  ),
                  Center(
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
