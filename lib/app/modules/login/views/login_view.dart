import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  final LoginController loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Email TextField
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "masukkan test@test.com",
              ),
              onChanged: (value) {
                loginController.email.value = value;
              },
            ),

            // Password TextField
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "masukkan 'testing'",
              ),
              obscureText: true,
              onChanged: (value) {
                loginController.password.value = value;
              },
            ),

            SizedBox(height: 20),

            // Login Button
            ElevatedButton(
              onPressed: () {
                loginController.login();
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
