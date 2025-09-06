import 'package:flutter/material.dart';
import 'package:travel_news_app/Screens/singup_screen.dart';

import '../Widgets/class_widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(decoration: appBartheme),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage('assets/VehiCON_Logo.png')),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Container(
                      width: 137.41,
                      height: 141,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEDD2),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: const SizedBox(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.black,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Register as supplier',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          width: 137.41,
                          height: 141,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFEDD2),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: const SizedBox(
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Register as      driver',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          )),
        ));
  }
}
