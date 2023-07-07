import 'package:get_x/contrllers/create_controller.dart';
import 'package:get_x/contrllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get_x/contrllers/update_controller.dart';

class DIService {
  static Future<void> init() async{
    // Get.put<HomeController>(HomeController());
    Get.lazyPut<HomeController>(() => HomeController(),fenix: true);
    Get.lazyPut<UpdateController>(() => UpdateController(),fenix: true);
    Get.lazyPut<CreateController>(() => CreateController(),fenix: true);
  }
}