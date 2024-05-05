import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/models/location_model.dart';
import 'package:student_hub/presntation/view/widgets/terraces_item.dart';

class TerracesScreen extends StatefulWidget {
  const TerracesScreen({super.key});

  @override
  State<TerracesScreen> createState() => _TerracesScreenState();
}

class _TerracesScreenState extends State<TerracesScreen> {
  List<LocationsModel> list = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    await FirebaseFirestore.instance
        .collection('Terraces hall')
        .get()
        .then((QuerySnapshot querySnapshot) {
      list = [];
      for (var doc in querySnapshot.docs) {
        LocationsModel location =
            LocationsModel.fromJason(doc.data() as Map<String, dynamic>);
        list.add(location);
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
                  BuildTerracesItem(model: list[index], key: UniqueKey()),
              itemCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
