import 'package:get/get.dart';
import 'package:shopx/models/product_model.dart';
import 'package:shopx/services/remote_services.dart';

class ProductController extends GetxController {
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  var productList = <Product>[].obs;
  var isLoading = true.obs;

  void fetchProducts() async {
    try{
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if(products != null){
        productList.value = products;
      }
    } finally{
      isLoading(false);
    }

  }
}