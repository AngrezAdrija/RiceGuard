import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Farmer Profile"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 55,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Demo Farmer",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            profileTile(
              Icons.badge,
              "Farmer ID",
              "RG001",
            ),

            profileTile(
              Icons.location_on,
              "Village",
              "Nadia, West Bengal",
            ),

            profileTile(
              Icons.grass,
              "Crop",
              "Rice",
            ),

            profileTile(
              Icons.landscape,
              "Farm Size",
              "2 Acres",
            ),

            profileTile(
              Icons.phone,
              "Phone",
              "+91 9876543210",
            ),

            profileTile(
              Icons.calendar_month,
              "Member Since",
              "2026",
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.edit,color: Colors.white),
                label: const Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {},
              ),
            ),

          ],
        ),
      ),
    );
  }

  static Widget profileTile(
      IconData icon,
      String title,
      String value,
      ) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.green,
        ),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}