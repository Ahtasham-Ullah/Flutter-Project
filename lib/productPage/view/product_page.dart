



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product_Page extends StatefulWidget {
  const Product_Page({super.key});

  @override
  State<Product_Page> createState() => _Product_PageState();
}

class _Product_PageState extends State<Product_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue.shade100,
      
     
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 94, 184, 10),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 25,
        ),
        actions: [
          IconButton(
            onPressed: (){},
             icon: Icon(Icons.favorite),
             color: Colors.red,)],
      ),

      body: Padding(
        
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          
          
          child: SingleChildScrollView(
            child: (
              Column(
                children: [
                  Image.asset('assets/images/Image 5@3x.png',
                  width: 184,
                  height: 241,
                  color: Colors.blue.shade100,
                  colorBlendMode: BlendMode.darken,
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    padding: EdgeInsets.all(20),
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        
                      )
                    ),
                    child: Column(children: [
                      
                      Text("Huawei Talk band B3 Lite - Blue Watch",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'raleway',
                      ),)
                    ]),
                  )
                ],
              )
            ),
          ),
        ),
      ),
        );
      
     
      
    
  }
}