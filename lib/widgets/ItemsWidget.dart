import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget{
  const ItemsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count( 
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 5, top: 10),
      children: [ 
        for(int i = 1; i < 8; i++)
        Container( 
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10), 
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), 
          decoration: BoxDecoration( 
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column( 
            children: [ 
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Container( 
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration( 
                      color: const Color.fromRGBO(66, 158, 166, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text( 
                      "-50%",
                      style: TextStyle( 
                        fontSize: 14, color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon( 
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ],
              ), 
              InkWell( 
                onTap: () {},
                child: Container( 
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/$i.png",
                    height: 120, 
                    width: 120, 
                  ),
                ),
              ), 
              Container(
                padding:EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product",
                  style: TextStyle(
                    fontSize: 18, 
                    color: Colors.black,  
                    fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Description", 
                  style: TextStyle( 
                    fontSize: 11, 
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(vertical: 10), 
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                    Text( 
                      "\$20", 
                      style: TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(66, 158, 166, 1),),
                    ),
                    Icon( 
                      Icons.add_shopping_cart,
                      color: Color.fromRGBO(66, 158, 166, 1),
                    )
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
}