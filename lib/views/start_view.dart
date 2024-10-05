import 'package:flutter/material.dart';
import 'start_menu.dart';
import 'package:get/get.dart';

class LoadingScreen extends StatefulWidget {
  
  @override
  _LoadingScreen createState() => _LoadingScreen();
}

class _LoadingScreen extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLoginScreen();
  }

  _navigateToLoginScreen() async {
    await Future.delayed(Duration(seconds: 3)); // Delay selama 3 detik
    Get.off(() => StartMenuScreen()); // Navigasi ke LoginScreen menggunakan GetX
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            Text(
              "Special occasion in your hand.",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
                fontFamily: 'poppins',
              ),
            ),
          ],
        )
      ),
    );
  }
}
