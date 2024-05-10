import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/core/static/const.dart';
import 'package:student_hub/models/courses_model.dart';
import 'package:student_hub/presntation/manager/states/courses_state.dart';

class CoursesCubit extends Cubit<CoursesStates> {
  CoursesCubit() : super(CoursesInitState());

  static CoursesCubit get(context) => BlocProvider.of(context);

  List courses = [];

  void getCourses() async {
    emit(CoursesLoadingState());
    try {
      final response = await Dio().get(
        "${AppConsts.apiID}/api/v1/courses",
      );
      var model = CoursesModel.fromJson(response.data);
      courses = model.data;
      emit(CoursesSuccessState());
    } catch (e) {
      emit(CoursesErrState());
    }
  }
}
