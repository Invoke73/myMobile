import 'package:event_book/views/login_screen.dart';
import 'package:event_book/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class StartMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Bagian atas: Logo dan tagline
            Column(
              children: [
                SizedBox(height: 150), // Menggeser logo lebih ke atas
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                  ),
                ),
                Text(
                  'Special occasion in your hand.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            // Bagian tengah: Deskripsi
            Column(
              children: [
                Text(
                  'Finding great place to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'book around.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Your great journey awaits you.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            // Bagian bawah: Tombol
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: 500, // Lebar tombol
                        height: 50, // Tinggi tombol
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), // Rounded corner
                          gradient: LinearGradient(
                            colors: [Colors.blue.shade300, Color.fromRGBO(246, 135, 255, 1)], // Gradasi biru ke ungu
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(RegisterScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent, // Transparan karena kita gunakan background dari Container
                            shadowColor: Colors.transparent, // Hilangkan bayangan default
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            'Sign up free',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white, // Warna teks putih
                              fontFamily: 'poppins'
                            ),
                          ),
                        ),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.apple, size: 30),
                  label: Text('Continue with Apple'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade800,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.google, size: 25),
                  label: Text('Continue with Google',),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade800,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20), 
                    ],
                  ),
                  ),
                  
                // Beri jarak antara tombol terakhir dan bawah
              ],
            ),
          ],
        ),
      ),
    );
    
  }
}