import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:psytude/util/constants.dart';
import 'package:psytude/view/screen/appointment_screen.dart';
import 'package:psytude/view/screen/book_session_screen.dart';
import 'package:psytude/view/widget/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List habitCards = [
    {"title": "Eating Healthy", "image": eat},
    {"title": "Reading  Books", "image": book},
    {"title": "Taking Proper Sleep", "image": sleep},
    {"title": "Thinking Positive", "image": think},
    {"title": "Traveling", "image": bag},
    {"title": "Doing  Meditation", "image": meditation},
    {"title": "Doing  Yoga", "image": yoga},
    {"title": "Exploring World", "image": world}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryPinkColor,
        title: const Text("Psytude"),
      ),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250.h,
                color: const Color.fromRGBO(255, 228, 242, 1),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        introBg,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        intro,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: SizedBox(
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Take a look to improve your mental health",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Mental health is a crucial part of our  overall well-being and should be given the same attention as physical health. It's essential to recognize the  signs of mental health issues and seek help when needed.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 10),
                            MaterialButton(
                              color: primaryPinkColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Read More...",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BookSessionScreen())),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                        color: primaryPinkColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          child: Text(
                            "Book a Session Now!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppointmentScreen())),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                        color: primaryPinkColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          child: Text(
                            "Schedule an Appointment",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    text: 'What you ',
                    style: TextStyle(
                      color: primaryPinkColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "Should you do?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: primaryPinkColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Wrap(
                    children: List.generate(
                      habitCards.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 140,
                          width: 80,
                          decoration: BoxDecoration(
                            color: primaryLightPinkColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  habitCards[index]["title"],
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Spacer(),
                                Image.asset(
                                  habitCards[index]["image"],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
