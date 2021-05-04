import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Container(
            child: productList(context),
          ),
        ),
        Container(
          color: Colors.black12,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$4250",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 150,
                margin: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    "Checkout",
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

Widget productList(BuildContext context) {
  return ListView(
    children: [
      productItem(context, "BeoPlay Speaker", "755", "assets/product-1.png"),
      productItem(
          context, "Leather Wristawatch", "450", "assets/product-2.png"),
      productItem(
          context, "Smart Bluetooth Speaker", "900", "assets/product-3.png"),
      productItem(context, "Smart Luggage", "100", "assets/product-4.png"),
      productItem(context, "Smartphone Case", "99", "assets/product-5.png"),
      productItem(context, "Speakers Stand", "49", "assets/product-6.png"),
      productItem(context, "Airpods", "199", "assets/product-7.png"),
    ],
  );
}

Widget productItem(
    BuildContext context, String title, String price, String asset) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(8),
    child: Row(
      children: [
        Container(
            width: 110,
            height: 110,
            padding: EdgeInsets.all(10),
            child: Image.asset(
              asset,
              fit: BoxFit.fitWidth,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(
                "\$$price",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {},
                            child: Text("+",
                                style: TextStyle(color: Colors.black)))),
                    Text("1"),
                    Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "-",
                              style: TextStyle(color: Colors.black),
                            )))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
