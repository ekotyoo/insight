part of 'pages.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/content_page_bg.jpg',
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 110,
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.all(defaultMargin),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Insight!',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(
                            'Tingkatkan produktivitasmu!',
                            style: GoogleFonts.poppins(
                              color: greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(SearchPage());
                        },
                        child: Container(
                          child: Center(
                            child: Icon(
                              FontAwesome.search,
                              color: greyColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              /// Webinar Kesukaan
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Webinar kesukaanmu, nih!',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lihat Semua >',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          color: mainColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              Container(
                height: 270,
                width: double.infinity,
                child: BlocBuilder<EventCubit, EventState>(builder: (_, state) {
                  if (state is EventLoaded) {
                    List<Event> events = state.events
                        .where((element) =>
                            element.types.contains(EventType.recommended))
                        .toList();
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                            children: events
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(EventDetailsPage(
                                          transaction: Transaction(
                                            event: e,
                                            user: (context
                                                    .read<UserCubit>()
                                                    .state as UserLoaded)
                                                .user,
                                          ),
                                          onBackButtonPressed: () {
                                            Get.back();
                                          },
                                        ));
                                      },
                                      child: EventCard(e),
                                    ),
                                  ),
                                )
                                .toList()),
                      ],
                    );
                  } else {
                    return Center(child: loadingIndicator);
                  }
                }),
              ),

              /// Webinar Popouler
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Webinar Populer',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lihat Semua >',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          color: mainColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              Container(
                height: 270,
                width: double.infinity,
                child: BlocBuilder<EventCubit, EventState>(builder: (_, state) {
                  if (state is EventLoaded) {
                    List<Event> events = state.events
                        .where((element) =>
                            element.types.contains(EventType.popular))
                        .toList();
                    return ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                            children: events
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5,
                                      right: 5,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(EventDetailsPage(
                                          transaction: Transaction(
                                            event: e,
                                            user: (context
                                                    .read<UserCubit>()
                                                    .state as UserLoaded)
                                                .user,
                                          ),
                                          onBackButtonPressed: () {
                                            Get.back();
                                          },
                                        ));
                                      },
                                      child: EventCard(e),
                                    ),
                                  ),
                                )
                                .toList()),
                      ],
                    );
                  } else {
                    return Center(
                      child: loadingIndicator,
                    );
                  }
                }),
              ),
            ],
          ),
        ),

        /// Header
      ],
    );
  }
}
