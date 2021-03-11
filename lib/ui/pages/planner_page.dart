part of 'pages.dart';

class PlannerPage extends StatefulWidget {
  @override
  _PlannerPageState createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  final CalendarController _calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Jadwal Webinar',
      subtitle: "Mari produktif!",
      child: TableCalendar(calendarController: _calendarController),
    );
  }
}
