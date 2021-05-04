import 'package:flutter/material.dart';
import 'package:shooping/pages/product.page.dart';

class ProductItem extends StatelessWidget {
  final String asset;
  final String title;
  final String brand;
  final String price;
  ProductItem(
      {@required this.asset,
      @required this.title,
      @required this.price,
      @required this.brand});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductPage(
                        asset: asset,
                        brand: brand,
                        title: title,
                      )));
            },
            child: Image.asset(
              asset,
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 60,
            child: Text(
              title,
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1.color,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            brand,
            style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: 14,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
