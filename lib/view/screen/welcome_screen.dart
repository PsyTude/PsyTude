import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psytude/util/constants.dart';
import 'package:psytude/view/screen/login_screen.dart';
import 'package:psytude/view/screen/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List welcomeImages = [
    "assets/images/welcome1.png",
    "assets/images/welcome1.png",
    "assets/images/welcome1.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            CarouselSlider(
              items: welcomeImages
                  .map(
                    (e) => Image.asset(
                      e,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Learn And Improve",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 10,
              ),
              child: Text(
                "Never underestimate the power of dreams, never forget the importance of hope.",
                style: TextStyle(
                  color: Color.fromRGBO(146, 146, 146, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: index == 2
                      ? Container(
                          width: 40.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF8C71D1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        )
                      : Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF34BA4),
                            shape: BoxShape.circle,
                          ),
                        ),
                );
              }),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: primaryPinkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                MaterialButton(
                  color: primaryPinkColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
