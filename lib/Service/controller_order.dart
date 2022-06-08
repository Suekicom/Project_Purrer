
import 'package:app_purrer/Product/product_api.dart';
import 'package:app_purrer/Service/controller.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';                                 
class Controllerorder extends GetxController {
  var isLoading = true.obs;
  var productList = <Products>[].obs;
  var _product = {}.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }

  void addProduct(Products product) {
    if (_product.containsKey(product)) {
      _product[product] += 1;
    } else {
      _product[product] = 1;
    }
    Get.snackbar(
      'Product Added',
      'You have added the ${product.name} to the Cart',
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
    );
  }

  void removeProduct(Products product) {
    if (_product.containsKey(product) && _product[product] == 1) {
      _product.removeWhere((key, value) => key == product);
    } else {
      _product[product] -= 1;
    }
  }

  get product => _product;

  get productSubtotal => _product.entries
      .map((prducts) => prducts.key.price * prducts.value)
      .toList();

  get total => _product.entries
      .map((prducts) => prducts.key.price * prducts.value)
      .toList()
      .reduce((value, element) => (value + element));

  void clear() {
    _product = {}.obs;
  }
}
