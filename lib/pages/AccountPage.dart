import 'package:flutter/material.dart';
import 'package:great4you/pages/CartPage.dart';
import 'package:great4you/pages/SalesPage.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Personal Information",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: const Color.fromRGBO(66, 158, 166, 1),
      ),
 
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                    onPressed: () {
                      // Ação a ser executada quando o primeiro botão for pressionado
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                    ),
                    child: const Text(
                      'General Info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color:  Color.fromRGBO(66, 158, 166, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                    ),
                    child: const Text(
                      'Address',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color:  Color.fromRGBO(66, 158, 166, 1),

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                    ),
                    child: const Text(
                      'My Orders',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color:  Color.fromRGBO(66, 158, 166, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
                    ),
                    child: const Text(
                      'Favorites',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color:  Color.fromRGBO(66, 158, 166, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      

        backgroundColor: const Color.fromRGBO(236, 235, 228, 1),
        bottomNavigationBar: BottomAppBar(

        height: 80,
        shape: const CircularNotchedRectangle(), 
        color: const Color.fromRGBO(66, 158, 166, 1),
        child: IconTheme(

          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(

            padding: const EdgeInsets.all(12.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                IconButton(

                  onPressed: () {},
                  icon: const Icon(Icons.person),

                ),

                IconButton(

                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartPage(),
                          ),
                        );
                  },
                  icon: const Icon(Icons.shopping_cart_checkout),

                ),

                IconButton(

                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SalesPage(),
                          ),
                        );
                  },
                  icon: const Icon(Icons.settings),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}