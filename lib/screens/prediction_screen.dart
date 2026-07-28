import 'package:flutter/material.dart';

class PredictionScreen extends StatelessWidget {
  const PredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prediction Report"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [

            const Icon(
              Icons.eco,
              size: 80,
              color: Colors.green,
            ),

            const SizedBox(height: 10),

            const Text(
              "RiceGuard",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "AI Analysis Report",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text(
                      "Disease Detection",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.bug_report,
                        color: Colors.red,
                      ),
                      title: Text("Brown Spot"),
                      subtitle: Text("Disease Detected"),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Confidence : 96.45 %",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              color: Colors.orange.shade50,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: const [

                    Text(
                      "Yield Estimation",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Divider(),

                    SizedBox(height: 10),

                    ListTile(
                      leading: Icon(Icons.grass),
                      title: Text("Expected Yield"),
                      trailing: Text("--.-- t/ha"),
                    ),

                    ListTile(
                      leading: Icon(Icons.trending_down),
                      title: Text("Yield Loss"),
                      trailing: Text("-- %"),
                    ),

                    ListTile(
                      leading: Icon(Icons.autorenew),
                      title: Text("Recovery Potential"),
                      trailing: Text("-- %"),
                    ),

                    SizedBox(height: 15),

                    Icon(
                      Icons.construction,
                      size: 45,
                      color: Colors.orange,
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Waiting for Yield Estimation Model",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Disease detection is available.\n\nYield estimation will be displayed here after the prediction model is integrated.",
                      textAlign: TextAlign.center,
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text(
                      "Recommendation",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Divider(),

                    ListTile(
                      leading: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      title: Text("Apply fungicide."),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      title: Text("Avoid excess irrigation."),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      title: Text("Monitor the crop for the next 5 days."),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [

                    Text(
                      "Analysis Date",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Analysis Time",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      TimeOfDay.now().format(context),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.save,color: Colors.white),
                label: const Text(
                  "Save Report",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {},
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back to Home"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}