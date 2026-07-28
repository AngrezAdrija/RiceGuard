import 'package:flutter/material.dart';
import 'image_guide_screen.dart';
import 'prediction_screen.dart';
import 'history_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildCard(
      BuildContext context,
      IconData icon,
      String title,
      String subtitle,
      VoidCallback onTap) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [

              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.green.shade100,
                child: Icon(
                  icon,
                  color: Colors.green,
                  size: 30,
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    )

                  ],
                ),
              ),

              const Icon(Icons.arrow_forward_ios)

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.green.shade50,

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("RiceGuard"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.all(18),

          child: Column(

            children: [

              const SizedBox(height: 20),

              CircleAvatar(
                radius: 55,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.agriculture,
                  color: Colors.white,
                  size: 60,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Welcome Farmer",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "AI Powered Crop Health & Yield Prediction",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              buildCard(
                context,
                Icons.camera_alt,
                "Capture Plant Image",
                "Take a live photo of a rice leaf",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageGuideScreen(
                        useCamera: true,
                      ),
                    ),
                  );
                },
              ),

              buildCard(
                context,
                Icons.photo_library,
                "Upload Plant Image",
                "Choose a rice leaf image from your gallery",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageGuideScreen(
                        useCamera: false,
                      ),
                    ),
                  );
                },
              ),

              buildCard(
                context,
                Icons.analytics,
                "Predict Yield",
                "View disease analysis and yield prediction",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PredictionScreen()),
                  );  
                },
              ),

              buildCard(
                context,
                Icons.history,
                "Prediction History",
                "View previous analysis reports",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PredictionHistoryScreen(),
                    ),
                  );
                },
              ),

              buildCard(
                context,
                Icons.person,
                "Farmer Profile",
                "View your profile",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}