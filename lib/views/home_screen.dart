import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 30,
            )),
        actions: const [
          InkWell(
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ShopX',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.menu_outlined,
                  size: 35,
                ),
              ],
            ),
          ),
          Expanded(
              child: StaggeredGrid.count(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 2,
                children: [
                  Container(
                    color: Colors.redAccent,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
