import 'package:flutter/material.dart';

import '../screen user profile/screen_user_profile.dart';

class ScreenAddProfile extends StatelessWidget {
  ScreenAddProfile({super.key});
  List gender = ["Male", "Female", "Other"];
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController placecontroller = TextEditingController();

  String? select;
  @override
  Widget build(BuildContext context) {
    final mysize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffD1CB3D),
      body: SafeArea(
          child: Column(
        children: [
          ListTile(
              title: const Text(
                'Fill your profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back))),
          // const SizedBox(
          //   height: 70,
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(96, 213, 204, 204),
                                borderRadius: BorderRadius.circular(15)),
                            // child: ,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color(0xffD1CB3D),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: TextField(
                              controller: namecontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Name',
                                  prefixIcon: const Icon(Icons.person)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            child: TextField(
                              controller: emailcontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Email',
                                  prefixIcon: const Icon(Icons.email)),
                            ),
                          ),
                          Row(
                            children: [
                              GenderRadioButton(
                                gender: gender,
                                select: select,
                                index: 0,
                                title: 'Male',
                              ),
                              GenderRadioButton(
                                gender: gender,
                                select: select,
                                index: 1,
                                title: 'FeMale',
                              ),
                              GenderRadioButton(
                                gender: gender,
                                select: select,
                                index: 2,
                                title: 'other',
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            child: TextField(
                              controller: placecontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: 'Place',
                                  prefixIcon: const Icon(Icons.location_pin)),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return ScreenUserProfile();
                                },
                              ));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 47,
                              decoration: BoxDecoration(
                                  color: const Color(0xffD1CB3D),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                  child: Text(
                                'continue',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 70,
          // ),
        ],
      )),
    );
  }
}

class GenderRadioButton extends StatelessWidget {
  GenderRadioButton(
      {super.key,
      required this.gender,
      required this.select,
      required this.index,
      required this.title});

  final List gender;
  String? select;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Color(0xffD1CB3D),
          value: gender[index],
          groupValue: select,
          onChanged: (value) {
            select = value;
          },
        ),
        Text(title)
      ],
    );
  }
}
