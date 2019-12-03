class ListItem {
  String _home;
  String _away;
  String _upper;
  String _lower;
  bool isHomePress;
  bool isAwayPress;
  bool isUpPress;
  bool isLoPress;

  ListItem(this._home, this._away, this._upper, this._lower,
      {this.isHomePress, this.isAwayPress, this.isUpPress, this.isLoPress});

  String get lower => _lower;

  set lower(String value) {
    _lower = value;
  }

  String get upper => _upper;

  set upper(String value) {
    _upper = value;
  }

  String get away => _away;

  set away(String value) {
    _away = value;
  }

  String get home => _home;

  set home(String value) {
    _home = value;
  }
}
