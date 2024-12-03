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

  String _selectedProductId = '';
  String get selectedProductId => _selectedProductId;
  set selectedProductId(String value) {
    _selectedProductId = value;
  }

  bool _hasProduct = false;
  bool get hasProduct => _hasProduct;
  set hasProduct(bool value) {
    _hasProduct = value;
  }

  String _selectedSDS = '';
  String get selectedSDS => _selectedSDS;
  set selectedSDS(String value) {
    _selectedSDS = value;
  }

  bool _noSDSSelected = false;
  bool get noSDSSelected => _noSDSSelected;
  set noSDSSelected(bool value) {
    _noSDSSelected = value;
  }

  String _selectedProductName = '';
  String get selectedProductName => _selectedProductName;
  set selectedProductName(String value) {
    _selectedProductName = value;
  }

  String _selectedProductType = '';
  String get selectedProductType => _selectedProductType;
  set selectedProductType(String value) {
    _selectedProductType = value;
  }

  String _selectedSDSName = '';
  String get selectedSDSName => _selectedSDSName;
  set selectedSDSName(String value) {
    _selectedSDSName = value;
  }

  String _farmLongitude = '';
  String get farmLongitude => _farmLongitude;
  set farmLongitude(String value) {
    _farmLongitude = value;
  }

  String _farmLatitiude = '';
  String get farmLatitiude => _farmLatitiude;
  set farmLatitiude(String value) {
    _farmLatitiude = value;
  }

  String _localTemp = '';
  String get localTemp => _localTemp;
  set localTemp(String value) {
    _localTemp = value;
  }

  String _localHumdity = '';
  String get localHumdity => _localHumdity;
  set localHumdity(String value) {
    _localHumdity = value;
  }

  String _localCloudCover = '';
  String get localCloudCover => _localCloudCover;
  set localCloudCover(String value) {
    _localCloudCover = value;
  }

  String _localWindSpeed = '';
  String get localWindSpeed => _localWindSpeed;
  set localWindSpeed(String value) {
    _localWindSpeed = value;
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
  }

  List<String> _selectedRoles = [];
  List<String> get selectedRoles => _selectedRoles;
  set selectedRoles(List<String> value) {
    _selectedRoles = value;
  }

  void addToSelectedRoles(String value) {
    selectedRoles.add(value);
  }

  void removeFromSelectedRoles(String value) {
    selectedRoles.remove(value);
  }

  void removeAtIndexFromSelectedRoles(int index) {
    selectedRoles.removeAt(index);
  }

  void updateSelectedRolesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedRoles[index] = updateFn(_selectedRoles[index]);
  }

  void insertAtIndexInSelectedRoles(int index, String value) {
    selectedRoles.insert(index, value);
  }

  String _weatherCity = '';
  String get weatherCity => _weatherCity;
  set weatherCity(String value) {
    _weatherCity = value;
  }

  String _intelligenceSetting = 'critical';
  String get intelligenceSetting => _intelligenceSetting;
  set intelligenceSetting(String value) {
    _intelligenceSetting = value;
  }

  String _selectedintelligenceTower = '';
  String get selectedintelligenceTower => _selectedintelligenceTower;
  set selectedintelligenceTower(String value) {
    _selectedintelligenceTower = value;
  }

  int _taskInsertID = 0;
  int get taskInsertID => _taskInsertID;
  set taskInsertID(int value) {
    _taskInsertID = value;
  }

  String _taskInsertName = '';
  String get taskInsertName => _taskInsertName;
  set taskInsertName(String value) {
    _taskInsertName = value;
  }

  DateTime? _taskInsertDate;
  DateTime? get taskInsertDate => _taskInsertDate;
  set taskInsertDate(DateTime? value) {
    _taskInsertDate = value;
  }

  String _taskInsertStaffID = '';
  String get taskInsertStaffID => _taskInsertStaffID;
  set taskInsertStaffID(String value) {
    _taskInsertStaffID = value;
  }

  String _taskInsertRoleID = '';
  String get taskInsertRoleID => _taskInsertRoleID;
  set taskInsertRoleID(String value) {
    _taskInsertRoleID = value;
  }

  int _selectPlantCatalogQuantity = 0;
  int get selectPlantCatalogQuantity => _selectPlantCatalogQuantity;
  set selectPlantCatalogQuantity(int value) {
    _selectPlantCatalogQuantity = value;
  }

  bool _togglePlantCatalog = false;
  bool get togglePlantCatalog => _togglePlantCatalog;
  set togglePlantCatalog(bool value) {
    _togglePlantCatalog = value;
  }

  int _plantID = 0;
  int get plantID => _plantID;
  set plantID(int value) {
    _plantID = value;
  }

  int _spacerPlantCount = 44;
  int get spacerPlantCount => _spacerPlantCount;
  set spacerPlantCount(int value) {
    _spacerPlantCount = value;
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
