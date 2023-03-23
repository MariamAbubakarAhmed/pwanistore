import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'dashboard_controller.dart';

import 'package:pwanistore/widgets/horizcard.dart';
import 'package:pwanistore/widgets/horizcardbg.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(160, 186, 235, 1),
        //search bar
        title: Container(
          height: 40,
          child: TextField(
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              hintText: "Treva Shop",
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
        //trailing icons
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),

      ]),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(160, 186, 235, 1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //space
              SizedBox(
                height: 30,
              ),

              //space
              SizedBox(
                height: 10,
              ),
              //image container
              Container(
                width: Get.width,
                height: Get.height * .4,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    //image section
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/food1.png"),
                              fit: BoxFit.cover,
                              alignment: Alignment.centerRight),
                        ),
                      ),
                    ),
                    //text section
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EXTRA 40% off",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "On raw food materials",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: Get.width * .3,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(255, 138, 0, 1)),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "SHOP NOW",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(160, 186, 235, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              //Space
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Shop by Diet",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              //first horizontal scroll
              Container(
                height: 150,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //container with image and text
                    HorizCard(img: "antique-furniture-948524__340.png", title: "Antiques"),
                    //container with image and text
                    HorizCard(img: "chair-2587847__340.jpg", title: "Furniture"),
                    //container with image and text
                    HorizCard(img: "childhat.jpg", title: "Hats"),
                    //container with image and text
                    HorizCard(img: "gemstone-665708__340.jpg", title: "Jewellery"),
                  ],
                ),
              ),
              //Space
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Today's deals",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              //second horizontal scroll
              Container(
                height: 150,
                width: Get.width,
                padding: EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //container with bg image and text
                    HorizCardBg(img: "images/forestbg.jpg", title: "Food 1"),
                    //container with bg image and text
                    HorizCardBg(img: "images/forestbg.jpg", title: "Food 1"),
                    //container with bg image and text
                    HorizCardBg(img: "images/forestbg.jpg", title: "Food 1"),
                    //container with bg image and text
                    HorizCardBg(img: "images/forestbg.jpg", title: "Food 1"),
                  ],
                ),
              ),
              //Space
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),

    );

  }
}