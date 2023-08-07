import 'package:flutter/material.dart';
import 'package:iti_test1/Screens/task2screen.dart';

class taskscreen extends StatelessWidget {
  const taskscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // Color mainColor = Color(0xffc2eee3);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFE1F1EF),
              Color(0xD7FACCCC),
              Color(0xE5282525),
            ],
          ),
        ),
        width: double.infinity,

        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
          child: Column(
            children: [
              Image.network(
                'https://www.freepnglogos.com/uploads/camera-logo-png/artful-wonder-photography-logo-10.png',
                width: 290,
                height: 260,
              ),
              SizedBox(
                height: 30,
              ),
              _addtext(text: "Track Items"),
              _addtext(text:"To Destination"),
              _addtext(text:"Every Time"),
              SizedBox(height: 30,),
              _addsmalltext(text: "Monitor The Goods until"),
              SizedBox(height: 5,),
              _addsmalltext(text: "The destination"),
              SizedBox(height: 70,),
              InkWell(
                onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>task2screen()) );

                },
                child: Container(
                  height: 65,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Color(0xffe79999),
                    borderRadius: BorderRadius.circular(20)

                  ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Get Started",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.white70)),
                       SizedBox(width: 7,),
                        Icon(Icons.arrow_forward_ios,size: 25,color: Colors.white70,),
                      ],
                    ),
                  ),
              ),


            ],
          ),
        ),
      ),
    );

  }
} Widget _addtext({required String text}){
  //String? text;
  return Text(
    text,
    style: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
  );
}
Widget _addsmalltext({required String text}) {
  //String? text;
  return Text(
    text,
    style: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w700,
      color: Colors.white54,
    ),
  );
}
