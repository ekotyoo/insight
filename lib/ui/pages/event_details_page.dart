part of 'pages.dart';

class EventDetailsPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final Transaction transaction;

  EventDetailsPage({this.onBackButtonPressed, this.transaction});
  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: mainColor),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          ListView(children: [
            Column(
              children: [
                SafeArea(
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.transaction.event.pictureURL),
                    )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: defaultMargin),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultMargin, vertical: 10),
                        height: 70,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                widget.transaction.event.name,
                                softWrap: true,
                                style: blackFontStyle2.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 35,
                                height: 35,
                                child: Icon(
                                  FontAwesome.bookmark_o,
                                  size: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                        height: 80,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(FontAwesome.calendar,
                                        color: greyColor, size: 14),
                                    Text(
                                      DateFormat.yMMMd().format(
                                          widget.transaction.event.date),
                                      style: greyFontStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(FontAwesome.clock_o,
                                        color: greyColor, size: 14),
                                    Text('10.00 - 13.00 WIB',
                                        style: greyFontStyle),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(FontAwesome.globe,
                                        color: greyColor, size: 14),
                                    Text('Event Online', style: greyFontStyle),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Rp' +
                                      widget.transaction.event.price.toString(),
                                  style: blackFontStyle1.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: defaultMargin),
                        child: Text(
                          'Diselenggarakan oleh:',
                          style: blackFontStyle3,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: defaultMargin),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.circle, color: greyColor, size: 50),
                            Text(
                              'Mediatama',
                              style: blackFontStyle3.copyWith(
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: defaultMargin),
                        child: Text(
                          'Deskripsi webinar:',
                          style: blackFontStyle3,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            defaultMargin, 10, defaultMargin, 50),
                        child: Text(
                          widget.transaction.event.description,
                          style: blackFontStyle4,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: EdgeInsets.all(defaultMargin),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: mainColor,
                  ),
                  child: Center(
                    child:
                        Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(
                  defaultMargin, 0, defaultMargin, defaultMargin),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(PaymentPage(transaction: widget.transaction));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: mainColor,
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Beli', style: whiteStyle2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
