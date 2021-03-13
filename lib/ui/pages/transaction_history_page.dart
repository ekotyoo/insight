part of 'pages.dart';

class TransactionHistoryPage extends StatefulWidget {
  @override
  _TransactionHistoryPageState createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inPending = dummyTransaction
      .where((element) =>
          element.status == TransactionStatus.pending ||
          element.status == TransactionStatus.cancelled)
      .toList();
  List<Transaction> inPaid = dummyTransaction
      .where((element) => element.status == TransactionStatus.paid)
      .toList();
  @override
  Widget build(BuildContext context) {
    if (inPending.length == 0 && inPaid.length == 0) {
      return Container();
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              children: [
                //Header
                Container(
                  height: 60,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: defaultMargin),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Riwayat Transaksi', style: blackFontStyle1),
                    ],
                  ),
                ),

                //Body
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      CustomTabBar(
                        titles: ["Menunggu", "Selesai"],
                        selectedIndex: selectedIndex,
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                            children: (selectedIndex == 0 ? inPending : inPaid)
                                .map((e) => Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      elevation: 5,
                                      shadowColor: Colors.black45,
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        width: double.infinity,
                                        height: 100,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 90,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    e.event.pictureURL,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      e.event.name,
                                                      style: blackFontStyle3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                    Text(
                                                      '${e.quantity} Tiket - ' +
                                                          NumberFormat.currency(
                                                                  symbol: 'Rp.',
                                                                  decimalDigits:
                                                                      0,
                                                                  locale:
                                                                      'id-ID')
                                                              .format(e.total),
                                                      style: greyFontStyle,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                                .toList()),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
