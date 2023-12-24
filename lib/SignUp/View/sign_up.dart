import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController secondNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();



  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool obsucre = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Colors.amber,
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
          child: (Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 118),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height:8),
               Text(
                "Sign Up with your email and password.",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height:40),
              Form(
                key: formKey,
                child:Column
                (children: [
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                            if (value == null || value == "") {
                              return "Please enter First Name";
                            }

                            return null;
                          },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                       labelText: "First Name",
                    hintText: "simon",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                     errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                      
                    ),
                    
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              
                            ),
                    ),
                  ),
                  SizedBox(height:20),
                  TextFormField(
                     controller: secondNameController,
                    validator: (value) {
                            if (value == null || value == "") {
                              return "Please enter Last Name";
                            }

                            return null;
                          },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                       labelText: "Last Name",
                    hintText: "Lewis",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                   
                     errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                      
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      
                    ),
                     focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              
                            ),
                    ),
                  ),
                  SizedBox(height:20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                     controller: emailController,
                    decoration: InputDecoration(
                       labelText: "Email",
                    hintText: "simon.lewis@gmail.com",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                      
                    ),
                    
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      
                    ),
                     focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              
                            ),
                    
                    ),
                     validator: (value) {
                            if (value == null || value == "") {
                              return "Please enter valid email";
                            } else {
                              final bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);
                              if (emailValid == false) {
                                return "Please enter valid email";
                              }
                            }

                            return null;
                          },
                  ),
                  SizedBox(height:20),
                   TextFormField(
                    controller: phoneController,
                    validator: (value) {
                            if (value == null || value == "") {
                              return "Please enter Phone Number";
                            }

                            return null;
                          },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                       labelText: "Phone",
                    hintText: "+1 (908) 123 4567",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      
                    ),
                    
                     errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                      
                    ),
                     focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              
                            ),
                    ),
                  ),
                  SizedBox(height:20),
                  TextFormField(
                    obscureText: obsucre,
                          validator: (value) {
                            if (value == null || value == "") {
                              return "Please enter valid Pssword";
                            }

                            return null;
                          },
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    decoration: InputDecoration(
                       labelText: "Password",
                    hintText: "*************",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,width: 2),
                      
                    ),
                   
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      
                    ),
                     focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              
                            ),
                    suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  obsucre = !obsucre;
                                });
                              },
                              child: obsucre
                                  ? Icon(
                                      Icons.visibility,
                                      color: Colors.grey,
                                      size: 30,
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                            ),
                    ),

                    
                  ),
                  SizedBox(height:20),
                  MaterialButton(onPressed: (){
                    if (formKey.currentState!.validate()) {
                            
                          } else {
                            
                          }
                  },
                  child:Text("Sign Up",style: TextStyle(
                    color: Colors.white,
                  ),),
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 120,vertical: 20),
                  )
                  
                ],)
                ),
                Row(
                  children: [
                    
                    IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.circleCheck)),
                    Text("I Agree With Terms & Conditions",
                    style: TextStyle(
                      fontSize: 14,
                    ),)
                  
                  ],
                )
            ],
          )),
        ),
      ),
    );
  }
}