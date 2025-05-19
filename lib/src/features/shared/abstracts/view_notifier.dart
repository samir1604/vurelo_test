import 'package:flutter/foundation.dart';

abstract class ViewNotifier<T> {
  ViewNotifier(T value) : _notifier = ValueNotifier(value);

  final ValueNotifier<T> _notifier;

  ValueListenable<T> get listenable => _notifier;

  T get value => _notifier.value;

  @protected
  void setValue(T value) => _notifier.value = value;

  void dispose() {
    _notifier.dispose();
  }
}
