import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:estify/app_colors.dart' as AppColors;
import 'package:estify/custom_icon.dart';
import 'informations_screen.dart';
import 'home_screen.dart';

class AjouterTravaux extends StatefulWidget {
  const AjouterTravaux({super.key});

  @override
  State<AjouterTravaux> createState() => _AjouterTravauxState();
}

class _AjouterTravauxState extends State<AjouterTravaux> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/logo_estify.png"),
                        width: 130,
                        height: 33.5,
                      ),
                      Icon(
                        CustomIcons.user,
                        color: AppColors.icons_color,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    // Add icon here (Back )
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      'Nom ou référence de \n projet',
                      style: TextStyle(fontSize: 25, fontFamily: 'Ubuntu-bold'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.blue_color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      setState(() {
                        _inputText = value;
                      });
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: InputBorder.none,
                      hintText: '30 m^2', // Remove the hint text here
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Ubuntu-Medium',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  child: Container(
                    height: 420,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius:BorderRadius.circular(5),

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(onPressed: (){},
                    child: Icon(Icons.add),


                ),
                )],
            ),
          ),
        ),
      ),
    );
  }
}
