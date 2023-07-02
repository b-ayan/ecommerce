import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
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
            Text("Forgot Pssword",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
            SizedBox(height: 5,),
            Text("Please enter your email and we will send",
              style: TextStyle(color: Colors.grey.shade600),),
            SizedBox(height: 3,),
            Text("you a link to return to your account",
              style: TextStyle(color: Colors.grey.shade600),),
            SizedBox(height: 70,),
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

            SizedBox(height: 90,),
            MaterialButton(onPressed: (){},
              height: 55,
              minWidth: 350,
              child: Text("Continue",
                style: TextStyle(fontSize: 18),),
              textColor: Colors.white,
              color: Colors.orange.shade800,
              shape: StadiumBorder(),),
            SizedBox(height: 80,),

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
