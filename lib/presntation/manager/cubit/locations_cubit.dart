import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/presntation/manager/states/locations_states.dart';

class LocationsCubit extends Cubit<LocationsStates> {
  LocationsCubit() : super(LocationsInitStates());
  static LocationsCubit get(context) => BlocProvider.of(context);
  late VideoPlayerController videoPlayerController;
  late final ChewieController chewieController;
  void initVideo(String videoURL) async {
    emit(LocationsLoadingStates());
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(videoURL));
    await videoPlayerController.initialize().then((_) {
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        allowFullScreen: true,
        autoPlay: false,
        looping: true,
      );
      emit(LocationsSuccessStates());
    });
  }
}
