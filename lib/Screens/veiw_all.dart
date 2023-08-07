
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_nav_bar/bottom_nav_bar.dart';
import 'package:iti_test1/Screens/item.dart';
import '../consts/images.dart';
class veiw_all extends StatelessWidget {
  const veiw_all({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:InkWell(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              radius: 24,
              child: Icon(Icons.arrow_back,color: Colors.black,)),
        ),
        titleSpacing: 70,
        title: Text("Popular Pack",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

      ),
      bottomNavigationBar:Padding(
        padding: EdgeInsets.only(bottom: 8.0,left: 8,right: 8),
        child: InkWell(
          onTap: () {
          },
          child: Container(

            height: 65,
            decoration: BoxDecoration(
                color: Color(0xFF67C1C2),
                borderRadius: BorderRadius.circular(20)
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 30,),
                Text('Create Own Pack',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: double.infinity,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.70, crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => _builditem(),
            itemCount: 10,
          ),
        ),
      ),


    );
  }

  Widget _builditem() {
    return Container(
      margin: EdgeInsets.only(right: 15,bottom: 15),
      height: 200,
      width: 240,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              logo4,
              height: 90,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "camera",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                        width: 130,
                        child: Text(
                          "udhrird hyguuy ggyuutgyu",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.grey[400]),
                        )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "\$35",
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "50.32",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFF67C1C2),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

