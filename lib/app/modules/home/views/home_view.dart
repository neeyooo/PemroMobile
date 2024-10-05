import 'package:belajar/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  // Misalnya jumlah langkah saat ini adalah 5,000
  final int currentSteps = 3000;
  final int goalSteps = 10000;

  @override
  Widget build(BuildContext context) {
    // Hitung persentase progress dari currentSteps dan goalSteps
    double progress = currentSteps / goalSteps;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.teal, // Mengatur warna AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward), // Ikon tombol navigasi
            onPressed: () {
              // Navigasi ke halaman berikutnya
              Get.toNamed(
                  Routes.PROFILE); // Ganti '/nextPage' dengan route yang sesuai
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Rectangle Box for Welcome Message
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                'Selamat datang, Syarif Hermawan!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0), // Spacing between the boxes

            // Rectangle Box for Workout Tracker Information
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Workout Tracker',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Hari ini anda berjalan sebanyak $currentSteps steps.',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Progress bar for step tracking
                  LinearProgressIndicator(
                    value: progress, // Persentase progress (0.0 - 1.0)
                    backgroundColor: Colors.grey[300],
                    color: Colors.blue,
                    minHeight: 10.0,
                  ),
                  SizedBox(height: 10.0),

                  // Text showing the current steps / goal steps (5000/10000)
                  Text(
                    '$currentSteps/$goalSteps',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Display goal step information
                  Text(
                    'Goals step $goalSteps',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
