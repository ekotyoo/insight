part of 'models.dart';

enum EventType { popular, recommended }

class Event extends Equatable {
  final int id;
  final String pictureURL;
  final String name;
  final String description;
  final String date;
  final int price;
  final double rating;
  final List<EventType> types;

  Event({
    this.id,
    this.pictureURL,
    this.name,
    this.description,
    this.date,
    this.price,
    this.rating,
    this.types = const [],
  });

  @override
  List<Object> get props =>
      [id, pictureURL, name, description, date, price, rating];
}

List<Event> eventDummy = [
  Event(
    id: 1,
    name: 'How to Run UX Research & Design during Pandemic',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    date: '13-14 Mei 2021',
    pictureURL: 'assets/webinar/webinar1.jpg',
    price: 100000,
    rating: 5.0,
    types: [EventType.recommended],
  ),
  Event(
    id: 1,
    name: 'Mengenal Lebih Dalam UX Illustrator',
    description: 'Lorem ipsum dolor es sasdfsad adsfdsfa asdfadfsdsaf adfasf',
    date: '13-14 Mei 2021',
    pictureURL: 'assets/webinar/webinar2.jpg',
    price: 100000,
    rating: 5.0,
    types: [EventType.recommended],
  ),
  Event(
    id: 1,
    name: 'Exploring UI/UX',
    description: 'Lorem ipsum dolor es sasdfsad adsfdsfa asdfadfsdsaf adfasf',
    date: '13-14 Mei 2021',
    pictureURL: 'assets/webinar/webinar3.png',
    price: 100000,
    rating: 5.0,
    types: [EventType.popular, EventType.recommended],
  ),
  Event(
    id: 1,
    name: 'UX Writing with Gojek Design Team',
    description: 'Lorem ipsum dolor es sasdfsad adsfdsfa asdfadfsdsaf adfasf',
    date: '13-14 Mei 2021',
    pictureURL: 'assets/webinar/webinar4.png',
    price: 100000,
    rating: 5.0,
    types: [EventType.popular, EventType.recommended],
  )
];
