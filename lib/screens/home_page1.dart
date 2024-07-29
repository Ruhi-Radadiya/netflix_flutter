import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/lists/list.dart';

import '../routes/routes.dart';

class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
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
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8,
                  ),
                  child: ListTile(
                    leading: Image(
                      image: const NetworkImage(
                        "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png",
                      ),
                      height: 50.h,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.cast,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 4, bottom: 4),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "TV Shows",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 4, bottom: 4),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                "Movies",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 4, bottom: 4),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Categories",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Container(
                                  height: 450.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black54,
                                        spreadRadius: 4,
                                        blurRadius: 15,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    // color: Colors.black,
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        "https://m.media-amazon.com/images/M/MV5BMGNhNTYwNjMtYjFkOC00MWQzLTgyNTMtMmIxNWU2MWUyMDQ5XkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_FMjpg_UX1000_.jpg",
                                      ),
                                      fit: BoxFit.fill,
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
                                        const Color(0xff5a5549)
                                            .withOpacity(0.5),
                                        const Color(0xff5a5549)
                                            .withOpacity(0.7),
                                        const Color(0xff6d6656),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        height: 40.h,
                                        width: 120.w,
                                        padding: EdgeInsets.only(
                                            left: 28, top: 4, bottom: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.play_arrow_rounded,
                                            ),
                                            Text(
                                              "Play",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        height: 40.h,
                                        width: 120.w,
                                        padding: EdgeInsets.only(
                                            left: 20, top: 4, bottom: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "My List",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "New on Netflix",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18.sp),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ...myList2.map(
                                        (e) => Padding(
                                          padding:
                                              const EdgeInsets.only(right: 7),
                                          child: Container(
                                            height: 140.h,
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    e['image'],
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Only on Netflix",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18.sp),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ...myList.map(
                                        (e) => Padding(
                                          padding: const EdgeInsets.only(
                                            right: 7,
                                          ),
                                          child: Container(
                                            height: 140.h,
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    e['image'],
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Comedy Movies",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18.sp),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ...myList3.map(
                                        (e) => Padding(
                                          padding: const EdgeInsets.only(
                                            right: 7,
                                          ),
                                          child: Container(
                                            height: 140.h,
                                            width: 100.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    e['image'],
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                          ],
                        ),
                      ),
                    ],
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
              Icon(
                Icons.home_outlined,
                color: Colors.grey,
                size: 30.h,
              ),
              SizedBox(
                width: 55.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.home_page2);
                },
                child: Icon(
                  Icons.sports_esports_outlined,
                  color: Colors.grey,
                  size: 30.h,
                ),
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
