
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MaintenanceItem extends StatelessWidget {
  const MaintenanceItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 3))
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'Upcoming Maintenance',
                  style: GoogleFonts.montserrat(
                      color:
                          const Color.fromARGB(255, 197, 6, 6),
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'View All',
                  style: GoogleFonts.montserrat(
                      color:
                          const Color.fromARGB(255, 197, 6, 6),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      decorationStyle:
                          TextDecorationStyle.solid,
                      decorationColor:
                          const Color.fromARGB(255, 197, 6, 6),
                      decorationThickness: 2),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 238, 111, 111),
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffde6113),
                        Colors.white
                      ]),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 160),
                          child: Image.asset(
                            'assets/grandia.png',
                            width: 180,
                            height: 150,
                          ),
                        ),
                        const Positioned(
                            top: 10.0,
                            left: 20.0,
                            child: Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 15,
                            )),
                        Positioned(
                            top: 13.0,
                            left: 40.0,
                            right: 20.0,
                            child: Text(
                              '18Oct, 2023 | 8AM',
                              style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration:
                                      TextDecoration.none),
                            )),
                        Positioned(
                            top: 40.0,
                            left: 15.0,
                            right: 20.0,
                            child: Text(
                              'Toyota Hiace 2.8                      GL Grandia MT',
                              softWrap: true,
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration:
                                      TextDecoration.none),
                            )),
                        Positioned(
                            top: 90.0,
                            left: 15.0,
                            right: 20.0,
                            child: Text(
                              'Service: Change Oil',
                              softWrap: true,
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  decoration:
                                      TextDecoration.none),
                            )),
                        Positioned(
                            top: 120.0,
                            left: 20,
                            right: 20.0,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 180, top: 10),
                              child: Container(
                                width: 15,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.circular(
                                            20)),
                                child: Center(
                                  child: Text(
                                    'Maintenance',
                                    softWrap: true,
                                    style:
                                        GoogleFonts.montserrat(
                                            fontSize: 14,
                                            color: const Color
                                                .fromARGB(
                                                255, 197, 6, 6),
                                            fontWeight:
                                                FontWeight.bold,
                                            decoration:
                                                TextDecoration
                                                    .none),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
