import 'package:flutter/material.dart';

class MedicineDetail extends StatelessWidget {

  // ignore: non_constant_identifier_names
  final String MedicineImagePath;
  // ignore: non_constant_identifier_names
  final String MedicineName;

  // ignore: non_constant_identifier_names
  const MedicineDetail({Key? key, required this.MedicineImagePath, required this.MedicineName}) : super(key: key)

;  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
          children: [
       Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Column(
            children: [
              //medicine pic
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  MedicineImagePath,
                  height: 100,
                ),
              ),
              const SizedBox(height: 5),
              //medicine name

              Text(MedicineName,
              style:TextStyle(
                fontFamily: "NotoSans",
                fontWeight: FontWeight.w500,
                fontSize: 14,  
                color: Colors.grey[600],
          ),
              ),
            ],
          ),
        ),
      ),
          ]));
  }
}