abstract class LoginStates {}

class LoginInitaintStates extends LoginStates {}

class LoginLoadingStates extends LoginStates {}

// class LoginScussedStates extends LoginStates {
//   final ShopLoginModel shopLoginModel;

//   LoginScussedStates(this.shopLoginModel);
// }

// class LoginErrorStates extends LoginStates {
//   final String error;
//   LoginErrorStates(this.error);
// }

class LoginChangeLockPassword extends LoginStates {}
