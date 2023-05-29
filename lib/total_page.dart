import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplefluttercart/my_cart.dart';
import 'package:simplefluttercart/my_controller.dart';

class TotalPage extends StatelessWidget {
  final MyController c = Get.put(MyController());
  TotalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total items',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => Text(
                  '${c.sum.toString()}',
                  style: TextStyle(fontSize: 30, color: Colors.redAccent),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 180,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () => Get.back(),
                  child: Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
