// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TowerSelectionStruct extends BaseStruct {
  TowerSelectionStruct({
    List<int>? towerId,
    List<String>? farmId,
    List<String>? towerIdentifier,
  })  : _towerId = towerId,
        _farmId = farmId,
        _towerIdentifier = towerIdentifier;

  // "tower_id" field.
  List<int>? _towerId;
  List<int> get towerId => _towerId ?? const [];
  set towerId(List<int>? val) => _towerId = val;

  void updateTowerId(Function(List<int>) updateFn) {
    updateFn(_towerId ??= []);
  }

  bool hasTowerId() => _towerId != null;

  // "farm_id" field.
  List<String>? _farmId;
  List<String> get farmId => _farmId ?? const [];
  set farmId(List<String>? val) => _farmId = val;

  void updateFarmId(Function(List<String>) updateFn) {
    updateFn(_farmId ??= []);
  }

  bool hasFarmId() => _farmId != null;

  // "tower_identifier" field.
  List<String>? _towerIdentifier;
  List<String> get towerIdentifier => _towerIdentifier ?? const [];
  set towerIdentifier(List<String>? val) => _towerIdentifier = val;

  void updateTowerIdentifier(Function(List<String>) updateFn) {
    updateFn(_towerIdentifier ??= []);
  }

  bool hasTowerIdentifier() => _towerIdentifier != null;

  static TowerSelectionStruct fromMap(Map<String, dynamic> data) =>
      TowerSelectionStruct(
        towerId: getDataList(data['tower_id']),
        farmId: getDataList(data['farm_id']),
        towerIdentifier: getDataList(data['tower_identifier']),
      );

  static TowerSelectionStruct? maybeFromMap(dynamic data) => data is Map
      ? TowerSelectionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tower_id': _towerId,
        'farm_id': _farmId,
        'tower_identifier': _towerIdentifier,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tower_id': serializeParam(
          _towerId,
          ParamType.int,
          isList: true,
        ),
        'farm_id': serializeParam(
          _farmId,
          ParamType.String,
          isList: true,
        ),
        'tower_identifier': serializeParam(
          _towerIdentifier,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static TowerSelectionStruct fromSerializableMap(Map<String, dynamic> data) =>
      TowerSelectionStruct(
        towerId: deserializeParam<int>(
          data['tower_id'],
          ParamType.int,
          true,
        ),
        farmId: deserializeParam<String>(
          data['farm_id'],
          ParamType.String,
          true,
        ),
        towerIdentifier: deserializeParam<String>(
          data['tower_identifier'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'TowerSelectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TowerSelectionStruct &&
        listEquality.equals(towerId, other.towerId) &&
        listEquality.equals(farmId, other.farmId) &&
        listEquality.equals(towerIdentifier, other.towerIdentifier);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([towerId, farmId, towerIdentifier]);
}

TowerSelectionStruct createTowerSelectionStruct() => TowerSelectionStruct();
