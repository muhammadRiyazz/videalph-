import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenUserProfile extends StatelessWidget {
  const ScreenUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD1CB3D),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(96, 213, 204, 204),
                        borderRadius: BorderRadius.circular(15)),
                    // child: ,
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Muhammad Riyaz',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Userfield(),
                Userfield(),
                Userfield(),
                Userfield()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Userfield extends StatelessWidget {
  const Userfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Muhammad Riyaz',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
