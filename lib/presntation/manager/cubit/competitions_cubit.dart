import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/core/static/const.dart';
import 'package:student_hub/models/competitions_model.dart';
import 'package:student_hub/models/form_model.dart';
import 'package:student_hub/presntation/manager/states/competitions_state.dart';

class CompetitionsCubit extends Cubit<CompetitionsStates> {
  CompetitionsCubit() : super(CompetitionsInitState());
  static CompetitionsCubit get(context) => BlocProvider.of(context);

  List competitions = [];
  ComptitionForm? model;

  void getComptition() async {
    emit(CompetitionsLoadingState());
    try {
      final response = await Dio().get(
        "${AppConsts.apiID}/api/v1/competitions",
      );
      var model = CompetitionsModel.fromJson(response.data);
      competitions = model.data;

      emit(CompetitionsSuccessState());
    } catch (e) {
      emit(CompetitionsErrState());
    }
  }

  void comptitionsSign({
    required String phone,
    required String name,
    required String collegeId,
    required String department,
    required String level,
    required String competitionId,
  }) async {
    emit(CompetitionsLoadingState());
    try {
      final response = await Dio().post(
        "${AppConsts.apiID}/api/v1/students/store",
        data: {
          'name': name,
          'phone': phone,
          'college_id': collegeId,
          'department': department,
          'level': level,
          'competition_id': competitionId,
        },
      );
      model = ComptitionForm.fromJson(response.data);

      emit(CompetitionsSuccessState());
    } catch (e) {
      emit(CompetitionsErrState());
    }
  }
}
