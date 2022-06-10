import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:visibility/pricipal_controller.dart';

class Principal extends GetView<PricipalController> {
  @override
  PricipalController controller = Get.put(PricipalController());
  Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Obx(() => Visibility(
                  child: const Text("Invisible"),
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: controller.isVisibility1.value,
                )),
            const SizedBox(
              height: 50,
            ),
            Obx(() => Visibility(
                  child: const Text("Invisible 2"),
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: controller.isVisibility2.value,
                )),
            // Obx(() => Switch(
            //     onChanged: (val) => controller.toggle(),
            //     value: controller.on.value)),
            Obx(() => Switch(
                  value: controller.isEnableSwitch.value,
                  onChanged: (value) => controller.changeValueSwitch(value),
                ))
            //ElevatedButton(onPressed: (), child: Text("Troca"))
          ],
        ),
      )),
    );
  }
}
