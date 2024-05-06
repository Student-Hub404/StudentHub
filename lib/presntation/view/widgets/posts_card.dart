import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/models/posts_model.dart';

Widget buildPostCard(
        BuildContext context, Posts model, VoidCallback fun, Color color) =>
    Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
                height: context.height * 0.4,
                width: double.infinity,
                child: Image.network(model.image)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.description,
                style: getMediumStyle(color: AppColors.black, fontSize: 15),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.createdAt,
                  style: getMediumStyle(color: AppColors.grey),
                ),
              ],
            )
          ],
        ),
      ),
    );
