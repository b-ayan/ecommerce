import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompletePage extends StatefulWidget {
  const CompletePage({Key? key}) : super(key: key);

  @override
  State<CompletePage> createState() => _CompletePageState();
}

class _CompletePageState extends State<CompletePage> {
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
            Text("Complete Profile",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
            SizedBox(height: 5,),
            Text("Complete your details or continue",
              style: TextStyle(color: Colors.grey.shade600),),
            SizedBox(height: 3,),
            Text("with social media",
              style: TextStyle(color: Colors.grey.shade600),),
            SizedBox(height: 60,),
            Container(
              width: 350,
              child: TextField(
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
                    suffixIcon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Enter your first name",
                    labelText: "First Name",
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
                    suffixIcon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Enter your last name",
                    labelText: "Last Name",
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
                    suffixIcon: Icon(Icons.phone_iphone_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Enter your phone number",
                    labelText: "Phone Number",
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
                    suffixIcon: Icon(Icons.location_on_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Enter your phone address",
                    labelText: "Address",
                    floatingLabelBehavior: FloatingLabelBehavior.always
                ),
              ),
            ),
            SizedBox(height: 30,),
            MaterialButton(onPressed: (){},
              height: 55,
              minWidth: 350,
              child: Text("Continue",
                style: TextStyle(fontSize: 18),),
              textColor: Colors.white,
              color: Colors.orange.shade800,
              shape: StadiumBorder(),),
            SizedBox(height: 30,),
            Text("By continuing your confirm that you agree",style: TextStyle(color: Colors.grey),),
            SizedBox(height: 5,),
            Text("with our Terms and Conditions",style: TextStyle(color: Colors.grey),)
            
          ],
        )),
      ),
    );
  }
}
