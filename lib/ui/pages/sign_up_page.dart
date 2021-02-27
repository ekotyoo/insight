part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    bool isLoading = false;

    return GeneralPage(
      title: "Daftar",
      subtitle: "Registrasi Sekarang",
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'Nama Lengkap',
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
              controller: nameController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Masukan nama lengkap"),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 6),
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
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'Konfirmasi Kata Sandi',
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
                  hintText: "Masukan ulang kata sandi"),
            ),
          ),
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: isLoading
                ? SpinKitFadingCircle(
                    color: mainColor,
                    size: 40,
                  )
                : RaisedButton(
                    onPressed: () {
                      print('tapped');
                    },
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: mainColor,
                    child: Text(
                      'Daftar',
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
              'Atau masuk dengan',
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
                  'Sudah memiliki akun? ',
                  style: blackFontStyle4,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignInPage());
                  },
                  child: Text(
                    'Masuk sekarang',
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
