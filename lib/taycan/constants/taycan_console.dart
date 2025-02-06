import 'dart:io';

///Determines the color of the text to be written in the console.
class TaycanConsole {
  static writeInGreen(String message) {
    stdout.writeln('\x1B[32m$message\x1B[0m');
  }

  /// writes a [message] in red.
  static writeInRed(String message) {
    stdout.writeln('\x1B[91m$message\x1B[0m');
  }

  /// writes a [message] in black.
  static writeInBlack(String message) {
    stdout.writeln(message);
  }
}
