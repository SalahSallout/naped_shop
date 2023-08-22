import 'package:get/instance_manager.dart';

import '../controllers/main_controller.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    //Get.put(SettingController());
    //Get.put(PayMentController(), permanent: true);
  }
}
