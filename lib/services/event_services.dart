part of 'services.dart';

class EventServices {
  static Future<ApiReturnValue<List<Event>>> getEvents() async {
    await Future.delayed(Duration(seconds: 1));

    // return ApiReturnValue(value: eventDummy);
    return ApiReturnValue(value: eventDummy);
  }
}
