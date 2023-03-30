import 'package:flutter/material.dart';
import 'package:psytude/util/constants.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 228, 242, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryPinkColor,
        title: const Text(
          "About Us",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "Welcome to PsyTude, A one key solution of every mental health problems!\n\nWe are dedicated to providing accessible and affordable mental health services to individuals of all ages and backgrounds. Our team is comprised of mental health professionals who are passionate about improving the quality of life for those who struggle with mental health issues.",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    aboutUs1,
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2.2,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    aboutUs2,
                    height: 300,
                    width: MediaQuery.of(context).size.width / 2.2,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Expanded(
                    child: Text(
                      "At PsyTude, we believe that mental health care should be a basic human right, not a privilege reserved for those who can afford it. We understand that seeking help for mental health concerns can be daunting and we strive to make the process as comfortable and stress-free as possible.",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
