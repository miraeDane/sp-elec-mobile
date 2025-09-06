import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/class_widgets.dart';

class AddOdometer extends StatefulWidget {
  const AddOdometer({super.key});

  @override
  State<AddOdometer> createState() => _AddOdometerState();
}

class _AddOdometerState extends State<AddOdometer> {

   final _vehicleNameController = TextEditingController();
  final _plateNumController = TextEditingController();
  final _odoInController = TextEditingController();
  final _odoOutController = TextEditingController();
  final _dieselRemarksController = TextEditingController();

String vehicleName='', plateNumber='', odometerIn='', odometerOut='', dieselRemarks='';


getCarName(carName) {
  vehicleName = carName;
}
getPlateNum(plateNum) {
  plateNumber = plateNum;
}
getOdoIn(odoin) {
  odometerIn = odoin;
}
getOdoOut(odoout) {
  odometerOut = odoout;
}
getFuel(diesel) {
  dieselRemarks = diesel;
}

createData(){
  print("created");

  

  DocumentReference documentReference =
    FirebaseFirestore.instance.collection("OdometerDetails").doc(vehicleName);

    Map<String, dynamic> vehicleOdo = {
      "vehicleName": vehicleName,
      "plateNumber": plateNumber,
      "odomerterIn": int.parse(odometerIn),
      "odometerOut" : int.parse(odometerOut),
      "dieselRemarks": dieselRemarks
    };

    documentReference.set(vehicleOdo).whenComplete(() => print("$vehicleOdo, created"));
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
          children: <Widget> [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Add Odometer',
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
                      )
                  ),
                  labelText: "Vehicle Name",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 100, 38),
                      width: 1.0,
                      )
                  ),  
                ),
                onChanged: (String carName){
                  getCarName(carName);
                }
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
                      color:  Color.fromARGB(255, 195, 156, 141),
                      width: 1.0,
                      )
                  ),
                  labelText: "Plate Number",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 100, 38),
                      width: 1.0,
                      )
                  ),  
                ),
                onChanged: (String plateNum){
                  getPlateNum(plateNum);
                }
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
                      color:  Color.fromARGB(255, 195, 156, 141),
                      width: 1.0,
                      )
                  ),
                  labelText: "Odometer in",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 100, 38),
                      width: 1.0,
                      )
                  ),  
                ),
                onChanged: (String odoIn){
                  getOdoIn(odoIn);
                }
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
                      color:  Color.fromARGB(255, 195, 156, 141),
                      width: 1.0,
                      )
                  ),
                  labelText: "Odometer out",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 100, 38),
                      width: 1.0,
                      )
                  ),  
                ),
                onChanged: (String odoOut){
                  getOdoOut(odoOut);
                }
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
                      color:  Color.fromARGB(255, 195, 156, 141),
                      width: 1.0,
                      )
                  ),
                  labelText: "Diesel Remarks",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 100, 38),
                      width: 1.0,
                      )
                  ),  
                ),
                onChanged: (String fuel){
                  getFuel(fuel); 
                }
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text(
                  'Create',
                  style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  backgroundColor: const Color.fromARGB(255, 250, 150, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
      
                ),
                onPressed: () {
                  createData();
                },
              ),
            ),
            
      
          ]
        ),
      ),
    );
  }
}