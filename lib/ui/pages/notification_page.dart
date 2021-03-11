part of 'pages.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Notifikasi',
      subtitle: 'Temukan hal baru!',
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
