// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dashboard_design_app/card.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/profile.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              title: Text(
                "Mr Uzair",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "19SW45",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: GridView(
                padding: EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                ),
                children: [
                  MyCard(
                      url: 'assets/images/personal data.png',
                      title: 'Personal Data'),
                  MyCard(
                      url: 'assets/images/course-schedule.png',
                      title: 'Course Schedule'),
                  MyCard(
                      url: 'assets/images/study-result.png',
                      title: 'Study Result'),
                  MyCard(
                      url: 'assets/images/attendance.png',
                      title: 'Attendance Recap'),
                  MyCard(
                      url: 'assets/images/course-booking.png',
                      title: 'Course Booking'),
                  MyCard(
                      url: 'assets/images/course-plan.png',
                      title: 'Course Plan'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
