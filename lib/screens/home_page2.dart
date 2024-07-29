import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../lists/list.dart';
import '../routes/routes.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff8e836f),
                Color(0xff49453a),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8,
                  ),
                  child: ListTile(
                    leading: Text(
                      "Games",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        const Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              height: 440.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black54,
                                      spreadRadius: 4,
                                      blurRadius: 15,
                                      offset: Offset(
                                          0, 3) // changes position of shadow
                                      ),
                                ],
                                // color: Colors.black,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    "https://www.channelnews.com.au/wp-content/uploads/2023/08/full-list-of-netflix-games-by-release-date.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 120.h,
                              width: double.infinity,
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    const Color(0xff5a5549).withOpacity(0.5),
                                    const Color(0xff5a5549).withOpacity(0.7),
                                    const Color(0xff6d6656),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: const NetworkImage(
                                          "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
                                        ),
                                        height: 32.h,
                                      ),
                                      Text(
                                        "GAMES",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.grey.shade200,
                                            letterSpacing: 4),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Unlimited access to",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.sp),
                                  ),
                                  Text(
                                    "exclusive games",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "No ads. No extra fees. No in-app purchases",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.sp),
                                  ),
                                  Text(
                                    "Included with your membership",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          "Recently Released",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...gameList.map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                          // color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              e['image'],
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        e['name'],
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        e['type'],
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade500),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "Tabletop Games",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...gameList2.map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(right: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                          // color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              e['image'],
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        e['name'],
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        e['type'],
                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey.shade500),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 60.h,
          color: Colors.black,
          child: Row(
            children: [
              SizedBox(
                width: 35.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.home_page1);
                },
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                  size: 30.h,
                ),
              ),
              SizedBox(
                width: 55.w,
              ),
              Icon(
                Icons.sports_esports_outlined,
                color: Colors.grey,
                size: 30.h,
              ),
              SizedBox(
                width: 55.w,
              ),
              Icon(
                Icons.video_library_outlined,
                color: Colors.grey,
                size: 30.h,
              ),
              SizedBox(
                width: 55.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.home_page3);
                },
                child: Icon(
                  Icons.person_2_outlined,
                  color: Colors.grey,
                  size: 30.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
