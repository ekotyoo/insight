part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int index) onTap;

  CustomTabBar({@required this.titles, this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 48),
            height: 5,
            color: Colors.white,
          ),
          Row(
            children: titles
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap(titles.indexOf(e));
                              }
                            },
                            child: Text(
                              e,
                              style: (titles.indexOf(e) == selectedIndex)
                                  ? blackFontStyle3.copyWith(
                                      fontWeight: FontWeight.bold)
                                  : greyFontStyle.copyWith(fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 45,
                            height: 3,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.5),
                              color: (titles.indexOf(e) == selectedIndex)
                                  ? blackColor
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
