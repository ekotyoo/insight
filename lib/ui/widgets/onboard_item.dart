part of '../pages/pages.dart';

class OnboardItem extends StatelessWidget {
  final int index;

  OnboardItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(onboardList[index].imageURL),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Insight!',
                      style: GoogleFonts.nunito().copyWith(
                          color: Colors.white,
                          fontSize: 65,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        onboardList[index].title,
                        style:
                            whiteStyle1.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        onboardList[index].description,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: whiteStyle4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
