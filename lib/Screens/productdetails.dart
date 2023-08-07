import 'package:flutter/material.dart';

import '../consts/images.dart';
class productdetails extends StatefulWidget {
  const productdetails({Key? key}) : super(key: key);

  @override
  State<productdetails> createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Product Details",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black ),),
        centerTitle: true,
        leading:InkWell(
          child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              radius: 24,
              child: Icon(Icons.arrow_back,color: Colors.black,)),
          onTap: () => Navigator.pop(context),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(

          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFD8F8FA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(logo5,width: 50,height:50,),

            ),
            SizedBox(height: 20,),
            Text("Product title",style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}
