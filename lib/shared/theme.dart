part of 'shared.dart';

const double defaultMargin = 24;
Color greyColor = "8D92A3".toColor();
Color mainColor = 'F6574D'.toColor();
Color blackColor = "535353".toColor();

Widget loadingIndicator = SpinKitChasingDots(
  color: mainColor,
  size: 40,
);

TextStyle whiteStyle1 = GoogleFonts.nunito()
    .copyWith(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500);
TextStyle whiteStyle2 = GoogleFonts.nunito()
    .copyWith(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500);
TextStyle whiteStyle3 = GoogleFonts.nunito()
    .copyWith(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle whiteStyle4 = GoogleFonts.nunito()
    .copyWith(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w100);

TextStyle greyFontStyle = GoogleFonts.nunito().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.nunito().copyWith(
    color: "535353".toColor(), fontSize: 20, fontWeight: FontWeight.w800);
TextStyle blackFontStyle2 = GoogleFonts.nunito().copyWith(
    color: "535353".toColor(), fontSize: 18, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.nunito().copyWith(
    color: "535353".toColor(), fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle4 = GoogleFonts.nunito().copyWith(
    color: "535353".toColor(), fontSize: 14, fontWeight: FontWeight.w500);
