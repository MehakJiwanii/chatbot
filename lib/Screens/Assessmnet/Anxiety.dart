import 'package:chatbot/Screens/Assessmnet/Anxietybot.dart';
import 'package:chatbot/Screens/Assessmnet/Depression.dart';
import 'package:chatbot/Screens/ChatScreen.dart';

import 'package:chatbot/Screens/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Anxiety extends StatelessWidget {
  const Anxiety({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBar(
                          displayName: '',
                          email: '',
                        ),
                      ));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.black,
                ),
              )),
        ),
        Animate(
          effects: [
            SlideEffect(
              duration: Duration(seconds: 2),
            )
          ],
          child: Container(
              child: SvgPicture.asset(
            'Assets/Images/Anxiety.svg',
            height: 400,
          )),
        ),
        Container(
          child: Text(
            'Do You Have Anxiety?',
            style: GoogleFonts.dmSans(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Animate(
          effects: [
            SlideEffect(
              duration: Duration(seconds: 2),
              begin: Offset(2, -4),
            )
          ],
          child: Container(
              width: 259.82,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF353A48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Anxietybot()
                      ));
                },
                child: Text(
                  'Yes',
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              )),
        ),
        SizedBox(
          height: 25,
        ),
        Animate(
          effects: [
            SlideEffect(
              duration: Duration(seconds: 2),
              begin: Offset(2, -4),
            )
          ],
          child: Container(
              width: 259.82,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Depression()));
                },
                child: Text(
                  'No',
                  style: GoogleFonts.dmSans(
                    color: Color(0xFF353A48),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
        ),
      ],
    ));
  }
}
