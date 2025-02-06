import 'dart:io';

import 'package:joltax_framework/taycan/constants/cli_menu.dart';
import 'package:joltax_framework/taycan/taycan_service.dart';
import 'package:joltax_framework/taycan/taycan.dart' as taycan_cli;

void main(List<String> arguments) async {
  await TaycanService.runCommand(arguments, allCommands: taycan_cli.allCommands, menu: taycanMenu);
  exit(0);
}
