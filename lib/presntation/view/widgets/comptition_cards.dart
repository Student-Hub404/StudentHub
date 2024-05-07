import 'package:flutter/material.dart';
import 'package:student_hub/config/routes/app_routs.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/models/competitions_model.dart';
import 'package:student_hub/presntation/view/screens/comptition_form_screen.dart';

Widget buildComptitionCard(
  BuildContext context,
  Competitions model,
) =>
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
                const Spacer(),
                TextButton(
                    onPressed: () {
                      navigatTo(
                          context,
                          ComptitionFormScreen(
                            comptitionId: model.id,
                          ));
                    },
                    child: Text(
                      "تسجيل",
                      style: getBoldStyle(color: AppColors.primary),
                    ))
              ],
            )
          ],
        ),
      ),
    );
