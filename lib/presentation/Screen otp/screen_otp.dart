import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../Screen add profile/screen_add_profile.dart';

class ScreenOtp extends StatelessWidget {
  ScreenOtp({
    super.key,
  });

  String? otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.asset('asset/otp.png')),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'OTP Verification',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 13,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Enter the OTP send to ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                        text: ' +91 7034612195',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 40,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    otp = pin;
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenAddProfile();
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
                    'Verify',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 5),
                child: Text(
                  "Don't receive any code",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              const InkWell(
                  child: Text(
                "Resend new code",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromARGB(255, 74, 122, 206)),
              ))
            ],
          ),
        ),
      )),
    );
  }
}
