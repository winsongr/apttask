import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/competition_controller.dart';

class CompetitionView extends GetView<CompetitionController> {
  const CompetitionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('CompetitionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CompetitionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
