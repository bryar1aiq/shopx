import 'package:http/http.dart' as http;
import 'package:shopx/models/product_model.dart';

class RemoteServices {
  static Future<List<Product>?> fetchProducts() async{
    var url = Uri.parse('https://fakestoreapi.com/products');
    var response = await http.get(url);
    if(response.statusCode == 200){
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}