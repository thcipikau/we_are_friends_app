import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:we_are_friends_app/pages/friends/friends_controller.dart';

class FriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FriendsController());
  }
}
