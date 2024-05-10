import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        "https://0b59-156-197-215-17.ngrok-free.app/api/v1/courses",
      );
      var model = CoursesModel.fromJson(response.data);
      courses = model.data;
      emit(CoursesSuccessState());
    } catch (e) {
      emit(CoursesErrState());
    }
  }
}
