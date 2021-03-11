part of 'pages.dart';

class AllEventPage extends StatelessWidget {
  final int type;

  AllEventPage(this.type);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: ListView(children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    color: Colors.white,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              size: 30,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (type == 0) ? 'Rekomendasi' : 'Event Popular',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Temukan event kesukaanmu!',
                              style: GoogleFonts.poppins(
                                color: greyColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<EventCubit, EventState>(
                    // ignore: missing_return
                    builder: (context, state) {
                      if (state is EventLoaded) {
                        List<Event> events;
                        if (type == 0) {
                          events = state.events
                              .where((element) =>
                                  element.types.contains(EventType.recommended))
                              .toList();
                        } else {
                          events = state.events
                              .where((element) =>
                                  element.types.contains(EventType.popular))
                              .toList();
                        }

                        return GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(8),
                          itemCount: events.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 160 / 230,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  Get.to(EventDetailsPage(
                                    transaction: Transaction(
                                      event: events[index],
                                      user: (context.read<UserCubit>().state
                                              as UserLoaded)
                                          .user,
                                    ),
                                    onBackButtonPressed: () {
                                      Get.back();
                                    },
                                  ));
                                },
                                child: EventCard(events[index]));
                          },
                        );
                      } else if (state is EventLoadingFailed) {
                        return Center(
                          child: loadingIndicator,
                        );
                      }
                    },
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
