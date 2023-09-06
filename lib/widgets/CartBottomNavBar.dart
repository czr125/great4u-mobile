import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 130,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total:",
                    style: TextStyle(
                      color: Color.fromRGBO(66, 158, 166, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$60",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(66, 158, 166, 1),
                    ),
                  )
                ],
              ),

              Container( 
                alignment: Alignment.center,
                height: 50, 
                width: double.infinity,
                decoration: BoxDecoration( 
                  color: Color.fromRGBO(66, 158, 166, 1), 
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  "Check Out", 
                  style: TextStyle( 
                    fontSize: 16, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,
                  ),
                ),
              )


            ]
        ),
      ),
    );
  }
}
