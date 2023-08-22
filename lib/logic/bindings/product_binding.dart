import 'package:get/instance_manager.dart';
import 'package:naped_shop/logic/controllers/cart_controller.dart';

import '../controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());

  }
}
