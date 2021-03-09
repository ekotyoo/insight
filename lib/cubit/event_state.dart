part of 'event_cubit.dart';

abstract class EventState extends Equatable {
  const EventState();

  @override
  List<Object> get props => [];
}

class EventInitial extends EventState {}

class EventLoaded extends EventState {
  final List<Event> events;

  EventLoaded(this.events);

  @override
  List<Object> get props => [events];
}

class EventLoadingFailed extends EventState {
  final String message;

  EventLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}

