import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Signature(
                controller: controller.signatureController,
                backgroundColor: controller.padColor.value,
              )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.selectPadColor();
                  },
                  child: Text(
                    "Pad Color",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.selectPenColor();
                  },
                  child: Text(
                    "Pen Color",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.exportSignature();
                  },
                  child: Text(
                    "Export",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.signatureController.clear();
                  },
                  child: Text(
                    "Clear",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
