import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/modules/Login/Cubit/states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitaintStates());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool shownPassword = true;
  void changePassword() {
    shownPassword = !shownPassword;
    emit(LoginChangeLockPassword());
  }

  ////////////////////////////////////
  // void userLogin({String email, String password}) {
  //   emit(LoginLoadingStates());
  //   DioHelper.postData(url: Login, data: {'email': email, 'password': password})
  //       .then((value) {
  //     shopLoginModel = ShopLoginModel.fromJson(value.data);
  //     emit(LoginScussedStates(shopLoginModel));
  //   }).catchError((onError) {
  //     print(onError.toString());
  //     emit(LoginErrorStates(onError));
  //   });
  // }
}
