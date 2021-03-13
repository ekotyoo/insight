part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;
  PaymentPage({this.transaction});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Detail Pesanan',
      onBackButtonPressed: () {
        Get.back();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Webinar yang dipilih',
                style: blackFontStyle3, textAlign: TextAlign.start),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(transaction.event.pictureURL),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction.event.name,
                          style: blackFontStyle3,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          DateFormat("EEEE, dd MMMM, yyyy")
                              .format(transaction.event.date),
                          style: greyFontStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text('Metode Pembayran',
                style: blackFontStyle3, textAlign: TextAlign.start),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, bottom: 10),
            ),
            Text('Rincian Pembayaran',
                style: blackFontStyle3, textAlign: TextAlign.start),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jenis Tiket', style: greyFontStyle),
                      Text('Early Bird',
                          style: blackFontStyle4.copyWith(
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jumlah Tiket', style: greyFontStyle),
                      Text("${transaction.quantity} Tiket",
                          style: blackFontStyle4.copyWith(
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Tagihan', style: greyFontStyle),
                      Text('${transaction.total}',
                          style: blackFontStyle4.copyWith(
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    primary: mainColor,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text('Checkout', style: whiteStyle2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
