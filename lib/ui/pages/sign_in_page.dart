part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Masuk",
      subtitle: "Temukan event favorite-mu!",
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'Email',
              style: blackFontStyle4,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: greyColor),
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Masukan email"),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'Kata Sandi',
              style: blackFontStyle4,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: greyColor),
            ),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Masukan kata sandi"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: GestureDetector(
              onTap: () {
                print('tapped');
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Lupa kata sandi?',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? loadingIndicator
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });

                      await context.read<UserCubit>().signIn(
                          emailController.text, passwordController.text);

                      UserState state = context.read<UserCubit>().state;

                      if (state is UserLoaded) {
                        context.read<EventCubit>().getEvents();
                        context.read<TransactionCubit>().getTransactions();
                        Get.to(MainPage());
                      } else {
                        setState(() {
                          Get.snackbar(
                            '',
                            '',
                            backgroundColor: mainColor,
                            icon: Icon(
                              Icons.dangerous,
                              color: Colors.white,
                              size: 35,
                            ),
                            titleText: Text(
                              'Login Gagal',
                              style: whiteStyle1,
                            ),
                            messageText: Text(
                              (state as UserLoadingFailed).message,
                              style: whiteStyle2,
                            ),
                          );
                          isLoading = false;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      primary: mainColor,
                    ),
                    child: Text(
                      'Masuk',
                      style: whiteStyle2,
                    ),
                  ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Center(
                child: Text(
              'Atau masuk dengan:',
              style: blackFontStyle4,
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('tapped!');
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(5),
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  child: Center(
                      child: Icon(
                    SimpleLineIcons.social_facebook,
                    color: Colors.white,
                    size: 20,
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('tapped!');
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(5),
                  width: 90,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: mainColor,
                  ),
                  child: Center(
                      child: Icon(
                    SimpleLineIcons.social_google,
                    color: Colors.white,
                    size: 20,
                  )),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum memiliki akun? ',
                  style: blackFontStyle4,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignUpPage());
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      fontSize: 14,
                      color: mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
