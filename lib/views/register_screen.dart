import 'package:event_book/views/homepage.dart';
import 'package:event_book/views/login_screen.dart';
import 'package:event_book/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center (
          child: SingleChildScrollView(
            child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                  ),
                  Text(
                    'Special occasion in your hand.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 16,
                      fontFamily: 'poppins',
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CustomTextComponent(
                          TextLabel: "Full Name", 
                          textInputType: TextInputType.name, 
                          obscureText: false
                        ),
                        SizedBox(height: 30),
                        CustomTextComponent(
                          TextLabel: "Email", 
                          textInputType: TextInputType.emailAddress, 
                          obscureText: false
                        ),
                        SizedBox(height: 30),
                        CustomTextComponent(
                          TextLabel: "Password", 
                          textInputType: TextInputType.visiblePassword, 
                          obscureText: true
                        ),
                        SizedBox(height: 100),
                        Container(
                          width: 500,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [Colors.blue.shade300, Color.fromRGBO(246, 135, 255, 1)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight
                            )
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(HomePage());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent, // Transparan karena kita gunakan background dari Container
                              shadowColor: Colors.transparent, // Hilangkan bayangan default
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'poppins',
                                fontSize: 16
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'poppins',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Get.to(LoginScreen());
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Color.fromRGBO(171, 144, 250, 1),
                              fontSize: 16,
                              fontFamily: 'poppins',
                              
                            ),
                          ),
                        )
                      ]
                    ),
                  )
                ],
          ),
          ),
        )
      )
    );
  }
}