import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_test1/main/screens/mainscreen.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  final _namecontroller = TextEditingController();
  final _phonecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _form=GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool iscorrect=true;
  bool obscureText = true;

  void _togglePasswordText() {
    obscureText = !obscureText;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFE1F1EF),
                Color(0xFFFCEDED),
                Color(0xFF282525),
              ],
            ),),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 100, left: 25, right: 25, bottom: 60),
            child: SingleChildScrollView(
              child: Form(
                key: _form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _texttitle(text: "Welome to our"),
                    SizedBox(
                      height: 20,
                    ),
                    _texttitle(text: "grocery shop"),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 350,
                      height: 550,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              _textoftextfield(text: "Name"),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(

                                decoration:

                                InputDecoration(
                                  border: OutlineInputBorder(

                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),

                                  ),

                                  focusedBorder: _buildOutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              _textoftextfield(text: "Phone number"),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: _phonecontroller,
                                validator: (value) {
                                  if (_phonecontroller.text.length !=11) {
                                    return "phone should be 11 digits";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  suffixIcon: iscorrect
                                      ? Icon(Icons.check_circle,color: Colors.cyan,)
                                      : Icon(
                                    Icons.dangerous,
                                    color: Colors.red,
                                  ),
                                  border: OutlineInputBorder(

                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  focusedBorder: _buildOutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              _textoftextfield(text: "Password"),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: _passwordcontroller,
                                validator: (value) {
                                  if (_passwordcontroller.text.length < 5)
                                    return "you should enter password >5 digits";
                                  else
                                    return null;
                                },
                                obscureText: obscureText,
                                decoration: InputDecoration(

                                  suffixIcon: InkWell(
                                    onTap: _togglePasswordText,
                                    child: Icon(
                                      obscureText
                                          ? CupertinoIcons.eye_fill
                                          : CupertinoIcons.eye_slash_fill,
                                      color: Colors.black,
                                    ),
                                  ),

                                   border: OutlineInputBorder(

                                     borderSide: BorderSide(color: Colors.grey),
                                     borderRadius: BorderRadius.circular(10),

                                   ),
                                  focusedBorder: _buildOutlineInputBorder(),
                                  //enabledBorder: _buildOutlineInputBorder(),
                                 // errorBorder: _buildOutlineInputBorder(),
                                  //disabledBorder: _buildOutlineInputBorder(),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 74,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF74DBDC),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {

                                        });
                                      },
                                        child: InkWell(
                                          onTap: () {
                                            _form.currentState?.validate();
                                            if(_phonecontroller.text.length ==11 && _passwordcontroller.text.length>5)
                                              {
                                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => mainscreen(),), (route) => false);
                                                setState(() {

                                                });
                                              }
                                          },
                                          child: Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                        )),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 58,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Aleardy Have Account?",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "Log in",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xFF74DBDC),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _texttitle({required String text}) {
  return Text(
    text,
    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
  );
}

Widget _textoftextfield({required String text}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 22, fontWeight: FontWeight.w700, color: Colors.grey),
  );
}

OutlineInputBorder _buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.circular(7),
  );
}
