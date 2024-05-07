import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/models/competitions_model.dart';
import 'package:student_hub/presntation/manager/states/competitions_state.dart';

class CompetitionsCubit extends Cubit<CompetitionsStates> {
  CompetitionsCubit() : super(CompetitionsInitState());
  static CompetitionsCubit get(context) => BlocProvider.of(context);

  List competitions = [];

  void getComptition() async {
    emit(CompetitionsLoadingState());
    try {
      final response = await Dio().get(
        "https://d53d-156-197-183-181.ngrok-free.app/api/v1/competitions",
      );
      var model = CompetitionsModel.fromJson(response.data);
      competitions = model.data;

      emit(CompetitionsSuccessState());
    } catch (e) {
      emit(CompetitionsErrState());
    }
  }

  void coptitionRegister() {}
}
