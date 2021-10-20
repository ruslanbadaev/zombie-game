import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../controller.dart';

class MainController extends GetxController {
  AppController appController = Get.find();

  MainController() {
    loadData();
  }

  loadData() async {}
}
