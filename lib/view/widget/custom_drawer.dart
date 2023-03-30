import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psytude/util/constants.dart';
import 'package:psytude/view/screen/about_us_screen.dart';
import 'package:psytude/view/screen/contact_us_screen.dart';
import 'package:psytude/view/screen/home_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryLightPinkColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.home,
                      color: primaryPinkColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUsScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.info,
                      color: primaryPinkColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    const Icon(
                      Icons.podcasts,
                      color: primaryPinkColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Blogs",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUsScreen()));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.contact_page,
                      color: primaryPinkColor,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
