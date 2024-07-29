import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routes/routes.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black87,
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
                    leading: Text(
                      "My Netflix",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 23.sp,
                      ),
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
                        const Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 80.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/originals/b6/77/cd/b677cd1cde292f261166533d6fe75872.png"),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ruhi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Icon(
                                CupertinoIcons.chevron_down,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 40.w,
                        backgroundColor: Colors.red,
                        child: Icon(
                          CupertinoIcons.bell_fill,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Notifications",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.right_chevron,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 40.w,
                        backgroundColor: Colors.blueAccent,
                        child: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Downloads",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                      trailing: Icon(
                        CupertinoIcons.right_chevron,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
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
              Icon(
                Icons.person_2_outlined,
                color: Colors.grey,
                size: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
