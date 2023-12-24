import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    //  double screenWidth = MediaQuery.of(context).size.width;
    //  double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
     
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              
              children: [
                Container(
                  
                  height: 375,
                  width: MediaQuery.of(context).size.width,
                  child: Image(image: AssetImage("assets/images/bg@3x.png"),
                  fit: BoxFit.cover,),
                ),
                //SizedBox(height: 57,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 57),
                    child: Container(
                      
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: [
                          
                          //Icon(Icons.search,color: Colors.grey,),
                          IconButton(onPressed:  (){}, icon: Icon(Icons.search)),
                          Text("What are you looking for?",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.grey),)
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 405,
                    width: 375,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      )
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: Container(
                //     child: Row(
                //       children: [
                //         Text("Categories" ,style: TextStyle(color: Colors.amber),) ,
                //         Container(
                //           child: Text("See All"),
                          
                //         )
                          
                          
                        
                //       ],
                //     ),
                //   ),
                // ),
                 Align(
                  alignment: Alignment.topCenter,
                   child: SizedBox(
                     child: ListView(
                      
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            //height: 100,
                            width: 75,
                            //color: Colors.black12,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Rectangle 11@3x.png"),
                                
                              )
                            ),
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Rectangle 11@3x.png"),
                                
                              )
                            ),
                                       ),
                         ),
                          Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Rectangle 11@3x.png"),
                                
                              )
                            ),
                                       ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Rectangle 11@3x.png"),
                                
                              )
                            ),
                                       ),
                         ),
                                    
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Rectangle 11@3x.png"),
                                
                              )
                            ),
                                       ),
                         )
                      ],
                     ),
                   ),
                 ),
            
               
              ],
              
            
              
            ),
          ),
        ],
      ),
    ),
        
        
   
    
    );
  }
}