import 'package:carousel_slider/carousel_slider.dart';
import 'package:clouduka/shared/colors.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final List<String> imgList = [
    ' https://clouduka.co.ke/clouduka-shops/images/imagine.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white54),
              hintText: " Search on ClouDuka",
              border: InputBorder.none,
              icon: IconButton(
                icon: Icon(Icons.search),
                color: whiteThemeColor,
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        elevation: 0,
        backgroundColor: mainThemeColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            ListView(
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    //1st Image of Slider
                    Container(
                      width: 280.0,
                      //height: 200,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://clouduka.co.ke/clouduka-shops/images/imagine.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Up to 50% OFF",
                              style: TextStyle(
                                  color: darkText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                            Text(
                              "Imagine Lighting",
                              style: TextStyle(
                                  color: mainThemeColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Text(
                                "Get the most out of your lighting. Let your lifestyle break the usual boredom Shop with us today",
                                style: TextStyle(color: darkText, fontSize: 12))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                            ]
                        ),
                        child: CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Colors.white,
                          child: Column(
                            children: [
                              Image.asset("assets/images/makeup.png", height: 40.0,),

                            ],
                          ),
                        ),
                      ),
                      Text("Beauty", style: TextStyle(color: darkText, fontSize: 12),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                            ]
                        ),
                        child: CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Colors.white,
                          child: Column(
                            children: [
                              Image.asset("assets/images/pot.png", height: 40.0,)
                            ],
                          ),
                        ),
                      ),
                      Text("Kitchen", style: TextStyle(color: darkText, fontSize: 12),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                            ]
                        ),
                        child: CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Colors.white,
                          child: Column(
                            children: [
                              Image.asset("assets/images/toys.png", height: 40.0,)
                            ],
                          ),
                        ),
                      ),
                      Text("Toys", style: TextStyle(color: darkText, fontSize: 12),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                            ]
                        ),
                        child: CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Image.asset("assets/images/electronics.png", height: 35.0,),
                              )
                            ],
                          ),
                        ),
                      ),
                      Text("Appliances", style: TextStyle(color: darkText, fontSize: 12),)
                    ],
                  ),Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                            ]
                        ),
                        child: CircleAvatar(
                          radius: 22.0,
                          backgroundColor: Colors.white,
                          child: Column(
                            children: [
                              Image.asset("assets/images/fashion.png", height: 40.0,)
                            ],
                          ),
                        ),
                      ),
                      Text("Clothing", style: TextStyle(color: darkText, fontSize: 12),)
                    ],
                  ),
                ],
              ),
            ),
                Divider(height: 1.0,),
                SizedBox(height: 10.0,),
                Text("Deals of the month", style: TextStyle(color: darkText, fontWeight: FontWeight.bold),),

                //////SECTION??????????????????????????????????????????????????
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(image: NetworkImage("https://clouduka.co.ke/clouduka-shops/images/teaser.webp")),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                        child: Text("IMPORTED SNACKS KENYA", style: TextStyle(color: mainThemeColor, fontWeight: FontWeight.bold),)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("MALTESERS", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                    Row(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("UP TO ", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("50%", style: TextStyle(color: mainThemeColor, fontSize: 18,fontWeight: FontWeight.bold),)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(image: NetworkImage("https://clouduka.co.ke/uploads/15/21/06/020621162264012560b785fd617eb.webp"))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("GUIDE GLAM", style: TextStyle(color: mainThemeColor, fontWeight: FontWeight.bold),)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("AFRICA GOLD", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                    Row(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("UP TO ", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("70%", style: TextStyle(color: mainThemeColor, fontSize: 18,fontWeight: FontWeight.bold),)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 1.0,),
                SizedBox(
                  height: 10,
                ),
                Text("Featured Products", style: TextStyle(color: darkText, fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(image: NetworkImage("https://clouduka.co.ke/clouduka-shops/images/teaser.webp")),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("IMPORTED SNACKS KENYA", style: TextStyle(color: mainThemeColor, fontWeight: FontWeight.bold),)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("MALTESERS", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                          Row(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("UP TO ", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("50%", style: TextStyle(color: mainThemeColor, fontSize: 18,fontWeight: FontWeight.bold),)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(image: NetworkImage("https://clouduka.co.ke/uploads/15/21/06/020621162264012560b785fd617eb.webp"))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("GUIDE GLAM", style: TextStyle(color: mainThemeColor, fontWeight: FontWeight.bold),)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("AFRICA GOLD", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                          Row(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("UP TO ", style: TextStyle(color: darkText, fontSize: 18,fontWeight: FontWeight.bold),)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("70%", style: TextStyle(color: mainThemeColor, fontSize: 18,fontWeight: FontWeight.bold),)),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
          ],
          ),
        ),
      ),
    );
  }
}
