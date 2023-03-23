import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter/screens/home_page.dart';
import 'package:my_first_flutter/widgets/shop_card11.dart';

class ShopDesign1 extends StatelessWidget {
  const ShopDesign1({super.key});

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
          PopupMenuButton(
            onSelected: (result) {
              if (result == 0) {
                Get.to(() => Get.to(MyHomePage()));
              } else if (result == 1) {
                Get.to(() => Get.to(MyHomePage()));
              }
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Item 1'),
                ),
              ),
              const PopupMenuItem(
                value: 0,
                child: InkWell(
                  child: ListTile(
                    leading: Icon(Icons.anchor),
                    title: Text('Item 2'),
                  ),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Item 3'),
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(child: Text('Item A')),
              const PopupMenuItem(child: Text('Item B')),
            ],
          ),
        ],
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            //top category section
            Text(
              "Category",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //first row
            Row(
              children: [
                Expanded(
                  child: ShopCard11(
                    img: "images/food1.png",
                    title: "Category 1",
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: ShopCard11(
                    img: "images/plant1.jpg",
                    title: "Category 2",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            //second row
            Row(
              children: [
                Expanded(
                  child: ShopCard11(
                    img: "images/food1.png",
                    title: "Category 3",
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: ShopCard11(
                    img: "images/plant1.jpg",
                    title: "Category 4",
                  ),
                ),
              ],
            ),
            //space
            SizedBox(
              height: 20,
            ),
            //Recommended section
            Text(
              "Recommended",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //TODO: Add a gridview
          ],
        ),
      ),
      //Add your bottom navigation
      //BOTTOM NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          //Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Places"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "News"),
        ],
      ),
    );
  }
}