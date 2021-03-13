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
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.fromLTRB(
                    defaultMargin, 10, defaultMargin, defaultMargin),
                elevation: 5,
                shadowColor: Colors.black45,
                child: TableCalendar(
                  calendarStyle: CalendarStyle(
                    selectedColor: mainColor,
                  ),
                  calendarController: _calendarController,
                  onDaySelected: (date, events, holidays) {
                    setState(() {});
                  },
                  events: _groupedEvents,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 20,
                width: double.infinity,
                child: Text(
                  'Webinar bulan ini:',
                  style: blackFontStyle1.copyWith(fontSize: 16),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _selectedEvents.length,
                  itemBuilder: (BuildContext context, int index) {
                    Event event = _selectedEvents[index];
                    return ListTile(
                      onTap: () {
                        Get.to(EventDetailsPage(
                          transaction: Transaction(
                            event: event,
                            user:
                                (context.read<UserCubit>().state as UserLoaded)
                                    .user,
                          ),
                          onBackButtonPressed: () {
                            Get.back();
                          },
                        ));
                      },
                      leading: Icon(
                        Icons.circle,
                        color: mainColor,
                      ),
                      subtitle: Text(
                          DateFormat("EEEE, dd MMMM, yyyy").format(event.date)),
                      title: Text(
                        event.name,
                        style: blackFontStyle3,
                      ),
                      horizontalTitleGap: 10,
                      trailing: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '10.00 - 12.00 WIB',
                          style:
                              whiteStyle3.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
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
