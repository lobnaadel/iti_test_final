import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class task2screen extends StatelessWidget {
  const task2screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    _addtext(text: "Price Monitor"),
                    Spacer(),
                    Icon(
                      CupertinoIcons.search,
                      size: 28,
                      color: Colors.grey,
                    ),
                    Text(
                      "search",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _addimage(
                        URL:
                            'https://static.vecteezy.com/system/resources/previews/008/215/314/original/camera-dslr-line-pop-art-logo-colorful-design-with-dark-background-abstract-illustration-isolated-black-background-for-t-shirt-poster-clothing-merch-apparel-badge-design-vector.jpg'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Photo Camera",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Features",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 110,
                            ),
                            Icon(
                              Icons.menu,
                              size: 25,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            _addContainer(text: "ISO", widthh: 65),
                            SizedBox(
                              width: 19,
                            ),
                            _addContainer(text: "Back Focus", widthh: 127)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            _addContainer(text: "Metering", widthh: 90),
                            SizedBox(
                              width: 25,
                            ),
                            _addContainer(text: "Focusing", widthh: 95),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    _addtext(text: "Shopes:"),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 28,
                      color: Colors.grey,
                    ),
                    Text(
                      "Best Price",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _addimage(
                        URL:
                            'https://c8.alamy.com/comp/2F96FMJ/photography-camera-logo-icon-vector-design-template-isolated-on-black-background-2F96FMJ.jpg'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _addtitleofshopes(text: "Lorem Shop"),
                        SizedBox(
                          height: 15,
                        ),
                        _addtexttitle(text: "Shipping : Free"),
                        SizedBox(
                          height: 10,
                        ),
                        _addinlinetitle(),
                        SizedBox(
                          height: 10,
                        ),
                        _addpriceContainer(text: "\$ 1.865", color: Colors.yellow),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _addimage(
                        URL:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_P4xxYuKY12eil5ajlBX8MvfxagHm7PZU_ZWFIni5OSdp9plFbdD56pPaRSEXjOY9suU&usqp=CAU'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _addtitleofshopes(text: "Ipsum Shop"),
                        SizedBox(
                          height: 15,
                        ),
                        _addtexttitle(text: "Shipping : 3.6"),
                        SizedBox(
                          height: 10,
                        ),
                        _addinlinetitle(),
                        SizedBox(
                          height: 10,
                        ),
                        _addpriceContainer(
                            text: "\$ 1.901", color: Colors.blueAccent),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _addimage(
                        URL:
                            'https://cdn1.vectorstock.com/i/1000x1000/60/70/retro-camera-poster-vector-3566070.jpg'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _addtitleofshopes(text: "Dolor Shop"),
                        SizedBox(
                          height: 15,
                        ),
                        _addtexttitle(text: "Shipping : Free"),
                        SizedBox(
                          height: 10,
                        ),
                        _addinlinetitle(),
                        SizedBox(
                          height: 10,
                        ),
                        _addpriceContainer(text:"\$ 1.987", color: Colors.green),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _addContainer({required String text, required double widthh}) {
  Color mainColor = Color(0xffe5e2e2);
  return Container(
    width: widthh,
    height: 26,
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
        child: Text(
      text,
      style: TextStyle(fontSize: 19),
    )),
  );
}

Widget _addtext({required String text}) {
  return Text(text,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold));
}

Widget _addimage({required String URL}) {
  return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.network(URL));
}

Widget _addtitleofshopes({required String text}) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        width: 50,
      ),
      Icon(
        Icons.menu,
        size: 25,
        color: Colors.grey,
      ),
    ],
  );
}

Widget _addtexttitle({required String text}) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 22, fontWeight: FontWeight.w700, color: Colors.grey),
  );
}

Widget _addinlinetitle() {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.cabin,
        size: 25,
        color: Colors.grey,
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        "Go On Website",
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.grey),
      ),
    ],
  );
}

Widget _addpriceContainer({required String text, required Color color}) {
  Color mainColor = color;
  return Container(
    width: 110,
    height: 30,
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
        child: Text(
      text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    )),
  );
}
