import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_hub/core/static/const.dart';
import 'package:student_hub/models/user_model.dart';
import 'package:student_hub/presntation/manager/states/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitStates());
  static AuthCubit get(context) => BlocProvider.of(context);

  UserModel? user;

  void userLogin({
    required String email,
    required String password,
  }) async {
    emit(AuthLoadingStates());

    try {
      final response = await Dio().post("${AppConsts.apiID}/v1/login", data: {
        'email': email,
        'password': password,
      });
      user = UserModel.fromJson(response.data);
      emit(AuthSuccessStates());
    } catch (e) {
      emit(AuthErrStates());
    }
  }

  void createUser({
    required String email,
    required String name,
    required String password,
    required String confirmPass,
  }) async {
    emit(AuthLoadingStates());
    try {
      final response = await Dio().post(
        "${AppConsts.apiID}/api/v1/register",
        data: {
          'email': email,
          'password': password,
          'name': name,
          'password_confirmation': confirmPass,
        },
      );
      user = UserModel.fromJson(response.data);
      emit(AuthSuccessStates());
    } catch (e) {
      emit(AuthErrStates());
    }
  }
}
