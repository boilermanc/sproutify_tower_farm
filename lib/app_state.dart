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

  String _taskInsertStaffFullName = '';
  String get taskInsertStaffFullName => _taskInsertStaffFullName;
  set taskInsertStaffFullName(String value) {
    _taskInsertStaffFullName = value;
  }

  String _taskInsertRoleName = '';
  String get taskInsertRoleName => _taskInsertRoleName;
  set taskInsertRoleName(String value) {
    _taskInsertRoleName = value;
  }

  List<String> _taskInsertTowers = [];
  List<String> get taskInsertTowers => _taskInsertTowers;
  set taskInsertTowers(List<String> value) {
    _taskInsertTowers = value;
  }

  void addToTaskInsertTowers(String value) {
    taskInsertTowers.add(value);
  }

  void removeFromTaskInsertTowers(String value) {
    taskInsertTowers.remove(value);
  }

  void removeAtIndexFromTaskInsertTowers(int index) {
    taskInsertTowers.removeAt(index);
  }

  void updateTaskInsertTowersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    taskInsertTowers[index] = updateFn(_taskInsertTowers[index]);
  }

  void insertAtIndexInTaskInsertTowers(int index, String value) {
    taskInsertTowers.insert(index, value);
  }

  String _taskInsertNote = '';
  String get taskInsertNote => _taskInsertNote;
  set taskInsertNote(String value) {
    _taskInsertNote = value;
  }

  String _taskInsertTowerSingle = '';
  String get taskInsertTowerSingle => _taskInsertTowerSingle;
  set taskInsertTowerSingle(String value) {
    _taskInsertTowerSingle = value;
  }

  String _taskInsertTowerView = '';
  String get taskInsertTowerView => _taskInsertTowerView;
  set taskInsertTowerView(String value) {
    _taskInsertTowerView = value;
  }

  int _taskInsertTowerID = 0;
  int get taskInsertTowerID => _taskInsertTowerID;
  set taskInsertTowerID(int value) {
    _taskInsertTowerID = value;
  }

  String _inviteID = '';
  String get inviteID => _inviteID;
  set inviteID(String value) {
    _inviteID = value;
  }

  String _inviteEmailAddress = '';
  String get inviteEmailAddress => _inviteEmailAddress;
  set inviteEmailAddress(String value) {
    _inviteEmailAddress = value;
  }

  String _inviteFirstName = '';
  String get inviteFirstName => _inviteFirstName;
  set inviteFirstName(String value) {
    _inviteFirstName = value;
  }

  String _inviteLastName = '';
  String get inviteLastName => _inviteLastName;
  set inviteLastName(String value) {
    _inviteLastName = value;
  }

  String _profileImage = '';
  String get profileImage => _profileImage;
  set profileImage(String value) {
    _profileImage = value;
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
  }

  /// Invitation roleID initial setup
  String _roleID = '';
  String get roleID => _roleID;
  set roleID(String value) {
    _roleID = value;
  }

  String _profileEmail = '';
  String get profileEmail => _profileEmail;
  set profileEmail(String value) {
    _profileEmail = value;
  }

  List<int> _rowIndicies = [];
  List<int> get rowIndicies => _rowIndicies;
  set rowIndicies(List<int> value) {
    _rowIndicies = value;
  }

  void addToRowIndicies(int value) {
    rowIndicies.add(value);
  }

  void removeFromRowIndicies(int value) {
    rowIndicies.remove(value);
  }

  void removeAtIndexFromRowIndicies(int index) {
    rowIndicies.removeAt(index);
  }

  void updateRowIndiciesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    rowIndicies[index] = updateFn(_rowIndicies[index]);
  }

  void insertAtIndexInRowIndicies(int index, int value) {
    rowIndicies.insert(index, value);
  }

  List<int> _towerCounts = [];
  List<int> get towerCounts => _towerCounts;
  set towerCounts(List<int> value) {
    _towerCounts = value;
  }

  void addToTowerCounts(int value) {
    towerCounts.add(value);
  }

  void removeFromTowerCounts(int value) {
    towerCounts.remove(value);
  }

  void removeAtIndexFromTowerCounts(int index) {
    towerCounts.removeAt(index);
  }

  void updateTowerCountsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    towerCounts[index] = updateFn(_towerCounts[index]);
  }

  void insertAtIndexInTowerCounts(int index, int value) {
    towerCounts.insert(index, value);
  }

  int _towerCountPerRow = 0;
  int get towerCountPerRow => _towerCountPerRow;
  set towerCountPerRow(int value) {
    _towerCountPerRow = value;
  }

  List<String> _allTowerPositions = [];
  List<String> get allTowerPositions => _allTowerPositions;
  set allTowerPositions(List<String> value) {
    _allTowerPositions = value;
  }

  void addToAllTowerPositions(String value) {
    allTowerPositions.add(value);
  }

  void removeFromAllTowerPositions(String value) {
    allTowerPositions.remove(value);
  }

  void removeAtIndexFromAllTowerPositions(int index) {
    allTowerPositions.removeAt(index);
  }

  void updateAllTowerPositionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allTowerPositions[index] = updateFn(_allTowerPositions[index]);
  }

  void insertAtIndexInAllTowerPositions(int index, String value) {
    allTowerPositions.insert(index, value);
  }

  List<int> _towerPortCounts = [];
  List<int> get towerPortCounts => _towerPortCounts;
  set towerPortCounts(List<int> value) {
    _towerPortCounts = value;
  }

  void addToTowerPortCounts(int value) {
    towerPortCounts.add(value);
  }

  void removeFromTowerPortCounts(int value) {
    towerPortCounts.remove(value);
  }

  void removeAtIndexFromTowerPortCounts(int index) {
    towerPortCounts.removeAt(index);
  }

  void updateTowerPortCountsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    towerPortCounts[index] = updateFn(_towerPortCounts[index]);
  }

  void insertAtIndexInTowerPortCounts(int index, int value) {
    towerPortCounts.insert(index, value);
  }

  int _defaultPortCount = 44;
  int get defaultPortCount => _defaultPortCount;
  set defaultPortCount(int value) {
    _defaultPortCount = value;
  }

  bool _towersConfigured = false;
  bool get towersConfigured => _towersConfigured;
  set towersConfigured(bool value) {
    _towersConfigured = value;
  }

  bool _towersAreConfigured = false;
  bool get towersAreConfigured => _towersAreConfigured;
  set towersAreConfigured(bool value) {
    _towersAreConfigured = value;
  }

  String _farmCity = '';
  String get farmCity => _farmCity;
  set farmCity(String value) {
    _farmCity = value;
  }

  double _farmLatitude = 0.0;
  double get farmLatitude => _farmLatitude;
  set farmLatitude(double value) {
    _farmLatitude = value;
  }

  double _farmLongitude = 0.0;
  double get farmLongitude => _farmLongitude;
  set farmLongitude(double value) {
    _farmLongitude = value;
  }

  String _farmImage = '';
  String get farmImage => _farmImage;
  set farmImage(String value) {
    _farmImage = value;
  }

  String _farmStreet = '';
  String get farmStreet => _farmStreet;
  set farmStreet(String value) {
    _farmStreet = value;
  }

  String _farmState = '';
  String get farmState => _farmState;
  set farmState(String value) {
    _farmState = value;
  }

  String _farmPostal = '';
  String get farmPostal => _farmPostal;
  set farmPostal(String value) {
    _farmPostal = value;
  }

  String _farmCountry = '';
  String get farmCountry => _farmCountry;
  set farmCountry(String value) {
    _farmCountry = value;
  }

  String _farmEmployeeCount = '';
  String get farmEmployeeCount => _farmEmployeeCount;
  set farmEmployeeCount(String value) {
    _farmEmployeeCount = value;
  }

  bool _hasWaterTest = false;
  bool get hasWaterTest => _hasWaterTest;
  set hasWaterTest(bool value) {
    _hasWaterTest = value;
  }

  bool _hasVendors = false;
  bool get hasVendors => _hasVendors;
  set hasVendors(bool value) {
    _hasVendors = value;
  }

  String _farmTemp = '';
  String get farmTemp => _farmTemp;
  set farmTemp(String value) {
    _farmTemp = value;
  }

  String _farmHumidity = '';
  String get farmHumidity => _farmHumidity;
  set farmHumidity(String value) {
    _farmHumidity = value;
  }

  String _farmCondition = '';
  String get farmCondition => _farmCondition;
  set farmCondition(String value) {
    _farmCondition = value;
  }

  String _farmWeatherIcon = '';
  String get farmWeatherIcon => _farmWeatherIcon;
  set farmWeatherIcon(String value) {
    _farmWeatherIcon = value;
  }

  String _taskRecurrencePattern = '';
  String get taskRecurrencePattern => _taskRecurrencePattern;
  set taskRecurrencePattern(String value) {
    _taskRecurrencePattern = value;
  }

  int _taskRecurrenceInterval = 0;
  int get taskRecurrenceInterval => _taskRecurrenceInterval;
  set taskRecurrenceInterval(int value) {
    _taskRecurrenceInterval = value;
  }

  int _taskWeeklyInterval = 0;
  int get taskWeeklyInterval => _taskWeeklyInterval;
  set taskWeeklyInterval(int value) {
    _taskWeeklyInterval = value;
  }

  int _taskMonthlyInterval = 0;
  int get taskMonthlyInterval => _taskMonthlyInterval;
  set taskMonthlyInterval(int value) {
    _taskMonthlyInterval = value;
  }

  int _taskDayOfMonth = 0;
  int get taskDayOfMonth => _taskDayOfMonth;
  set taskDayOfMonth(int value) {
    _taskDayOfMonth = value;
  }

  String _taskDueTime = '';
  String get taskDueTime => _taskDueTime;
  set taskDueTime(String value) {
    _taskDueTime = value;
  }

  DateTime? _taskStartDate;
  DateTime? get taskStartDate => _taskStartDate;
  set taskStartDate(DateTime? value) {
    _taskStartDate = value;
  }

  DateTime? _taskEndDate;
  DateTime? get taskEndDate => _taskEndDate;
  set taskEndDate(DateTime? value) {
    _taskEndDate = value;
  }

  int _taskDailyInterval = 0;
  int get taskDailyInterval => _taskDailyInterval;
  set taskDailyInterval(int value) {
    _taskDailyInterval = value;
  }

  bool _taskHasNoEndDate = false;
  bool get taskHasNoEndDate => _taskHasNoEndDate;
  set taskHasNoEndDate(bool value) {
    _taskHasNoEndDate = value;
  }

  bool _hasPlants = false;
  bool get hasPlants => _hasPlants;
  set hasPlants(bool value) {
    _hasPlants = value;
  }

  List<int> _taskSelectedWeekdays = [];
  List<int> get taskSelectedWeekdays => _taskSelectedWeekdays;
  set taskSelectedWeekdays(List<int> value) {
    _taskSelectedWeekdays = value;
  }

  void addToTaskSelectedWeekdays(int value) {
    taskSelectedWeekdays.add(value);
  }

  void removeFromTaskSelectedWeekdays(int value) {
    taskSelectedWeekdays.remove(value);
  }

  void removeAtIndexFromTaskSelectedWeekdays(int index) {
    taskSelectedWeekdays.removeAt(index);
  }

  void updateTaskSelectedWeekdaysAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    taskSelectedWeekdays[index] = updateFn(_taskSelectedWeekdays[index]);
  }

  void insertAtIndexInTaskSelectedWeekdays(int index, int value) {
    taskSelectedWeekdays.insert(index, value);
  }

  DateTime? _taskDueTime24Hour;
  DateTime? get taskDueTime24Hour => _taskDueTime24Hour;
  set taskDueTime24Hour(DateTime? value) {
    _taskDueTime24Hour = value;
  }

  int _towerRowUpdated = 0;
  int get towerRowUpdated => _towerRowUpdated;
  set towerRowUpdated(int value) {
    _towerRowUpdated = value;
  }

  int _towerPositionUpdate = 0;
  int get towerPositionUpdate => _towerPositionUpdate;
  set towerPositionUpdate(int value) {
    _towerPositionUpdate = value;
  }

  int _towerPortsUpdate = 0;
  int get towerPortsUpdate => _towerPortsUpdate;
  set towerPortsUpdate(int value) {
    _towerPortsUpdate = value;
  }

  String _selectedFarmNav = 'profile';
  String get selectedFarmNav => _selectedFarmNav;
  set selectedFarmNav(String value) {
    _selectedFarmNav = value;
  }

  String _towerReportHtml = '';
  String get towerReportHtml => _towerReportHtml;
  set towerReportHtml(String value) {
    _towerReportHtml = value;
  }

  String _mcpHtml = '';
  String get mcpHtml => _mcpHtml;
  set mcpHtml(String value) {
    _mcpHtml = value;
  }

  bool _mcpIsLoading = true;
  bool get mcpIsLoading => _mcpIsLoading;
  set mcpIsLoading(bool value) {
    _mcpIsLoading = value;
  }

  bool _showChatContainer = true;
  bool get showChatContainer => _showChatContainer;
  set showChatContainer(bool value) {
    _showChatContainer = value;
  }

  double _calculatedDose = 0.0;
  double get calculatedDose => _calculatedDose;
  set calculatedDose(double value) {
    _calculatedDose = value;
  }

  String _selectedDoseUnit = '';
  String get selectedDoseUnit => _selectedDoseUnit;
  set selectedDoseUnit(String value) {
    _selectedDoseUnit = value;
  }

  int _selectedVolume = 1;
  int get selectedVolume => _selectedVolume;
  set selectedVolume(int value) {
    _selectedVolume = value;
  }

  int _multiplierEntry = 1;
  int get multiplierEntry => _multiplierEntry;
  set multiplierEntry(int value) {
    _multiplierEntry = value;
  }

  String _selectedUnit = 'gallon';
  String get selectedUnit => _selectedUnit;
  set selectedUnit(String value) {
    _selectedUnit = value;
  }

  int _spacerQuantity = 0;
  int get spacerQuantity => _spacerQuantity;
  set spacerQuantity(int value) {
    _spacerQuantity = value;
  }

  DateTime? _spacerSeededDate;
  DateTime? get spacerSeededDate => _spacerSeededDate;
  set spacerSeededDate(DateTime? value) {
    _spacerSeededDate = value;
  }

  bool _taskCompleted = false;
  bool get taskCompleted => _taskCompleted;
  set taskCompleted(bool value) {
    _taskCompleted = value;
  }

  int _spacerQuanityForAddTask = 0;
  int get spacerQuanityForAddTask => _spacerQuanityForAddTask;
  set spacerQuanityForAddTask(int value) {
    _spacerQuanityForAddTask = value;
  }

  bool _hasChemicals = false;
  bool get hasChemicals => _hasChemicals;
  set hasChemicals(bool value) {
    _hasChemicals = value;
  }

  int _spacerPortPlantingCount = 0;
  int get spacerPortPlantingCount => _spacerPortPlantingCount;
  set spacerPortPlantingCount(int value) {
    _spacerPortPlantingCount = value;
  }

  int _spacerTrayPerFarm = 0;
  int get spacerTrayPerFarm => _spacerTrayPerFarm;
  set spacerTrayPerFarm(int value) {
    _spacerTrayPerFarm = value;
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
