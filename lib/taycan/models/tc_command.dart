class TcCommand {
  String? name;
  int? options;
  List<String>? arguments;
  String? category;
  Function? action;

  TcCommand(
      {this.name, this.options, this.arguments, this.category, this.action});
}
