import 'package:flutter/material.dart';
import 'package:great4you/pages/AccountPage.dart';
import 'CartPage.dart';
import 'OptionsPage.dart';
import '/widgets/ItemsWidget.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});
  @override
    Widget build(BuildContext context) {
      return Scaffold( 
        appBar: AppBar (
           title: const Text(
            "Sales", 
            style: TextStyle( 
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ), 
           ),
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: const Color.fromRGBO(66, 158, 166, 1),
        ),
        body: ListView(children: const [
            ItemsWidget(),
        ],),
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

                  onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AccountPage(),
                          ),
                        );
                      },
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
                            builder: (context) => const OptionsPage(),
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
      ) ;
    }
}

