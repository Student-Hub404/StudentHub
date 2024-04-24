import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/core/utils/app_colors.dart';
import 'package:student_hub/core/utils/media_query_values.dart';
import 'package:student_hub/core/utils/style_manager.dart';
import 'package:student_hub/models/location_model.dart';
import 'package:student_hub/presntation/manager/cubit/locations_cubit.dart';
import 'package:student_hub/presntation/manager/states/locations_states.dart';
import 'package:chewie/chewie.dart';

class BuildLabsItem extends StatefulWidget {
  const BuildLabsItem({super.key, required this.model});
  final LocationsModel model;

  @override
  State<BuildLabsItem> createState() => _BuildLabsItemState();
}

class _BuildLabsItemState extends State<BuildLabsItem> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationsCubit()..initVideo(widget.model.videoURL!),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<LocationsCubit, LocationsStates>(
          builder: (context, state) {
            if (state is LocationsLoadingStates) {
              return Center(
                  child: CircularProgressIndicator(
                color: AppColors.primary,
              ));
            }
            return Material(
              clipBehavior: Clip.hardEdge,
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: context.width * 0.5,
                      child: Center(
                        child: AspectRatio(
                            aspectRatio: 1,
                            child: Chewie(
                                controller: LocationsCubit.get(context)
                                    .chewieController)),
                      ),
                    ),
                    SizedBox(
                      width: context.width * 0.1,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "${widget.model.title}",
                        style:
                            getBoldStyle(color: AppColors.black, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
