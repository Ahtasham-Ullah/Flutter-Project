
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

       body: Padding(
         padding: EdgeInsets.symmetric(horizontal: 20.w),
         child: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 124,
              ),
              Text("Welcome to EasyShop",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                
           
              ),),
              Text("Sign in to Continue",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                
                
           
              ),),
              SizedBox(
                height: 40,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "simon.lewis@gmail.com",
                  
                ),
                
                
              ),
              SizedBox(
                  height: 15,
                ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "**************",
                  
                ),
           
              ),
              SizedBox(
                height: 20,
              ),
              
              Container(
                alignment: AlignmentDirectional.topEnd,
                child:InkWell(
                          onTap: () {
                            
                          },
                child: Text(
                
                  "Forgot Password?",
                  
                  
                ),),
              ),
              SizedBox(
                height: 20,
              ),
              /*Center(
                child: Container(
                  height: 50,
                  width: 305,
                  
                //color: Colors.blueAccent,
                child:InkWell(onTap: () {
                   (
                  child: Text(
                    
                    "Sign In",
                    style: TextStyle(color: Colors.red),
                  ),
                );
                },),
               
                  
                ),
              ),*/
             // SizedBox(
               // height: 50,
               // width: 305,
               // child:
                 ElevatedButton(
                  
                  child: Text(
                    "Sign In",style: TextStyle(color: Colors.white),
                  ),
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: ContinuousRectangleBorder(),
                    fixedSize: Size(305, 50),
                    
                  ),
                  onPressed: () {
                    
                  },
                ),
              //),
           
              SizedBox(
                height: 43,
              ),
               
                 
                   Container(
                      height: 50,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        
                        border:Border.all(
                          width: 1,
                          color: Colors.grey,
                        )
                      ),
                        child:InkWell(
                          onTap: () {
                            
                          },
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                            Icon(
                            FontAwesomeIcons.squareFacebook,
                            color: Colors.blue,
                                                 ),
                                                 Text(
                                                  "Sign In with Facebook",
                                                  style: TextStyle(
                                                    fontSize: 13,
                          
                                                  ),
                                                 )
                          ],),
                        
                        ),
                        ),
                       
           
                       
                    
                    
                 
               
              
              SizedBox(
                height: 13,
              ),
              Container(
                height: 50,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  
                  border:Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  
                ),
                 child:InkWell(
                          onTap: () {
                            
                          },
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             SizedBox(
                              height: 20,
                              child: Image.asset('assets/images/icons8_Google_2@3x.png')),
                            //Icon(
                            //FontAwesomeIcons.google,
                            //color: Colors.red,
                                                // ),
                                                 Text(
                                                  "Sign In with Google",
                                                  style: TextStyle(
                                                    fontSize: 13,
                          
                                                  ),
                                                 )
                          ],),
                        
                        ) 
              ),
              SizedBox(
                height: 91,
              ),
              Center(
                child:InkWell(
                  onTap:() {
                    
                  },
                child: Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    fontSize: 13,
                    
                  ),
                ),
                ),
              ),
            ],
            
           ),
         ),

       ),
    )  ;
  }
}


