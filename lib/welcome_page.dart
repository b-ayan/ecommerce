import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'slider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentPage=0;
  PageController _controller= PageController();
  List <Widget> _pages=[
    SliderPage(image:"assets/images/splash_1.png"),
    SliderPage(image:"assets/images/splash_2.png"),
    SliderPage(image:"assets/images/splash_3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Text("TOKOTO",style: TextStyle(fontSize: 40,color: Colors.orange.shade800,fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              Text("Welcome to Tokoto,Let's shop!",style: TextStyle(color: Colors.grey.shade600),),
              SizedBox(height: 60,),
            Image.asset("assets/images/splash_1.png",height: 250),
              SizedBox(height: 40,),
              SmoothPageIndicator(
                controller: _controller,
                count:  3,
                axisDirection: Axis.horizontal,
                effect:  ExpandingDotsEffect(
                   // spacing:  8.0,
                    //radius:  4.0,
                    dotWidth:  8.0,
                    dotHeight:  8.0,
                    //paintStyle:  PaintingStyle.stroke,
                    //strokeWidth:  1.5,
                    dotColor:  Colors.grey,
                    activeDotColor:  Colors.orange.shade800
                ),
              ),
              SizedBox(height: 100,),
              MaterialButton(onPressed: (){},
                height: 55,
                minWidth: 350,
                child: Text("Continue",
                  style: TextStyle(fontSize: 18),),
                textColor: Colors.white,
                color: Colors.orange.shade800,
                shape: StadiumBorder(),),

              
            ],
          ),
        ),
      ),
    );
  }
}
