import 'dart:developer';

import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/models/location_model.dart';
import 'package:student_hub/presntation/view/widgets/labs_item.dart';

class LabsScreen extends StatefulWidget {
  const LabsScreen({super.key});

  @override
  State<LabsScreen> createState() => _LabsScreenState();
}

class _LabsScreenState extends State<LabsScreen> {
  List<LocationsModel> list = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await FirebaseFirestore.instance
        .collection('Labs')
        .get()
        .then((QuerySnapshot querySnapshot) {
      list = [];
      for (var doc in querySnapshot.docs) {
        LocationsModel location =
            LocationsModel.fromJason(doc.data() as Map<String, dynamic>);
        list.add(location);
        log("${list.length}");
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(EneftyIcons.arrow_left_3_outline)),
        title: Text(
          "المدرجات",
          style: getBoldStyle(color: AppColors.black, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Text(
            "تأكد من انك علي اتصال جيد بالانترنت",
            style: getBoldStyle(color: AppColors.black, fontSize: 20),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  BuildLabsItem(model: list[index], key: UniqueKey()),
              itemCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
