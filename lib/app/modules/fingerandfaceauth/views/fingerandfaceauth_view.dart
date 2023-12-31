// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fingerandfaceauth_controller.dart';

class FingerandfaceauthView extends GetView<FingerandfaceauthController> {
  const FingerandfaceauthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Local Authentication'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Text(
                'Biometric',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Obx(
                          () => controller.hasFingerPrintLock.value
                          ? Icon(
                        Icons.check,
                        color: Colors.green,
                      )
                          : Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Finger Print Authentication',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Obx(
                          () => controller.hasFaceLock.value
                          ? Icon(
                        Icons.check,
                        color: Colors.green,
                      )
                          : Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Face Authentication',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                ElevatedButton(
                
                  child: Text('Login'),
                  onPressed: ()=>controller.authenticateUser(),
                ),
                

              ],
            )
          ],
        ),);

  }
}
