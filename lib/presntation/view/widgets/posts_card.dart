import 'package:flutter/material.dart';
import 'package:student_hub/core/utils/app_colors.dart';
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
            Image.network(model.image),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.description,
                style: getMediumStyle(color: AppColors.black, fontSize: 15),
              ),
            ),
            Row(
              children: [
                Text(
                  model.createdAt,
                  style: getMediumStyle(color: AppColors.grey),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "أعجبني",
                      style: getBoldStyle(color: AppColors.black),
                    ),
                    IconButton(
                        onPressed: fun,
                        icon: Icon(
                          Icons.favorite,
                          color: color,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
