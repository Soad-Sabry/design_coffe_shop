import 'package:coffeshop/widgets/coffeecategory.dart';
import 'package:flutter/material.dart';
import '../widgets/cardcoffee.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 30),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),

              SizedBox(height: 4),
              Text(
                'Bilzen, Tanjungbalai',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF545250),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search Coffee",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    height: 48, // ارتفاع الزر
                    width: 48, // عرض الزر
                    decoration: BoxDecoration(
                      color: Color(0xFFCA6A4A),
                      borderRadius: BorderRadius.circular(12),                     ),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height:150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/promo.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16),


                  ),

                  child: Padding(

                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Promo",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),),
                            ),
                        ),
                        Text("Buy one get\none FREE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),

                      ],

                    ),
                  ),

                  ),
              ),



              CoffeeCategory(),
              SizedBox(height: 16,),

              Expanded(
                child: GridView.builder(itemCount:4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                
                  ), itemBuilder: (BuildContext context, int index) {
                
                    return CoffeeCard();
                  },
                ),
              ),


            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),


    );
  }
}
