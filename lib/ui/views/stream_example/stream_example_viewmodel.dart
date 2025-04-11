import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<String> {
  String get title => "This is a time since epoch in seconds \n $data";

  @override
  Stream<String> get stream =>
      _otherSource
          ? _epochUpdate(/* Pass parameters here */)
          : _epochUpdateFaster();

  bool _otherSource = false;

  void swapSource() {
    _otherSource = !_otherSource;
  }

  @override
  void onError(error) {
    super.onError(error);
    debugPrint('error');
  }

  Stream<String> _epochUpdate() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.now().millisecondsSinceEpoch.toString();
    }
  }

  Stream<String> _epochUpdateFaster() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 300));
      yield DateTime.now().millisecondsSinceEpoch.toString();
    }
  }
}
