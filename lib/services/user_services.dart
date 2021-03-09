part of 'services.dart';

class UserServices {
  static Future<ApiReturnValue<User>> signIn(
      String email, String password) async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: userDummy);
    // return ApiReturnValue(message: "Email atau Kata Sandi Salah!");
  }
}
