part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Akun Saya', style: blackFontStyle1),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              (context.read<UserCubit>().state as UserLoaded)
                                  .user
                                  .pictureURL),
                        ),
                      ),
                    ),
                    Text(
                      (context.read<UserCubit>().state as UserLoaded).user.name,
                      style: blackFontStyle1.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Card(
                elevation: 5,
                shadowColor: Colors.black45,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.person_outline_rounded,
                          color: mainColor,
                          size: 30,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: blackColor,
                          size: 25,
                        ),
                        title: Text(
                          'Informasi Akun',
                          style: blackFontStyle1.copyWith(fontSize: 16),
                        ),
                      ),
                      Divider(),
                      //
                      ListTile(
                        onTap: () {
                          Get.to(TransactionHistoryPage());
                        },
                        leading: Icon(
                          Icons.history,
                          color: mainColor,
                          size: 30,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: blackColor,
                          size: 25,
                        ),
                        title: Text(
                          'Riwayat Transaksi',
                          style: blackFontStyle1.copyWith(fontSize: 16),
                        ),
                      ),
                      Divider(),
                      //
                      ListTile(
                        leading: Icon(
                          Icons.bookmark_outline_rounded,
                          color: mainColor,
                          size: 30,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: blackColor,
                          size: 25,
                        ),
                        title: Text(
                          'Wishlist',
                          style: blackFontStyle1.copyWith(fontSize: 16),
                        ),
                      ),
                      Divider(),
                      //
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: mainColor,
                          size: 30,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: blackColor,
                          size: 25,
                        ),
                        title: Text(
                          'Pengaturan',
                          style: blackFontStyle1.copyWith(fontSize: 16),
                        ),
                      ),
                      Divider(),
                      //
                      ListTile(
                        leading: Icon(
                          FontAwesome.sign_out,
                          color: mainColor,
                          size: 30,
                        ),
                        // trailing: Icon(
                        //   Icons.arrow_forward_ios_rounded,
                        //   color: blackColor,
                        //   size: 25,
                        // ),
                        title: Text(
                          'Keluar',
                          style: blackFontStyle1.copyWith(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
