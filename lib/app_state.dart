import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<dynamic> _user = [
    jsonDecode(
        '{\"uid\":\"id\",\"name\":\"Noah Wingate\",\"email\":\"noah.wingate@gmail.com\",\"password\":\"ccoin\",\"photo_url\":\"http://ccoin.com\"}')
  ];
  List<dynamic> get user => _user;
  set user(List<dynamic> _value) {
    _user = _value;
  }

  void addToUser(dynamic _value) {
    _user.add(_value);
  }

  void removeFromUser(dynamic _value) {
    _user.remove(_value);
  }

  void removeAtIndexFromUser(int _index) {
    _user.removeAt(_index);
  }

  List<dynamic> _menu = [
    jsonDecode(
        '{\"id\":\"0\",\"section\":\"Kava\",\"items\":[{\"id\":\"1\",\"item\":\"Vanuatu\",\"price\":\"6\"},{\"id\":\"2\",\"item\":\"Wow\",\"price\":\"6\"},{\"id\":\"3\",\"item\":\"Solomon\",\"price\":\"6\"},{\"id\":\"4\",\"item\":\"Solomon\",\"price\":\"6\"},{\"id\":\"5\",\"item\":\"Fiji\",\"price\":\"6\"},{\"id\":\"6\",\"item\":\"Papa New Guinea\",\"price\":\"6\"},{\"id\":\"7\",\"item\":\"Volcano\",\"price\":\"6\"},{\"id\":\"8\",\"item\":\"Mason Jar\",\"option\":[{\"name\":\"16oz\",\"price\":\"5\"},{\"name\":\"refil\",\"price\":\"10\"}]},{\"id\":\"9\",\"item\":\"Growler\",\"option\":[{\"name\":\"32oz\",\"price\":\"20\"},{\"name\":\"refil\",\"price\":\"20\"}]},{\"id\":\"10\",\"item\":\"Tanoa Bowl\",\"option\":[{\"name\":\"32oz\",\"price\":\"10\"},{\"name\":\"63oz\",\"price\":\"40\"}]}]}'),
    jsonDecode(
        '{\"id\":\"0\",\"section\":\"Tea\",\"items\":[{\"id\":\"1\",\"item\":\"Boreno-Red\",\"option\":[{\"name\":\"small\",\"price\":\"10\"},{\"name\":\"medium\",\"price\":\"20\"},{\"name\":\"large\",\"price\":\"30\"}]},{\"id\":\"2\",\"item\":\"Maeng Da-Green\",\"option\":[{\"name\":\"small\",\"price\":\"10\"},{\"name\":\"medium\",\"price\":\"20\"},{\"name\":\"large\",\"price\":\"30\"}]},{\"id\":\"3\",\"item\":\"Sumatra White\",\"option\":[{\"name\":\"small\",\"price\":\"10\"},{\"name\":\"medium\",\"price\":\"20\"},{\"name\":\"large\",\"price\":\"30\"}]}]}')
  ];
  List<dynamic> get menu => _menu;
  set menu(List<dynamic> _value) {
    _menu = _value;
  }

  void addToMenu(dynamic _value) {
    _menu.add(_value);
  }

  void removeFromMenu(dynamic _value) {
    _menu.remove(_value);
  }

  void removeAtIndexFromMenu(int _index) {
    _menu.removeAt(_index);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
