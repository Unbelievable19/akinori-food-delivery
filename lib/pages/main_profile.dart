import 'dart:io';
import 'dart:js';

//import 'package:akinori_food_delivery/widgets/app.dart;
import 'package:akinori_food_delivery/components/food_title.dart';
import 'package:akinori_food_delivery/models/food.dart';
import 'package:akinori_food_delivery/pages/food_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class MainProfile extends StatelessWidget {
  MainProfile();

  List foodMenu = [
    Food(name: "Дракон",
        price: "429 ₽",
        image: "assets/images/drakon.jpg"),

    Food(
        name: "Kaлифорния с лососем",
        price: "359 ₽",
        image: "assets/images/kaliforniya_losos.jpeg"),

    Food(name: "Шанхай",
        price: "359 ₽",
        image: "assets/images/shanxaj.jpg"),

    Food(
        name: "Филадельфия",
        price: "389 ₽",
        image: "assets/images/fila_classic.jpeg"),
  ];

  void navigateToFoodPage(int index) {
    Navigator.push(context as BuildContext,
      MaterialPageRoute(builder: (context) => FoodPage(),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          toolbarHeight: 80,
          title: Image.asset(
            'assets/images/logo_akinori.png',
            width: 130,
          ),
          iconTheme: const IconThemeData(color: Colors.grey)),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Image.asset('assets/images/full_logo_aki.png')),
              const ListTile(
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.white,
                ),
                title: Text(
                  "Меню",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.perm_contact_cal_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Контакты",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.help_outline_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Обратная связь",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.info_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "О нас",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: const Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 15),
                    Text('пгт. Новомихайловский'),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 15),
                    Text('+7 (918) 000-56-01'),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.access_time_rounded),
                    SizedBox(width: 15),
                    Text('с 10:00 до 23:00'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          const Text("Меню",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20)),
          const SizedBox(height: 35),
          Expanded(
              child: ListView.builder(
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTitle(
                          food: foodMenu[index],
                          //onTap: () => ,
                      ))),
        ],
      ),
    );
  }
}
