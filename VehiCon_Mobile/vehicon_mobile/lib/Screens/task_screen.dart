import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_news_app/Screens/history_logs.dart';
import 'package:travel_news_app/Screens/maintenance_screen.dart';
import '../Widgets/class_widgets.dart';
import 'confirmed_trip.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Container(decoration: appBartheme),
      ),
      body: ListView(children: [
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            'Tasks',
            style: GoogleFonts.montserrat(
                color: const Color(0xFFDE4313),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const ConfirmedTrip();
                  }),
                );
              },
              child: Container(
                width: 270,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color(0xffde6113)),
                child: Center(
                  child: Text(
                    'Trip Details',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const MaintenanceScreen();
                  }),
                );
              },
              child: Container(
                width: 270,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color(0xffde6113)),
                child: Center(
                  child: Text(
                    'Maintenance',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const HistoryScreen();
                  }),
                );
              },
              child: Container(
                width: 270,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: const Color(0xffde6113)),
                child: Center(
                  child: Text(
                    'Completed Service',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 0,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
