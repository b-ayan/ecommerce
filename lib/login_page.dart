import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xf0f0f0),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){},
          ),
        ),
        body: Center(child:
        Column(
          children: [
            SizedBox(height: 30,),
            Text("Welcome Back",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
            SizedBox(height: 5,),
            Text("Sign in with your email and password",
              style: TextStyle(color: Colors.grey.shade600),),
            SizedBox(height: 3,),
            Text("or continue with social media",
              style: TextStyle(color: Colors.grey.shade600),),
            SizedBox(height: 60,),
            Container(
              width: 350,
              child: TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Enter your email",
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: 350,
              child: TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Enter your password",
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always
                ),
              ),
            ),
            SizedBox(height: 35,),
            Row(children: [
              SizedBox(width: 30,),
              Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                  setState(() {
                  _isChecked = value!;
                });
                  },
              ),
              //SizedBox(width: 3,),
              Text("Remember me",style: TextStyle(color: Colors.grey,),),
              SizedBox(width: 100,),
              Text("Forgot Password",style: TextStyle(color: Colors.grey ),)
            ],),
            SizedBox(height: 25,),
            MaterialButton(onPressed: (){},
              height: 55,
              minWidth: 350,
              child: Text("Continue",
                style: TextStyle(fontSize: 18),),
              textColor: Colors.white,
              color: Colors.orange.shade800,
              shape: StadiumBorder(),),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey.shade100,
                    child: SvgPicture.asset("assets/icons/google-icon.svg")),
                SizedBox(width: 25,),
                CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey.shade100,
                    child: SvgPicture.asset("assets/icons/facebook-2.svg")),
                SizedBox(width: 25,),

                CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey.shade100,
                    child: SvgPicture.asset("assets/icons/twitter.svg")),
              ],),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontSize: 14,color: Colors.grey),),
                  SizedBox(width: 5,),
                  Text("Sign Up",style: TextStyle(fontSize: 14,color: Colors.orange.shade800),),


                ])

          ],
        )),
      ),
    );
  }
}
