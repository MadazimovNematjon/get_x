import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/update_page.dart';

class UpdateController extends GetxController{

  final titleController = TextEditingController().obs;
  final bodyController = TextEditingController().obs;

  upData(){}
 void navigateToNextPage() {
    Get.to(()=> UpdatePage());
  }
}