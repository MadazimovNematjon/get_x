
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/contrllers/create_controller.dart';
import 'package:get_x/contrllers/home_controller.dart';
import 'package:get_x/contrllers/update_controller.dart';
import 'package:get_x/pages/update_page.dart';
import 'package:get_x/views/item_of_post.dart';

import '../model/post.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
static String get id => "/home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<HomeController>().apiPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("set state"),
      ),
      body: Obx(
          ()=> ListView.builder(
              itemCount: Get.find<HomeController>().items.length ,
              itemBuilder: (context, index){
                Post post = Get.find<HomeController>().items[index];
                return itemHomePost(Get.find<HomeController>(),post);
              }
          ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.find<CreateController>().nextToPage();
      },child: const Icon(Icons.add,color: Colors.white,)),
    );
  }
}
