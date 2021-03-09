import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:insight/models/models.dart';
import 'package:insight/services/services.dart';

part 'event_state.dart';

class EventCubit extends Cubit<EventState> {
  EventCubit() : super(EventInitial());

  Future<void> getEvents() async {
    ApiReturnValue<List<Event>> result = await EventServices.getEvents();

    if (result.value != null) {
      emit(EventLoaded(result.value));
    } else {
      emit(EventLoadingFailed(result.message));
    }
  }
}
