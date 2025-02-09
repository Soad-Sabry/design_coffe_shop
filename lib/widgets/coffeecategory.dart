import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeCategory extends StatefulWidget {
  @override
  _CoffeeCategoryState createState() => _CoffeeCategoryState();
}

class _CoffeeCategoryState extends State<CoffeeCategory> {
  int selectedIndex = 0;

  final List<String> categories = [
    "All Coffee",
    "Macchiato",
    "Latte",
    "Americano"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: selectedIndex == index ? Colors.brown : Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
