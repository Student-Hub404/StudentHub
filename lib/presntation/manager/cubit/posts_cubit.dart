import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/core/static/const.dart';
import 'package:student_hub/models/posts_model.dart';
import 'package:student_hub/presntation/manager/states/posts_state.dart';

class PostsCubit extends Cubit<PostsStates> {
  PostsCubit() : super(PostsInitState());

  static PostsCubit get(context) => BlocProvider.of(context);

  List posts = [];

  void getPosts() async {
    emit(PostsLoadingState());
    try {
      final response = await Dio().get(
        "${AppConsts.apiID}/api/v1/posts",
      );
      var model = PostsModel.fromJson(response.data);
      posts = model.data;
      log("${posts.length}");
      emit(PostsSuccessState());
    } catch (e) {
      emit(PostsErrState());
    }
  }
}
