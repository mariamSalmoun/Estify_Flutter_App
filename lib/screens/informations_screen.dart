import 'dart:ui';
import 'package:estify/custom_icon.dart';
import 'package:flutter/material.dart';
import 'ajouter_travaux.dart';
import 'package:estify/app_colors.dart' as AppColors;

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  String _selectedTva = '20%';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 0, right: 0,),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(image: AssetImage("assets/images/logo_estify.png"), width: 130, height: 33.5),
                        Icon(CustomIcons.user, color: AppColors.icons_color, size: 40,),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  const Text(
                    'Information projet',
                    style: TextStyle(fontSize: 25, fontFamily: 'Ubuntu-bold'),
                  ),
                  SizedBox(height: 30),
                  const Text(
                    'Référence:',
                    style: TextStyle(fontSize: 18, fontFamily: 'Ubuntu-bold'),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                       BoxShadow(
                            color: Colors.black26,
                        blurRadius: 6,
                           offset: Offset(0,6),
                       ),
                      ]
                    ),

                      child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: 'Nom ou référence de projet',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: AppColors.blue_color,
                          fontFamily: 'Ubuntu-Medium',
                        )
                    ),
                  ),
                    ),
                  const SizedBox(height: 40),
                  const Text(
                    'Adresse:',
                    style: TextStyle(fontSize: 18, fontFamily: 'Ubuntu-Medium'),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0,6),
                          ),
                        ]),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'Adresse à indiquer',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: AppColors.blue_color,
                            fontFamily: 'Ubuntu-Medium',
                          ),
                      ),
                    ),
                  ),


                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0,6),
                          ),
                        ]
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'Ville du projet à indiquer',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 16,
                            color: AppColors.blue_color,
                            fontFamily: 'Ubuntu-Medium',
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0,6),
                          ),
                        ]
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'Code postal du projet à indiquer',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 16,
                            color: AppColors.blue_color,
                            fontFamily: 'Ubuntu-Medium',)
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Autres informations:',
                    style: TextStyle(fontSize: 18, fontFamily: 'Ubuntu-Medium'),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0,6),
                          ),
                        ]
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: 'Année deconstruction du projet a indiquer',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 16, color: AppColors.blue_color, fontFamily: 'Ubuntu-Medium',)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0,6),
                          ),
                        ]
                    ),
                    child: Row(

                      children: [
                        Text("TVA: ", style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 18),),
                        SizedBox(width: 50,),
                        Radio<String>(
                          value: '20%',
                          groupValue: _selectedTva,
                          fillColor: MaterialStateColor.resolveWith((states) => AppColors.blue_color),
                          onChanged: (value) {
                            setState(() {
                              _selectedTva = value!;
                            });
                          },
                        ),
                        const Text('20%', style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 18, color: AppColors.orange_color),),
                        SizedBox(width: 20), // Adjust the spacing as needed
                        Radio<String>(
                          value: '10%',
                          groupValue: _selectedTva,
                          fillColor: MaterialStateColor.resolveWith((states) => AppColors.blue_color),
                          onChanged: (value) {
                            setState(() {
                              _selectedTva = value!;
                            });
                          },
                        ),
                        const Text('10%', style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 18, color: AppColors.orange_color),),
                         // Adjust the spacing as needed

                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  SizedBox(
                    width: 350,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AjouterTravaux())
                        );
                      },
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.blue_color,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                          backgroundColor: AppColors.blue_color,
                        ),
                        child: const Text("DEMARRER LE PROJET", style: TextStyle(
                            color: Colors.white, fontSize: 16, fontFamily: 'Ubuntu-Bold'),
                        ),
                      )
                  )
                ],
              ),
            ),

          ),

      ),
    );
  }
}


