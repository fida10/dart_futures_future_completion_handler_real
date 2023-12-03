/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:async';

export 'src/futures_future_completion_handler_real_base.dart';

/*
Practice Question 1: Future Completion Handler

Task:

Create a function called processData that takes a String and returns a Future<String>.

Inside processData, perform a computation that transforms the input string 
(e.g., reverses it, appends data, etc.) and completes the Future with this new string.

Instead of using Future.delayed, use a Completer to complete the Future.
 */

Future<String> processData(String input){
  var completer = Completer<String>();

  completer.complete(input.split('').reversed.join());
  return completer.future;
}