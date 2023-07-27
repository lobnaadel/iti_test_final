import 'package:flutter/material.dart';
class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        title: Text('my app',style: TextStyle(fontSize: 25),),
        centerTitle:true ,
        leading: Icon(Icons.drafts),
        actions: [

          Icon(Icons.download),
          SizedBox(width: 7,),
          Icon(Icons.access_alarm),
          SizedBox(width: 7,),
          Icon(Icons.phone_android),
          SizedBox(width: 7,),

        ],
      ),
      body:Center(
        child: Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email,size: 22,),
                  SizedBox(width: 10,),
                  Text("lubna@gmail.com",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 6,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.password_outlined,size: 22,),
                  SizedBox(width: 10,),
                  Text("123456",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
