import 'dart:async';

part 'app_event.dart';

class EventBus {
  final _eventController = StreamController<AppEvent>.broadcast();

  void emit(AppEvent event) {
    _eventController.add(event);
  }

  Stream<T> on<T extends AppEvent>() {
    return _eventController.stream.where((event) => event is T).cast<T>();
  }

  void dispose() {
    _eventController.close();
  }
}
