import 'package:flutter/material.dart';
import 'package:food_app_ui_animation/animations/FadeAnimation.dart';

class StarterPage extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/starter-image.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.2),
                ]
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FadeAnimation(0.5, Text('Taking Order For Delivery', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),)),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(1,Text('See restaurants nearby by \nadding location',style: TextStyle(color: Colors.white, height: 1.4, fontSize: 18),)),
                  SizedBox(
                    height: 100,
                  ),
                  FadeAnimation(1.2,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange
                        ]
                      )
                    ),
                    child: MaterialButton(
                      onPressed: (){

                      },
                      minWidth: double.infinity,
                      child: Text('Start', style: TextStyle(color: Colors.white),),
                    ),
                  )),
                  SizedBox(height: 30,),
                FadeAnimation(1.4,
                  Align(
                    child: Text('Now Deliver To Your 24/7', style: TextStyle(color: Colors.white70, fontSize: 15),),
                  )),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ),
        )
    );
  }
}
