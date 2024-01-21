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
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2),
        child: Column(
          children: [
            const Row(
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
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: AlignedGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.redAccent,
                      height: 200,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
