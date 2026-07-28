import 'package:flutter/material.dart';

class PredictionHistoryScreen extends StatelessWidget {
  const PredictionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prediction History"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          historyCard(
            disease: "Brown Spot",
            date: "20 July 2026",
            confidence: "96.45%",
            status: "Disease Detected",
          ),

          historyCard(
            disease: "Leaf Blast",
            date: "16 July 2026",
            confidence: "93.12%",
            status: "Disease Detected",
          ),

          historyCard(
            disease: "Healthy Leaf",
            date: "12 July 2026",
            confidence: "99.02%",
            status: "Healthy",
          ),

        ],
      ),
    );
  }

  Widget historyCard({
    required String disease,
    required String date,
    required String confidence,
    required String status,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green.shade100,
          child: const Icon(Icons.eco, color: Colors.green),
        ),
        title: Text(
          disease,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Date : $date\nConfidence : $confidence\n$status",
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}