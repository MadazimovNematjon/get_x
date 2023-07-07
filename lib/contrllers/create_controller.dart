import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x/pages/create_page.dart';
import 'package:get_x/service/log.dart';

class CreateController extends GetxController{

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  createData(){
    String title = titleController.value.text;
    String body = bodyController.value.text;
    print('Button Pressed - Title: $title, Body: $body');
  }

  nextToPage(){
    Get.to(()=> CreatePage());
  }

}