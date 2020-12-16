import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:vonline/controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController inc = Get.put(HomeController());
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Obx(() => Text('Total:${inc.countme}')),
            RaisedButton(
              onPressed: () {
                inc.increment();
              },
            ),

            Row(
              children: [
                Expanded(child: GetX<HomeController>(
                  builder: (controller) {
                    return ListView.builder(
                        itemCount: controller.sectors.length,
                        itemBuilder: (context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            children: [
                              Text('${inc.sectors[index].sectorName}')
                              ],),  
                          );
                        });
                  },
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
