part of 'pages.dart';

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int selectedPage = 1;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: pageController,
          itemCount: onboardList.length,
          itemBuilder: (context, i) => OnboardItem(i),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: defaultMargin,
              ),
              child: (selectedPage < 3)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.to(SignInPage());
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Text(
                            'Lewati',
                            style: whiteStyle2,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            pageController.animateToPage(selectedPage,
                                duration: Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.easeIn);
                            setState(() {
                              selectedPage++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: mainColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Selanjutnya',
                            style: whiteStyle2,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.to(SignInPage());
                          },
                          style: ElevatedButton.styleFrom(
                            primary: mainColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Mulai Sekarang',
                            style: whiteStyle2,
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
