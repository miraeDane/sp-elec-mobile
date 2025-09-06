import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_news_app/Screens/add_odometer.dart';
import 'package:travel_news_app/Screens/update_vehicle.dart';

import '../Widgets/class_widgets.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 550, right: 250),
        child: FloatingActionButton.extended(
          backgroundColor: const Color.fromARGB(255, 250, 150, 43),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddOdometer(),
              ),
            );
          },
          label: Text(
            'Add Odometer',
            style: GoogleFonts.montserrat(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('OdometerDetails')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return Center(child: Text('No data available'));
            } else {
              // final vehicles = snapshot.data?.docs.reversed.toList();
              // final vehicleWidgets = vehicles?.map((vehicle) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> vehicle =
                      snapshot.data!.docs[index].data() as Map<String, dynamic>;
                  var vehicleID = snapshot.data!.docs[index].id;
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    vehicle['vehicleName'],
                                    style: GoogleFonts.montserrat(
                                      color: const Color(0xffDE6113),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    vehicle['plateNumber'],
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 12,
                                        decoration: TextDecoration.none),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    vehicle['odomerterIn'].toString(),
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 12,
                                        decoration: TextDecoration.none),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    vehicle['odometerOut'].toString(),
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 12,
                                        decoration: TextDecoration.none),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    vehicle['dieselRemarks'],
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 12,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => UpdateVehicle(
                                                vehicle: vehicle,
                                                vehicleID: vehicleID)),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      size: 20,
                                    ),
                                    label: const Text(
                                      'Update',
                                      style: TextStyle(fontSize: 9),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 250, 150, 43),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FirebaseFirestore.instance
                                          .collection('OdometerDetails')
                                          .doc(
                                              vehicleID) 
                                          .delete()
                                          .then((_) {
                                        print('Document successfully deleted.');
                                       
                                      }).catchError((error) {
                                        print(
                                            'Error deleting document: $error');
                                      
                                      });
                                    },
                                    icon: const Icon(Icons.delete, size: 20),
                                    label: const Text(
                                      'Delete',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 241, 52, 14),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              );
            }
          },
        ),
      ),
    );
  }
}
