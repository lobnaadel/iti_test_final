import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_test1/Screens/sign_up.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFE1F1EF),
              Color(0xFFFCEDED),
              //Color(0x90282525),
            ],
          ),),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0x13009688),
                  ),
                  child: Image.network(
                    'https://www.freepnglogos.com/uploads/camera-logo-png/camera-colour-fashion-vector-logo-18.png',
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Welome To Our",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "Arttul Wonder",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0x4C065E67),
                ),
              ),
              SizedBox(
                height: 110,
              ),
              InkWell(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => sign_up(),)),
                child: Container(
                  width: 370,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x4C034E56),
                  ),
                  child: Center(
                      child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("OR",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Icon(
                        Icons.apple,
                        size: 50,
                      ),
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                              'assets/images/google.png'),
                        )),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/twitter.png',
                            width: 40,
                            height: 40,
                          ),
                        )),
                    Icon(
                       Icons.facebook_sharp,
                      size: 65,
                      color: Color(0xff0725b9),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
