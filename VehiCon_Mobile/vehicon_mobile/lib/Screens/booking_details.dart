import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_odometer.dart';

class BookingItems extends StatelessWidget {
  const BookingItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            width: 350,
            height: 300,
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
            child: Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      'Upcoming Bookings',
                      style: GoogleFonts.montserrat(
                          color: const Color.fromARGB(255, 197, 6, 6),
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
                          color: const Color.fromARGB(255, 197, 6, 6),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationColor: const Color.fromARGB(255, 197, 6, 6),
                          decorationThickness: 2),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.only(left: 200, top: 70),
          child: Container(
              height: 80,
              width: 320,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    bottomLeft: Radius.circular(70)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xfffff5e7),
                    Color.fromARGB(255, 239, 167, 122)
                  ],
                ),
              )),
        )),
        GestureDetector(
          
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {    
                return AddOdometer();
              }),
            );
          },
          child: Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 150, top: 30),
              child: Image.asset(
                'assets/grandia.png',
                width: 180,
                height: 180,
              ),
            ),
          ),
        ),
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70, left: 40),
              child: Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
          ],
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 70),
            child: Container(
                width: 100,
                height: 20,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEDD2),
                  borderRadius: BorderRadius.circular(75),
                ),
                child: Center(
                  child: Text(
                    'Confirmed Trip',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        decoration: TextDecoration.none),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 10),
            child: Text(
              'Round South',
              softWrap: true,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              'Atty. Bliss Samonte',
              softWrap: true,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              '15Oct, 2023 | 8AM',
              softWrap: true,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          )
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 200, top: 190),
          child: Container(
              height: 80,
              width: 320,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    bottomLeft: Radius.circular(70)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xfffff5e7),
                    Color.fromARGB(255, 239, 167, 122)
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150, top: 130),
          child: Image.asset(
            'assets/vios.png',
            width: 180,
            height: 180,
          ),
        ),
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 170, left: 40),
              child: Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.circle_outlined,
                size: 5,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 40),
              child: Icon(
                Icons.location_on_outlined,
                size: 15,
                color: Color.fromARGB(255, 239, 167, 122),
              ),
            ),
          ],
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 170),
            child: Container(
                width: 100,
                height: 20,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEDD2),
                  borderRadius: BorderRadius.circular(75),
                ),
                child: Center(
                  child: Text(
                    'Confirmed Trip',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        decoration: TextDecoration.none),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 10),
            child: Text(
              'Round South',
              softWrap: true,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              'Atty. Bliss Samonte',
              softWrap: true,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              '15Oct, 2023 | 8AM',
              softWrap: true,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 0,
                  decoration: TextDecoration.none),
            ),
          )
        ])
      ],
    );
  }
}
