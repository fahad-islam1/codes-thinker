import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatViewModel extends GetxController with GetTickerProviderStateMixin {
  var isSelected = 0.obs;
  var searchController = TextEditingController();
  late TabController tabController; // Declare TabController

  @override
  void onInit() {
    super.onInit();
    tabController =
        TabController(length: 3, vsync: this); // Initialize TabController
  }

  @override
  void onClose() {
    tabController.dispose(); // Dispose TabController
    super.onClose();
  }
}
