import 'package:flutter/material.dart';
import 'package:shooping/pages/product.page.dart';
import 'package:shooping/widgets/category/category-list.widget.dart';
import 'package:shooping/widgets/product/product-list.wiget.dart';
import 'package:shooping/widgets/search-box.widgets.dart';

import '../enter_exit_router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          color: Color(0xFFF5F5F5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SizedBox(
              height: 40,
            ),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 8,
            ),
            CategoryList(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextButton(onPressed: () {}, child: Text("See All"))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: ProductList(),
            )
          ]),
        ),
      ),
    );
  }
}
