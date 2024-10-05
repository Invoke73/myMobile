import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:event_book/viewmodels/bottom_navbar_controller.dart';


class CustomBottomNav extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            FontAwesomeIcons.house, 
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.calendar, 
            color: Colors.grey,
          ),
          Icon(
            FontAwesomeIcons.ticket, 
            color: Colors.grey,
          ),
          Icon(
            FontAwesomeIcons.user, 
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}