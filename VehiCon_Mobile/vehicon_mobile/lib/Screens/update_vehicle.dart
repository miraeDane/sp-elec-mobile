import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_news_app/Widgets/class_widgets.dart';

class UpdateVehicle extends StatefulWidget {
  final Map<String, dynamic> vehicle;
  final String vehicleID;
  const UpdateVehicle(
      {required this.vehicle, required this.vehicleID, Key? key})
      : super(key: key);

  @override
  State<UpdateVehicle> createState() => _UpdateVehicleState();
}

class _UpdateVehicleState extends State<UpdateVehicle> {
  // late Map<dynamic, dynamic> _vehicleData;
  // final _vehicleNameController = TextEditingController();
  // final _plateNumController = TextEditingController();
  // final _odoInController = TextEditingController();
  // final _odoOutController = TextEditingController();
  // final _dieselRemarksController = TextEditingController();
  late TextEditingController _vehicleNameController = TextEditingController();
  late TextEditingController _plateNumController = TextEditingController();
  late TextEditingController _odoInController = TextEditingController();
  late TextEditingController _odoOutController = TextEditingController();
  late TextEditingController _dieselRemarksController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    if (widget.vehicle != null) {
      _vehicleNameController =
          TextEditingController(text: widget.vehicle['vehicleName']);
      _plateNumController =
          TextEditingController(text: widget.vehicle['plateNumber']);
      _odoInController =
          TextEditingController(text: widget.vehicle['odomerterIn'].toString());
      _odoOutController = TextEditingController(
          text: widget.vehicle['odomerterOut'].toString());
      _dieselRemarksController =
          TextEditingController(text: widget.vehicle['dieselRemarks']);
    } else {
      Navigator.pop(context);
    }

    dbRef = FirebaseDatabase.instance.ref().child('OdometerDetails');

    getOdodetails();
  }

  getOdodetails() async {
    DataSnapshot snapshot =
        await dbRef.child((widget.vehicle).toString()).get();

    Map vehicle = snapshot.value as Map;

    _vehicleNameController.text = vehicle['vehicleName'];
    _plateNumController.text = vehicle['plateNumber'];
    _odoInController.text = vehicle['odomerterIn'].toString();
    _odoOutController.text = vehicle['odometerOut'].toString();
    _dieselRemarksController.text = vehicle['dieselRemarks'];
  }

  @override
  void dispose() {
    _vehicleNameController.dispose();
    _plateNumController.dispose();
    _odoInController.dispose();
    _odoOutController.dispose();
    _dieselRemarksController.dispose();

    super.dispose();
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Update Odometer',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Color(0xffDE6113),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _vehicleNameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 195, 156, 141),
                        width: 1.0,
                      )),
                  labelText: "Vehicle Name:",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 100, 38),
                        width: 1.0,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _plateNumController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 195, 156, 141),
                        width: 1.0,
                      )),
                  labelText: "Plate Number",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 100, 38),
                        width: 1.0,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _odoInController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 195, 156, 141),
                        width: 1.0,
                      )),
                  labelText: "Odometer In",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 100, 38),
                        width: 1.0,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _odoOutController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 195, 156, 141),
                        width: 1.0,
                      )),
                  labelText: "Odomoter Out",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 100, 38),
                        width: 1.0,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _dieselRemarksController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 195, 156, 141),
                        width: 1.0,
                      )),
                  labelText: "Diesel Remarks",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 100, 38),
                        width: 1.0,
                      )),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Map<String, dynamic> vehicles = {
                    'vehicleName': _vehicleNameController.text,
                    'plateNumber': _plateNumController.text,
                    'odomerterIn': _odoInController.text,
                    'odometerOut': _odoOutController.text,
                    'dieselRemarks': _dieselRemarksController.text,
                  };
                  // dbRef.child((widget.vehicleData).toString()).update(vehicles)
                  // .then((value) => {
                  //   Navigator.pop(context),
                  // });

                  DocumentReference documentReference = FirebaseFirestore
                      .instance
                      .collection('OdometerDetails')
                      .doc(widget.vehicleID);

                  documentReference
                      .update(vehicles)
                      .whenComplete(() => print("updated"));
                },
                child: Text(
                  'Update',
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  backgroundColor: const Color.fromARGB(255, 250, 150, 43),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ))
          ],
        ),
      ),
    );
  }
}
