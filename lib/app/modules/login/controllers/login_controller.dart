import 'package:belajar/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Variables for form inputs
  var email = ''.obs;
  var password = ''.obs;

  // Logic for login
  void login() {
    if (email.isNotEmpty && password.isNotEmpty) {
      // Implement login logic here
      if (email.value == "test@test.com" && password.value == "testing") {
        print("Berhasil login. Mengarahkan ke homePage...");
        Get.offNamed(Routes.HOME);
      } else {
        Get.snackbar("Error", "Email dan/atau Password anda salah.");
      }
    } else {
      Get.snackbar("Error", "Please fill in all fields");
    }
  }
}
