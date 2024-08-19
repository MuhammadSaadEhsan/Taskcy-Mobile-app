import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  var formattedDate = ''.obs; // Observable for the formatted date

  @override
  void onInit() {
    super.onInit();
    updateFormattedDate(); // Set the formatted date on initialization
  }

  void updateFormattedDate() {
    DateTime now = DateTime.now();

    // Format the date as "Friday, 26"
    String day = DateFormat('EEEE').format(now); // Day as "Friday"
    String date = DateFormat('d').format(now); // Date as "26"

    // Combine the day and date
    formattedDate.value = '$day, $date';

    //for bottom navigation bar
  }
    var selectedIndex = 0.obs;

    void changeIndex(int index) {
      selectedIndex.value = index;
    }
}
