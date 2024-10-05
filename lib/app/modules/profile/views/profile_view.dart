import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.teal, // Mengatur warna AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Center secara vertikal
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center secara horizontal
          children: [
            SizedBox(height: 20.0), // Spacing antara AppBar dan kotak profil

            // Kotak Profil
            Container(
              height: 300,
              width: 300, // Anda bisa mengatur lebar sesuai kebutuhan
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Gambar Profil
                  CircleAvatar(
                    radius: 70, // Mengatur radius untuk gambar bulat
                    backgroundImage: AssetImage(
                        'lib/app/data/assets/syarif.png'), // Ganti dengan asset gambar profil
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                      height: 20.0), // Spacing antara gambar profil dan nama
                  Text(
                    'Syarif Hermawan',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0), // Spacing antara kotak profil dan tombol
            // Tombol Setting
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Warna tombol
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.settings, color: Colors.white), // Ikon pengaturan
                  SizedBox(width: 10.0), // Spacing antara ikon dan teks
                  Text(
                    'Setting',
                    style: TextStyle(color: Colors.white),
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
