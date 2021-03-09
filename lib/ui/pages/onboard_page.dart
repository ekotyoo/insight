part of 'pages.dart';

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          itemCount: onboardList.length,
          itemBuilder: (context, i) => OnboardItem(i),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: mainColor,
                  ),
                  Icon(
                    Icons.circle,
                    size: 6,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.circle,
                    size: 6,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: defaultMargin,
              ),
              child: Row(
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
                      print('tapped');
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
              ),
            ),
          ],
        ),
      ],
    );
  }
}
