import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/core/app_theme/theme.dart';
import 'app/presentation/routes/pages.dart';
import 'app/presentation/routes/routers.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      const MyApp()
    /* DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>const MyApp(), // Wrap your app
    ),*/
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () {
          return GetMaterialApp(
            builder: (context, widget) {
              //add this line
              ScreenUtil.setContext(context);
              return MediaQuery(
                //Setting font does not change with system font size
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: StyleTheme().getDarkTheme(),
            initialRoute: Pages.kINITIAL,
            getPages: Routers().routerPage,
          );
        }
    );
  }


}



