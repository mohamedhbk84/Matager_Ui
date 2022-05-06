import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matager/modules/ForgetPassword/Cubit/ForgetPasswordStates.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordStates> {
  ForgetPasswordCubit() : super(ForgetPasswordInitaintStates());

  static ForgetPasswordCubit get(context) => BlocProvider.of(context);

  bool shownPassword = true;
  void changePassword() {
    shownPassword = !shownPassword;
    emit(ForgetPasswordChangeLockPassword());
  }
}
