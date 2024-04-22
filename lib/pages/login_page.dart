import 'package:deliveryapp/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'onboarding_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final myColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 4,
                ),
                Center(
                  child: Image.asset('assets/images/login.png'),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Login to your account & start delivering.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6A7189),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          hintStyle: const TextStyle(color: Color(0xffAAAEBE)),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffECEDF0)),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffECEDF0), width: 1.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffd7d9de), width: 1.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, // Adjust the height here
                            horizontal: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          hintStyle: const TextStyle(color: Color(0xffAAAEBE)),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffECEDF0)),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffECEDF0), width: 1.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffd7d9de), width: 1.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, // Adjust the height here
                            horizontal: 12.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: myColors.primaryRed),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      color: myColors.primaryRed,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Login with phone number",
                      style:
                          TextStyle(fontSize: 16, color: myColors.primaryRed),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage()));
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: OnboardingPage.myColors.primaryRed,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
