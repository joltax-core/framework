import 'dart:io';

import 'package:joltax_framework/taycan/constants/taycan_console.dart';
import 'package:joltax_framework/taycan/models/tc_command.dart';

class TaycanService {
  static Future<void> runCommand(List<String> arguments,
      {required List<TcCommand?> allCommands, required String menu}) async {
    List<String> argumentsForAction = arguments.toList();
    if (argumentsForAction.isEmpty) {
      TaycanConsole.writeInGreen(menu);
    }
    List<String> argumentSplit = arguments[0].split(':');

    if (argumentSplit.isEmpty || argumentSplit.length <= 1) {
      TaycanConsole.writeInRed('Invalid arguments $arguments');
      exit(2);
    }

    String type = argumentSplit[0];
    String action = argumentSplit[1];

    TcCommand? tcCommand = allCommands.firstWhereOrNull(
        (command) => type == command?.category && command?.name == action);

    if (tcCommand == null) {
      TaycanConsole.writeInRed('Invalid arguments $arguments');
      exit(1);
    }

    argumentsForAction.removeAt(0);

    await tcCommand.action!(argumentsForAction);
  }

  static hasHelpFlag(bool hasHelpFlag, String usage) {
    if (hasHelpFlag) {
      TaycanConsole.writeInBlack(usage);
      exit(0);
    }
  }
}

extension IterableExtension<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}
