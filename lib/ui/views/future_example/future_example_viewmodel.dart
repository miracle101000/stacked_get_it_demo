import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel<String> {
  @override
  Future<String> futureToRun() =>
      _getDataFromServer(/* Pass parameters here */);

  @override
  void onError(error) {
    super.onError(error);
    debugPrint('error');
  }

  Future<String> _getDataFromServer() async {
    await Future.delayed(const Duration(seconds: 2));
    // return 'Fetched from server';
    throw Exception('This broke dude!');
  }
}
