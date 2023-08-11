import 'package:estify/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:estify/app_colors.dart' as AppColors;
import 'dart:ui';
import 'informations_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.background,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.download, size: 25, color: AppColors.icons_color),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.home__2_, size: 25, color: AppColors.icons_color),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment, size: 25, color: AppColors.icons_color),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
          child: Column(
            children: [
              Container(
                margin:  EdgeInsets.only(left: 20, right: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image(image: AssetImage("assets/images/logo_estify.png"), width: 130, height: 33.5),
                    Icon(CustomIcons.user, color: AppColors.icons_color, size: 40,),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),

                    child: const Text(
                      "Quels travaux \n souhaitez-vous réaliser",
                      style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu-Bold'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 172,
                        height: 220,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context) => InfoScreen()));
                              },

                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                child: Image.asset("assets/images/Maison.jpg"),
                              ),
                            ),
                            SizedBox(height: 25,),
                            const Text("Maison" , style: TextStyle(color: AppColors.blue_color, fontSize: 18, fontFamily: 'Ubuntu-Medium'),)
                          ],
                        ),
                      ),
                      Container(
                        width: 170,
                        height: 220,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context) => InfoScreen()));
                              },

                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                child: Image.asset("assets/images/Maison.jpg"),
                              ),
                            ),
                            SizedBox(height: 25,),
                            const Text("Appartement" , style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Ubuntu-Bold'),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40,),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 170,
                        height: 220,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context) => InfoScreen()));
                              },

                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                child: Image.asset("assets/images/Maison.jpg"),
                              ),
                            ),
                            SizedBox(height: 25,),
                            const Text("Immeuble" , style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Ubuntu-Bold'),)
                          ],
                        ),
                      ),
                      Container(
                        width: 170,
                        height: 220,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder:(context) => InfoScreen()));
                              },

                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                topRight: Radius.circular(5.0),
                              ),
                              child: Image.asset("assets/images/Maison.jpg"),
                            ),
                            ),
                            SizedBox(height: 25,),
                            const Text("Commerce" , style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'Ubuntu-Bold'),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
