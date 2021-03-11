part of 'pages.dart';

class PlannerPage extends StatefulWidget {
  @override
  _PlannerPageState createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  CalendarController _calendarController = CalendarController();
  Map<DateTime, List<dynamic>> _groupedEvents;

  // ignore: unused_element
  _groupEvents(List<Event> events) {
    _groupedEvents = {};
    events.forEach((event) {
      DateTime date =
          DateTime.utc(event.date.year, event.date.month, event.date.day, 12);
      if (_groupedEvents[date] == null) {
        _groupedEvents[date] = [];
      }
      _groupedEvents[date].add(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventCubit, EventState>(builder: (context, state) {
      if (state is EventLoaded) {
        final events = state.events;
        _groupEvents(events);
        DateTime selectedDate = _calendarController.selectedDay;
        final _selectedEvents = _groupedEvents[selectedDate] ?? [];
        return GeneralPage(
          title: 'Jadwal Webinar',
          subtitle: "Mari produktif!",
          child: Column(
            children: [
              TableCalendar(
                calendarStyle: CalendarStyle(
                  selectedColor: mainColor,
                ),
                calendarController: _calendarController,
                onDaySelected: (date, events, holidays) {
                  setState(() {});
                },
                events: _groupedEvents,
              ),
              Divider(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _selectedEvents.length,
                  itemBuilder: (BuildContext context, int index) {
                    Event event = _selectedEvents[index];
                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(event.pictureURL),
                          fit: BoxFit.cover,
                        )),
                      ),
                      subtitle: Text(DateFormat("EEEE, dd MMMMM, yyyy")
                          .format(event.date)),
                      title: Text(event.name, style: blackFontStyle2),
                      horizontalTitleGap: 10,
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    );
                  })
            ],
          ),
        );
      } else {
        return loadingIndicator;
      }
    });
  }
}
