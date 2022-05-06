abstract class ForgetPasswordStates {}

class ForgetPasswordInitaintStates extends ForgetPasswordStates {}

class LoginLoadingStates extends ForgetPasswordStates {}

// class LoginScussedStates extends LoginStates {
//   final ShopLoginModel shopLoginModel;

//   LoginScussedStates(this.shopLoginModel);
// }

// class LoginErrorStates extends LoginStates {
//   final String error;
//   LoginErrorStates(this.error);
// }

class ForgetPasswordChangeLockPassword extends ForgetPasswordStates {}
