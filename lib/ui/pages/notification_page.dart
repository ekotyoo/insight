part of 'pages.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Notifikasi',
      subtitle: 'Temukan hal baru!',
      child: Column(
        children: [
          CustomTabBar(
            titles: ["Transaksi", "Update"],
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
