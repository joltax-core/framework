library taycan;

import 'package:args/args.dart';
import 'package:joltax_framework/taycan/constants/taycan_console.dart';
import 'package:joltax_framework/taycan/taycan_service.dart';
import 'package:joltax_framework/taycan/models/tc_command.dart';

final ArgParser parser = ArgParser(allowTrailingOptions: true);

///All commands that can be given with Taycan are here
List<TcCommand> allCommands = [
  TcCommand(
    name: 'page',
    options: 1,
    category: 'make',
    arguments: ['-h'],
    action: _makePage,
  ),
];

///First test configuration to use joltax framework
_makePage(List<String> arguments) async {
  parser.addFlag(
    'help',
    abbr: 'h',
    help: 'Creates a new page widget for your project.',
    negatable: false,
  );

  final ArgResults argResults = parser.parse(arguments);

  TaycanService.hasHelpFlag(
    argResults['help'],
    parser.usage,
  );

  TaycanConsole.writeInGreen('SUCCESSS!!!!');
}
