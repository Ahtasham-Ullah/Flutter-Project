import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage/View/homepage.dart';

//import 'package:flutter_application_1/SignUp/View/sign_up.dart';
//import 'package:flutter_application_1/design-page/view/design-page.dart';
//import 'package:flutter_application_1/productPage/view/product_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      builder: (context, child) =>  MaterialApp(
       title: 'Flutter Demo',
        
        home:  HomePage(),
      ),
      designSize: const Size(375, 812),
    );
  }

 
}

