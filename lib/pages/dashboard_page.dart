import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  static final myColors = AppColors();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              // Main top sized box
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.6,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        alignment: const Alignment(0, -0.5),
                        height: MediaQuery.sizeOf(context).height / 3.8,
                        decoration: const BoxDecoration(
                          color: Color(0xff191d2c),
                        ),
                        child: ListTile(
                          leading: Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          title: const Text("Jenny Wilson",
                              style: TextStyle(
                                color: Color(0xff21c781),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                          subtitle: const Text(
                            "Delivery Man",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: Image.asset(
                            'assets/images/notification-bing.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.sizeOf(context).height / 6.6,
                      left: MediaQuery.sizeOf(context).width / 22,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height / 5,
                        width: MediaQuery.sizeOf(context).width / 1.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 5.0,
                              spreadRadius:
                                  0.0, // Optional: controls shadow diffusion
                              offset: const Offset(
                                  0, 10.0), // Adjust for shadow direction
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Total Earning",
                              style: TextStyle(
                                color: Color(0xff191d2c),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height / 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/totalearnings/dollar-square.png",
                                      height: 24,
                                      width: 24,
                                    ),
                                    const Text(
                                      "Earning",
                                      style: TextStyle(
                                          color: Color(0xff6A7189),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "\$625.48",
                                          style: TextStyle(
                                              color: Color(0xff01888A),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/totalearnings/percentage-square.png",
                                      height: 24,
                                      width: 24,
                                    ),
                                    const Text(
                                      "Collection",
                                      style: TextStyle(
                                          color: Color(0xff6A7189),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "\$6225.48",
                                          style: TextStyle(
                                              color: Color(0xff01888A),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/totalearnings/wallet.png",
                                      height: 24,
                                      width: 24,
                                    ),
                                    const Text(
                                      "Balance",
                                      style: TextStyle(
                                          color: Color(0xff6A7189),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "\$1254.89",
                                          style: TextStyle(
                                              color: Color(0xff01888A),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Main middle container
              Container(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                            color: Color(0xff333A51),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Monthly",
                              style: TextStyle(
                                  color: Color(0xff6A7189),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Overview Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          width: MediaQuery.sizeOf(context).width / 2.3,
                          decoration: BoxDecoration(
                            color: const Color(0xffe6f8fd),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color(0xff00B7E9),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/overview/Frame_01.png",
                                    height: 32,
                                    width: 32,
                                  ),
                                  Image.asset(
                                    "assets/images/overview/Line_01.png",
                                    height: 12,
                                    width: 61,
                                  ),
                                ],
                              ),
                              const Text(
                                "Pending Parcels",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "126",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          width: MediaQuery.sizeOf(context).width / 2.3,
                          decoration: BoxDecoration(
                            color: const Color(0xffe6f8fd),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color(0xff00B7E9),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/overview/Frame_02.png",
                                    height: 32,
                                    width: 32,
                                  ),
                                  Image.asset(
                                    "assets/images/overview/Line_02.png",
                                    height: 12,
                                    width: 61,
                                  ),
                                ],
                              ),
                              const Text(
                                "Delivered Parcels",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "504",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          width: MediaQuery.sizeOf(context).width / 2.3,
                          decoration: BoxDecoration(
                            color: const Color(0xffe6f8fd),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color(0xff00B7E9),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/overview/Frame_03.png",
                                    height: 32,
                                    width: 32,
                                  ),
                                  Image.asset(
                                    "assets/images/overview/Line_03.png",
                                    height: 12,
                                    width: 61,
                                  ),
                                ],
                              ),
                              const Text(
                                "Partial Delivered Parcels",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Text(
                                "45",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          width: MediaQuery.sizeOf(context).width / 2.3,
                          decoration: BoxDecoration(
                            color: const Color(0xffe6f8fd),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color(0xff00B7E9),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/overview/Frame_04.png",
                                    height: 32,
                                    width: 32,
                                  ),
                                  Image.asset(
                                    "assets/images/overview/Line_04.png",
                                    height: 12,
                                    width: 61,
                                  ),
                                ],
                              ),
                              const Text(
                                "Return Parcels",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Text(
                                "29",
                                style: TextStyle(
                                  color: Color(0xff333A51),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(18, 14, 18, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Pending Parcels",
                          style: TextStyle(
                            color: Color(0xff333A51),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0xffECEDF0),
                                width: 1,
                              )),
                          child: const Text(
                            "View All",
                            style: TextStyle(
                              color: Color(0xff6A7189),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    // Product container 01
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xffEEF2FF), width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/pendingparcel/pending_parcel_01.png",
                            height: 46,
                            width: 46,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Exclusive Cotton Fiber Head Pillow",
                                style: TextStyle(
                                    color: Color(0xff333A51),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Size: 34”, Weight: 2.5K",
                                style: TextStyle(
                                    color: Color(0xff6A7189),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // Product container 02
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color(0xffEEF2FF), width: 1)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/pendingparcel/pending_parcel_02.png",
                            height: 46,
                            width: 46,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Exclusive Cotton Fiber Head Pillow",
                                style: TextStyle(
                                    color: Color(0xff333A51),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Size: 34”, Weight: 2.5K",
                                style: TextStyle(
                                    color: Color(0xff6A7189),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/appbar/category.png',
                    color:
                        currentIndex == 0 ? myColors.primaryRed : Colors.black,
                  ),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      color: currentIndex == 0
                          ? myColors.primaryRed
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/appbar/dollar-square.png',
                    color:
                        currentIndex == 1 ? myColors.primaryRed : Colors.black,
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: currentIndex == 1
                          ? myColors.primaryRed
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/appbar/mouse-square.png',
                    color:
                        currentIndex == 2 ? myColors.primaryRed : Colors.black,
                  ),
                  Text(
                    'Parcel',
                    style: TextStyle(
                      color: currentIndex == 2
                          ? myColors.primaryRed
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/appbar/user.png',
                    color:
                        currentIndex == 3 ? myColors.primaryRed : Colors.black,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: currentIndex == 3
                          ? myColors.primaryRed
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
