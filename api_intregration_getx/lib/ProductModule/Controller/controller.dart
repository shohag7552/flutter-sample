import 'package:api_intregration_getx/ProductModule/Model/product_model.dart';
import 'package:api_intregration_getx/apimodule/api_service.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  ApiService api = ApiService();
  var isLoading = true.obs;

  //RxList<Products> _productList = [].obs;
  var _productList = List<Products>().obs;

  List<Products> get getProducts => this._productList;
  set setProducts(List<Products> value) => this._productList = value.obs;

  void fetchProduct() async {
    var items = await api.fetchData();

    if (items != null) {
      setProducts = items;
    }
    update();
  }
}
