import 'package:cosmico/fav_screen.dart';
import 'package:cosmico/home_screen.dart';
import 'package:flutter/material.dart';

class Earth extends StatefulWidget {
  const Earth({super.key});

  @override
  State<Earth> createState() => _EarthState();
}

class _EarthState extends State<Earth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [

          Image.asset(
            'assets/Component1.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
         Positioned(
              top: 240,
              child: Image.asset(
                'assets/image14.png',
                fit: BoxFit.cover,
                height: 600,
                width: 400,
              )),
          Positioned(
              top: 200,
              left: 130,
              child: Image.asset(
                'assets/Earth.png',
                height: 130,
                width: 130,
              )),
          Positioned(
              top: 325,
              left: 155,
              child: Text(
                'Earth',
                style: TextStyle(fontSize: 32, color: Colors.white),
              )),
          Positioned(
              top: 380,
              left: 35,
              child: Image.asset('assets/Parameters.png',)
          ),
          Positioned(
              top: 660,
              left: 115,
              child: InkWell(

            
            child: Image.asset('assets/image151.png'),
            
          )),
          Positioned(
            top: 688,
            left: 180,
            child: GestureDetector(onTap: (){},
              child: Text(
                'Visit',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 30,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(padding: EdgeInsets.all(16),


                decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),
                  color: Colors.black.withOpacity(0.5),),
                child: Icon(Icons.arrow_back, color: Colors.white,) ,
              ),
            ),
          ),
          Positioned(
            left: 310,
            top: 30,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> fav_screen()));
              },
              child: Container(padding: EdgeInsets.all(16),


                decoration: BoxDecoration(borderRadius: BorderRadius.circular(70),
                  color: Colors.black.withOpacity(0.5),),
                child: Icon(Icons.favorite_border_outlined, color: Colors.white,) ,
              ),
            ),
          ),

          // Positioned(
          //     top: 10,
          //     left: 10,
          //
          //     child: InkWell(
          //
          //
          //       child: Image.asset('assets/FavB.png'),
          //
          //     )),
          // Positioned(
          //     top: 10,
          //     left: 300,
          //     child: InkWell(
          //
          //
          //       child: Image.asset('assets/FavButton.png'),
          //
          //     )),

        ],
      ),
    ));
  }
}
