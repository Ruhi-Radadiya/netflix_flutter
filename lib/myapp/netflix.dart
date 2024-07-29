import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routes/routes.dart';

class netflix extends StatelessWidget {
  const netflix({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: Size(size.width, size.height),
      minTextAdapt: true,
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: Routes.myRoutes,
        );
      },
    );
  }
}
