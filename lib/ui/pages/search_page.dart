part of 'pages.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: greyColor),
            ),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      child: Icon(Icons.arrow_back_ios_rounded),
                    )),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          icon: Icon(
                            FontAwesome.search,
                            color: greyColor,
                          ),
                          border: InputBorder.none,
                          hintStyle: greyFontStyle,
                          hintText: "Cari webinar"),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Icon(
                        FontAwesome.filter,
                        color: greyColor,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
