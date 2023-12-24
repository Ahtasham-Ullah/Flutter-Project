




import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  int currentIndex=0;
  List<Widget>Screenns =[
    Container(color: const Color.fromARGB(255, 39, 37, 33),),
    Container(color: const 
    Color.fromARGB(255, 29, 172, 24),),
    Container(color: Colors.amber,),
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text("Dev Castle"),
        
        backgroundColor:const Color.fromARGB(255, 40, 96, 110),
        
      ),
      drawer: const Drawer(

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentIndex= index;
          setState(() {
            
          });
        },
        
        // selectedIndex: 0,
       items: [

          
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profile"),
      ],
        backgroundColor: const Color.fromARGB(255, 142, 181, 190),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton:  FloatingActionButton(
        //backgroundColor: Color.fromARGB(255, 90, 174, 179),
        onPressed: () { },
         child:const Icon(Icons.shopping_cart),
         
            
      ),
      
      backgroundColor: const Color.fromARGB(255, 179, 195, 199),
      body: Screenns[currentIndex],
    );
      
      
    
     
  }
}