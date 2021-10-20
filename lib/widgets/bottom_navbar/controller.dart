import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class BottomNavBarController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set setSelectedIndex(int index) => _selectedIndex.value = index;
}
