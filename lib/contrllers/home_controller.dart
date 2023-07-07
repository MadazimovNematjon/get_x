import 'package:get/get.dart';
import 'package:get_x/model/post.dart';

import '../service/log.dart';
import '../service/network.dart';

class HomeController extends GetxController{

  var items = [].obs;


  Future apiPostList() async {
    var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    LogService.i(response.toString());
    if (response != null) {
      items.value = Network.parsePostList(response);
    } else {
      items.value = [];
    }
  }

  Future<bool> apiDelete(Post post) async {
    var response = await Network.DEL(
        Network.API_DELETE + post.id.toString(), Network.paramsEmpty());
    apiPostList();
    return response != null;
  }

  void apiUpdate(Post post) async {
    var response = await Network.PUT(
        Network.API_UPDATE + post.id.toString(), Network.paramsUpdate(post));
    apiPostList();
  }
}