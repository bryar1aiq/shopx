import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/controllers/product_controller.dart';
import 'package:shopx/views/product_card.dart';

class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade50,
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
              child: Obx(() {
                if (productController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return AlignedGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      itemCount: productController.productList.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                            title: productController.productList[index].title,
                            price: productController.productList[index].price
                                .toString(),
                            rating: productController.productList[index].rating
                                .toString(),
                            image: productController.productList[index].image);
                      });
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
