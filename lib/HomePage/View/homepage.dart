import 'package:flutter/material.dart';
import 'product.dart';
//import 'package:flutter_application_1/HomePage/View/product.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: Colors.blue,
       body: SingleChildScrollView(
       // scrollDirection: Axis.vertical,
         child: (
            Column(
             
              children: [
                SizedBox(
                  
                 
                  child: (
                    Stack(
                      children: [
                            Container(
                             height: MediaQuery.of(context).size.height*.5,
                             width: MediaQuery.of(context).size.width,
                             child: Image(image: AssetImage("assets/images/bg@3x.png"),
                             fit: BoxFit.cover,
                             ),
                            ),
                          
                        Padding(
                          padding: const EdgeInsets.only(top: 47,left: 30,right: 30),
                          child: TextFormField(
                            
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              hintText: "What are you looking for?",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(Icons.search,color: Colors.grey,),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(70),
                                borderSide: BorderSide.none
                              ),
                            ),
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(top:346.0),
                           child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color:  Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(40),
                                 topRight:Radius.circular(40),
                
                
                              )
                            ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 300,left: 160),
                           child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 4,
                              ),
                              SizedBox(width: 5,),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 4,
                              ),
                              SizedBox(width: 5,),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 4,
                              )
                            ],
                           ),
                         )
                      ],
                    )
                ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Categories",
                      style:TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600) ,),
                    ),
                    SizedBox(width: 170,),
                    Text("See All",
                    style:TextStyle(
                      fontSize: 14,
                     color: Colors.grey,
                      fontWeight: FontWeight.w500) ,),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_back_sharp,color: Colors.grey,)
                  ],
                ),
                SizedBox(height: 10),
              //  SizedBox(
              //   height: 250,
              //      child: ListView.builder(
              //       itemCount: 5,
              //       itemBuilder: (context, index) {
              //         return buildCard(index);
              //       }),
              //  )
             SizedBox(
                  height: 100,
                  child: ListView.builder(
                      
                      scrollDirection: Axis.horizontal,
                       
                      itemCount: Categories.length,
                      itemBuilder: (context,  index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 59,
                            width: 64,
                             child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    
                                    Categories[index].images
                                  ),
                                ),
                                Text(Categories[index].name,style: TextStyle(fontSize: 10), textAlign:TextAlign.center ,)
                              ],
                             ),
                            
                          ),
                        );
                      }),
             ),
             
             ///Flash Sale
              Container(
                
                
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                      children: [
                        Text("Flash Sale",
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600) ,),
                        SizedBox(width: 175,),
                        Text("See All",
                        style:TextStyle(
                          fontSize: 14,
                         color: Colors.grey,
                          fontWeight: FontWeight.w500) ,),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_back_sharp,color: Colors.grey,),
                          
                      ],
                    ),
                ),
              ),

              SizedBox(
                            height: 275,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: Products.length,
                              itemBuilder:  (context, index) {
                                    return Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Container(
                            height: 275,
                            width: 180,
                            decoration: BoxDecoration(
                              //color: Colors.grey,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: .5,
                                color: Colors.grey,

                              )
                            ),
                             child: Column(
                              children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 37,left: 45,right: 45,
                                   bottom: 10),
                                   child: SizedBox(
                                    
                                     child: Image(image: AssetImage(
                                      Products[index].image
                                     ),
                                     fit: BoxFit.cover,),
                                   ),
                                 ),
                                 Title(color: Colors.black, child: Text(
                                  Products[index].detail,
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
                                 )),
                                 Row(
                                   children: [
                                    
                                    SizedBox(width: 20,),
                                    Text(
                                      Products[index].price,
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.green),
                                     ), 
                                     SizedBox(width: 20,),
                                     Text(
                                      Products[index].Oldprice,
                                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.red,
                                      decoration: TextDecoration.lineThrough,decorationColor: Colors.red),
                                     ), 
                                   ],
                                 )
                              ],
                             ),
                            
                          ),
                        );


                              }
                              
                              
                              
                              ),
                          ),
                         SizedBox(height: 30,),
                     
                    Container(
                
                
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                      children: [
                        Text("Deals & Discounts",
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600) ,),
                        SizedBox(width: 120,),
                        Text("See All",
                        style:TextStyle(
                          fontSize: 14,
                         color: Colors.grey,
                          fontWeight: FontWeight.w500) ,),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward,color: Colors.grey,),
                          
                      ],
                    ),
                ),
              ),
              SizedBox(height: 20,),
                SizedBox(
                  height: 90,
                  width: 375,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20,),
                      Container(
                      height: 90,
                      width: 180,  
                      child: Image.asset("assets/images/Rectangle 20@3x.png",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 20,),
                      Container(
                      height: 90,
                      width: 180,  
                      child: Image.asset("assets/images/Rectangle 20@3x (1).png",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 20,),
                      Container(
                      height: 90,
                      width: 180,  
                      child: Image.asset("assets/images/Rectangle 20@3x.png",fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 20,),
                      Container(
                      height: 90,
                      width: 180,  
                      child: Image.asset("assets/images/Rectangle 20@3x (1).png",fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                )          
              ],//main children
         
              
            )
         ),
       ),
    );

   
  }
}