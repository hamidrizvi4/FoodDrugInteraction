// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'medicine_data.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  //Handle button tap
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
//app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'There',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      'lib/images/1.png',
                      fit: BoxFit.fitHeight,
                      height: 32,
                    ),
                  ),
                  //pp
                ],
              ),
            ),
//photo card

            SizedBox(height: 25),
//search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SearchPage();
                    }));
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Which Medicine are you looking for',
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
//horizontal list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Medicines',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Paracetamol',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Nexium',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Lipitor',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Ibuprofen',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'perindopril.',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Epogen',
                ),
                MedicineDetail(
                  MedicineImagePath: 'lib/images/cap.png',
                  MedicineName: 'Actos',
                ),
              ],
            )),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
