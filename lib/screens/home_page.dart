// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Icon(
          Icons.monetization_on,
          color: Colors.green.shade800,
          size: 50,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Card",
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 200,
                  child: PageView(
                    controller: _controller,
                    children: [
                      MyCard(
                        balance: 5486.87,
                        creditNumber: 4939,
                        creditMount: 12,
                        creditYear: 24,
                        color: Colors.purple.shade400,
                      ),
                      MyCard(
                        balance: 9180.76,
                        creditNumber: 7070,
                        creditMount: 25,
                        creditYear: 28,
                        color: Colors.green.shade200,
                      ),
                      MyCard(
                        balance: 7411.56,
                        creditNumber: 4919,
                        creditMount: 31,
                        creditYear: 26,
                        color: Colors.blue.shade200,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    ImagePath:
                        "https://cdn-icons-png.flaticon.com/128/2769/2769257.png",
                    ImageText: "Send",
                  ),
                  MyButton(
                      ImagePath:
                          "https://cdn-icons-png.flaticon.com/128/677/677069.png",
                      ImageText: "Pay"),
                  MyButton(
                      ImagePath:
                          "https://cdn-icons-png.flaticon.com/128/1052/1052815.png",
                      ImageText: "Bills"),
                ],
              ),
              SizedBox(height: 50),
              MyListTile(
                titleText: "Statistics",
                subText: "Payment and Income",
                imagePath:
                    "https://cdn-icons-png.flaticon.com/128/7460/7460830.png",
                Icon: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(height: 20),
              MyListTile(
                titleText: "Transactions",
                subText: "Transactions History",
                imagePath:
                    "https://cdn-icons-png.flaticon.com/128/6184/6184467.png",
                Icon: Icon(Icons.arrow_forward_ios),
              ),
              SizedBox(height: 20),
              MyListTile(
                titleText: "Exchange",
                subText: "Exchange History",
                imagePath:
                    "https://cdn-icons-png.flaticon.com/128/3467/3467530.png",
                Icon: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
