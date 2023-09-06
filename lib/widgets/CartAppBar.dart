import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Color.fromRGBO(66, 158, 166, 1),
      padding: EdgeInsets.all(25),
      child: Row(children: [ 
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back, 
            size: 30, 
            color: Colors.white,
          ),
        ),
          Padding(
            padding: EdgeInsets.only(left: 30), 
              child: Text(  
              "Cart", 
              style: TextStyle( 
                fontSize: 23, fontWeight: FontWeight.bold, 
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.more_vert, 
            size: 30,
            color: Colors.white,
            )
        ],),
    );
  }
}