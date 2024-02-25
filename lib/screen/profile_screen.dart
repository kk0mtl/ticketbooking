import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: ListView(
        children: [
          Gap(AppLayout.getHeight(50)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/usericon.png'),
                      )),
                ),
                Column(
                  children: [
                    const Text('Book Tickets'),
                    const Text('New-York'),
                    Container(
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Container(
                            height: AppLayout.getHeight(30),
                            width: AppLayout.getWidth(30),
                            decoration: BoxDecoration(
                              color: Styles.indigoColor,
                              borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(50),
                              ),
                            ),
                            child: const Icon(
                              Icons.shield_sharp,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const Text('Premium status'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
