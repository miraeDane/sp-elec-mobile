
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_news_app/Screens/maintenance_details.dart';
import '../Widgets/class_widgets.dart';
import 'booking_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) { 
    return Stack( 
        children: [ 
        Scaffold(   
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
            toolbarHeight: 210,
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Container(decoration: appBarthemeHome),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      Icon(Icons.search),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Text(
                    'Welcome',
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 100.0,
            left: 20.0,
            right: 20.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Container(
                width: 380,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(70),
                  boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 3))
          ],
                ),
                child: Center(
                  child: Text(
                    'Mabuhay Trip Rent A Car',
                    style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(255, 197, 6, 6),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                      
                  ),
                ),
              ),
            )
          ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 240),
          child: ListView(
            children: const [
              Column(
                children: [
                  MaintenanceItem(),
                  SizedBox(
                    height: 15,
                  ),
                  BookingItems(),
                ],
              ),
            ],
          ),
        ),
       ]  
      
    );
  }
}

