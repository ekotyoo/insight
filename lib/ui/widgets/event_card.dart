part of 'widgets.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 160,
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 15,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(event.pictureURL),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  event.name,
                  style: blackFontStyle3,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.fade,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesome.calendar,
                                color: greyColor,
                                size: 11,
                              ),
                              Text(
                                DateFormat.yMMMd().format(event.date),
                                style: greyFontStyle.copyWith(fontSize: 11),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesome.paperclip,
                                color: greyColor,
                                size: 11,
                              ),
                              Text(
                                'Event Online',
                                style: greyFontStyle.copyWith(fontSize: 11),
                              ),
                            ],
                          )
                        ],
                      ),
                      Icon(
                        FontAwesome.star,
                        color: Colors.yellow,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
