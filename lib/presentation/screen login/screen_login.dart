import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Screen otp/screen_otp.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({
    super.key,
  });
  String? numm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('asset/otp.png')),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Enter Your\nMobile Number',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'We will send  you a one time password to\nyour registered mobile number',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: const BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    numm = phone.toString();
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenOtp();
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
                    'Get OTP',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
