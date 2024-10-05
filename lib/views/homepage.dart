import 'package:event_book/views/booking.dart';
import 'package:event_book/views/schedule.dart';
import 'package:event_book/widgets/bottom_navigation.dart';
import 'package:event_book/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:event_book/viewmodels/profile_controller.dart';
import 'profilePage.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:event_book/viewmodels/bottom_navbar_controller.dart';



class HomePage extends StatelessWidget {
  final ProfileController profileController = Get.find<ProfileController>();
  final DateTime now = DateTime.now();
  final BottomNavController bottomNavController = Get.find<BottomNavController>(); 
  
  final List<Widget> pages = [
    Center(child: Text('Home Page Content')),
    SchedulePage(),
    BookingPage(),
    ProfilePage()
  ];


  String formattedDate = DateFormat('MMMM d, h:mm a').format(DateTime.now());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              formattedDate.toUpperCase(),
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
                fontFamily: 'Alexandria',
                letterSpacing: 0.1
              ),
            ),
            Text(
            'Explore Events',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Alexandria',
              fontWeight: FontWeight.bold,
              fontSize: 30
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              profileController.pickImage();
            },
            child: Obx(() {
              return CircleAvatar(
                backgroundImage: profileController.imageFile.value != null
                    ? FileImage(profileController.imageFile.value!)
                    : AssetImage('assets/avatar_placeholder.png') as ImageProvider,
              );
            }),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Container(
              child: CustomTextComponent(
                hintText: 'Search',
                prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                suffixIcon: Icon(
                  FontAwesomeIcons.sliders,
                  color: Colors.white,
                  ),
                obscureText: false,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'FEATURED',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
                
              ),
              SizedBox(height: 10),  
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/card1.png'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop)
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'CONCERT',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 13,
                              fontFamily: 'Alexandria',
                              letterSpacing: 1
                            ),
                          ),
                          Text(
                            'The Weeknd',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Alexandria',
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/card2.png'),
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'SHOW',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 13,
                              fontFamily: 'Alexandria',
                              letterSpacing: 1
                            ),
                          ),
                          Text(
                            'Fire Show',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Alexandria',
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  'FOR YOU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Color.fromRGBO(246, 135, 255, 1)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Icon(FontAwesomeIcons.gift, color: Color.fromRGBO(242, 116, 132, 1)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Claim 1 free ticket!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Alexandria',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Share an event to with friends',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Alexandria',
                          ),
                        ),
                        Text(
                          'and get 1 ticket.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Alexandria',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50) 
            ], 
          ),
          CustomBottomNav()      
        ],
      ),
      
    );     
  }
}