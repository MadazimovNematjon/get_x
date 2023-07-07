import 'package:get/get.dart';
import 'package:get_x/contrllers/home_controller.dart';

class BindService implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeController>(HomeController());
  }
}