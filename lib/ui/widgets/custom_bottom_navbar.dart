part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomBottomNavbar({this.selectedIndex, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              child: Icon(
                FontAwesome.home,
                size: 30,
                color: (selectedIndex == 0) ? mainColor : greyColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              child: Icon(
                FontAwesome.calendar,
                color: (selectedIndex == 1) ? mainColor : greyColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              child: Icon(
                FontAwesome.bell,
                color: (selectedIndex == 2) ? mainColor : greyColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(3);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              child: Icon(
                Icons.person,
                color: (selectedIndex == 3) ? mainColor : greyColor,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
