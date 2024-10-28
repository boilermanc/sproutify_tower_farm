import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  String _farmID = '';
  String get farmID => _farmID;
  set farmID(String value) {
    _farmID = value;
  }

  String _farmName = '';
  String get farmName => _farmName;
  set farmName(String value) {
    _farmName = value;
  }

  String _farmUnit = '';
  String get farmUnit => _farmUnit;
  set farmUnit(String value) {
    _farmUnit = value;
  }

  String _firstName = '';
  String get firstName => _firstName;
  set firstName(String value) {
    _firstName = value;
  }

  String _addSeed = '';
  String get addSeed => _addSeed;
  set addSeed(String value) {
    _addSeed = value;
  }

  int _addSeedPlantID = 0;
  int get addSeedPlantID => _addSeedPlantID;
  set addSeedPlantID(int value) {
    _addSeedPlantID = value;
  }

  List<String> _whereDoYouGrow = [];
  List<String> get whereDoYouGrow => _whereDoYouGrow;
  set whereDoYouGrow(List<String> value) {
    _whereDoYouGrow = value;
  }

  void addToWhereDoYouGrow(String value) {
    whereDoYouGrow.add(value);
  }

  void removeFromWhereDoYouGrow(String value) {
    whereDoYouGrow.remove(value);
  }

  void removeAtIndexFromWhereDoYouGrow(int index) {
    whereDoYouGrow.removeAt(index);
  }

  void updateWhereDoYouGrowAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    whereDoYouGrow[index] = updateFn(_whereDoYouGrow[index]);
  }

  void insertAtIndexInWhereDoYouGrow(int index, String value) {
    whereDoYouGrow.insert(index, value);
  }

  int _numberOfTowers = 0;
  int get numberOfTowers => _numberOfTowers;
  set numberOfTowers(int value) {
    _numberOfTowers = value;
  }

  bool _hasTower = false;
  bool get hasTower => _hasTower;
  set hasTower(bool value) {
    _hasTower = value;
  }

  DateTime? _lightTimeOn;
  DateTime? get lightTimeOn => _lightTimeOn;
  set lightTimeOn(DateTime? value) {
    _lightTimeOn = value;
  }

  DateTime? _lightTimeOff;
  DateTime? get lightTimeOff => _lightTimeOff;
  set lightTimeOff(DateTime? value) {
    _lightTimeOff = value;
  }

  bool _usesLighting = false;
  bool get usesLighting => _usesLighting;
  set usesLighting(bool value) {
    _usesLighting = value;
  }

  bool _hasSensor = false;
  bool get hasSensor => _hasSensor;
  set hasSensor(bool value) {
    _hasSensor = value;
  }

  bool _plantSearchActive = false;
  bool get plantSearchActive => _plantSearchActive;
  set plantSearchActive(bool value) {
    _plantSearchActive = value;
  }

  String _selectedQuantity = '';
  String get selectedQuantity => _selectedQuantity;
  set selectedQuantity(String value) {
    _selectedQuantity = value;
  }

  int _selectedQuantityInt = 0;
  int get selectedQuantityInt => _selectedQuantityInt;
  set selectedQuantityInt(int value) {
    _selectedQuantityInt = value;
  }

  String _controllerIDForSchedule = '';
  String get controllerIDForSchedule => _controllerIDForSchedule;
  set controllerIDForSchedule(String value) {
    _controllerIDForSchedule = value;
  }

  String _selectedZone = '';
  String get selectedZone => _selectedZone;
  set selectedZone(String value) {
    _selectedZone = value;
  }

  String _selectedZoneName = '';
  String get selectedZoneName => _selectedZoneName;
  set selectedZoneName(String value) {
    _selectedZoneName = value;
  }

  int _selectedFixtureQuantity = 0;
  int get selectedFixtureQuantity => _selectedFixtureQuantity;
  set selectedFixtureQuantity(int value) {
    _selectedFixtureQuantity = value;
  }

  bool _zoneSelected = false;
  bool get zoneSelected => _zoneSelected;
  set zoneSelected(bool value) {
    _zoneSelected = value;
  }

  String _selectedTowerZoneID = '';
  String get selectedTowerZoneID => _selectedTowerZoneID;
  set selectedTowerZoneID(String value) {
    _selectedTowerZoneID = value;
  }

  int _zoneCount = 0;
  int get zoneCount => _zoneCount;
  set zoneCount(int value) {
    _zoneCount = value;
  }

  String _zoneButtonColor = '';
  String get zoneButtonColor => _zoneButtonColor;
  set zoneButtonColor(String value) {
    _zoneButtonColor = value;
  }

  int _availablePlantQuantity = 0;
  int get availablePlantQuantity => _availablePlantQuantity;
  set availablePlantQuantity(int value) {
    _availablePlantQuantity = value;
  }

  int _currentQuantity = 0;
  int get currentQuantity => _currentQuantity;
  set currentQuantity(int value) {
    _currentQuantity = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
