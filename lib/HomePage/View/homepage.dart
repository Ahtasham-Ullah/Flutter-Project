import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   List<Map<String, String>> imageData = [
  {'imagePath': 'assets/images/image1.jpg', 'title': 'Image 1 Title'},
  {'imagePath': 'assets/images/image2.png', 'title': 'Image 2 Title'},
  
];
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
                                backgroundColor: Colors.white,
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
              //  SizedBox(
              //   height: 250,
              //      child: ListView.builder(
              //       itemCount: 5,
              //       itemBuilder: (context, index) {
              //         return buildCard(index);
              //       }),
              //  )
             SizedBox(
                  height: 200,
                  child: ListView.builder(
                     // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                       
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            
                            color: Colors.black,
                          ),
                        );
                      }),
             ),
             
                          
              ],
         
              
            )
         ),
       ),
    );

    // ignore: dead_code
    // Widget buildCard(int index) =>Container(
    //   height: 150,
    //   width: 150,
    //   color: Colors.amber,
    // );
  }
}