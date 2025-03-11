import 'package:get/get.dart';

class OrderOptionsController extends GetxController {
  // ========= CONTROLLERS ========= //

  // ========= VARIABLES ========= //

  RxSet<int> selectedSegment = {1}.obs;
  RxBool isTakeAway = true.obs;
  RxInt selectedSize = 1.obs;

  // ========== STATES ========== //

  // ========== UI Functions ========== //

  void onSegmentChange(Set<int> newSelection) {
    selectedSegment(newSelection);
  }

  void onTakeAwayChange(bool val) {
    isTakeAway(val);
  }

  void selectSize(int index) {
    selectedSize.value = index;
  }

  // ========== APIs Functions ========== //
}
