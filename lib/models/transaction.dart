part of 'models.dart';

enum TransactionStatus { paid, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Event event;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;

  Transaction(
      {this.id,
      this.event,
      this.quantity,
      this.total,
      this.dateTime,
      this.status,
      this.user});
  Transaction copyWith(
      {int id,
      int quantity,
      int total,
      DateTime dateTime,
      TransactionStatus status,
      User user}) {
    return Transaction(
      id: id ?? this.id,
      event: event ?? this.event,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      dateTime: dateTime ?? this.dateTime,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  List<Object> get props =>
      [id, event, quantity, total, dateTime, status, user];
}

List<Transaction> dummyTransaction = [
  Transaction(
    id: 1,
    event: eventDummy[1],
    quantity: 2,
    total: (eventDummy[1].price).round(),
    dateTime: DateTime.now(),
    status: TransactionStatus.paid,
    user: userDummy,
  ),
  Transaction(
    id: 2,
    event: eventDummy[1],
    quantity: 2,
    total: (eventDummy[1].price).round(),
    dateTime: DateTime.now(),
    status: TransactionStatus.cancelled,
    user: userDummy,
  ),
  Transaction(
    id: 3,
    event: eventDummy[2],
    quantity: 2,
    total: (eventDummy[2].price).round(),
    dateTime: DateTime.now(),
    status: TransactionStatus.paid,
    user: userDummy,
  ),
  Transaction(
    id: 4,
    event: eventDummy[3],
    quantity: 2,
    total: (eventDummy[3].price).round(),
    dateTime: DateTime.now(),
    status: TransactionStatus.pending,
    user: userDummy,
  ),
];
