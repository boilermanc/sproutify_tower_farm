import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/lat_lng.dart';
import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case RolesRow:
            return RolesRow(data);
          case ProductTypeUnitsRow:
            return ProductTypeUnitsRow(data);
          case LatestLightStatusRow:
            return LatestLightStatusRow(data);
          case TaskListViewRow:
            return TaskListViewRow(data);
          case IpmDashboardMetricsRow:
            return IpmDashboardMetricsRow(data);
          case RoleCategoriesRow:
            return RoleCategoriesRow(data);
          case ProductSafetyDetailsExpandedRow:
            return ProductSafetyDetailsExpandedRow(data);
          case VendorTypesBackupRow:
            return VendorTypesBackupRow(data);
          case ProductSdsApplicationMethodsRow:
            return ProductSdsApplicationMethodsRow(data);
          case UserFarmsRow:
            return UserFarmsRow(data);
          case TaskMainCategoryTasksFlatViewRow:
            return TaskMainCategoryTasksFlatViewRow(data);
          case MechanicalsHeaterDetailsRow:
            return MechanicalsHeaterDetailsRow(data);
          case LightingCostWithCountryRow:
            return LightingCostWithCountryRow(data);
          case CustomerCareSayingsRow:
            return CustomerCareSayingsRow(data);
          case ControllersRow:
            return ControllersRow(data);
          case SensorTypesRow:
            return SensorTypesRow(data);
          case ControllerPinsDropdownViewRow:
            return ControllerPinsDropdownViewRow(data);
          case ProductDosingRatesRow:
            return ProductDosingRatesRow(data);
          case TaskUserTaskListViewRow:
            return TaskUserTaskListViewRow(data);
          case StatesRow:
            return StatesRow(data);
          case TowersAvailableRow:
            return TowersAvailableRow(data);
          case VendorCategoriesRow:
            return VendorCategoriesRow(data);
          case ProductDailyUsageRow:
            return ProductDailyUsageRow(data);
          case ProductInventoryThresholdsRow:
            return ProductInventoryThresholdsRow(data);
          case CustomerViewRow:
            return CustomerViewRow(data);
          case MonitoringTrendSummaryRow:
            return MonitoringTrendSummaryRow(data);
          case MonitoringTowerPhAdjustmentsRow:
            return MonitoringTowerPhAdjustmentsRow(data);
          case MethodProductDefaultsRow:
            return MethodProductDefaultsRow(data);
          case TaskDetailViewRow:
            return TaskDetailViewRow(data);
          case RoutineSchedulesRow:
            return RoutineSchedulesRow(data);
          case TowersStatusRow:
            return TowersStatusRow(data);
          case ProductInventoryLevelsRow:
            return ProductInventoryLevelsRow(data);
          case LatestWaterFlowReadingsRow:
            return LatestWaterFlowReadingsRow(data);
          case FarmsRow:
            return FarmsRow(data);
          case TowerPlantsDetailRow:
            return TowerPlantsDetailRow(data);
          case TowerAvailablePortsRow:
            return TowerAvailablePortsRow(data);
          case ViewProfileRolesRow:
            return ViewProfileRolesRow(data);
          case TaskAssignmentViewRow:
            return TaskAssignmentViewRow(data);
          case PlantDetailWithImagesRow:
            return PlantDetailWithImagesRow(data);
          case TowerPortsRow:
            return TowerPortsRow(data);
          case ProductTransactionsRow:
            return ProductTransactionsRow(data);
          case PlantCategoryRow:
            return PlantCategoryRow(data);
          case FarmPlantsRow:
            return FarmPlantsRow(data);
          case FixturesRow:
            return FixturesRow(data);
          case TowerDashboardBasicRow:
            return TowerDashboardBasicRow(data);
          case UnitConversionsRow:
            return UnitConversionsRow(data);
          case VendorsRow:
            return VendorsRow(data);
          case FarmImagesRow:
            return FarmImagesRow(data);
          case ControllerTypeViewRow:
            return ControllerTypeViewRow(data);
          case ColorCodesRow:
            return ColorCodesRow(data);
          case TaskRolesListRow:
            return TaskRolesListRow(data);
          case SimplifiedTowerDashboardRow:
            return SimplifiedTowerDashboardRow(data);
          case LightUsageRow:
            return LightUsageRow(data);
          case ProfileRolesListRow:
            return ProfileRolesListRow(data);
          case PestTreatmentLocationsRow:
            return PestTreatmentLocationsRow(data);
          case WeeklyGrowSheetRow:
            return WeeklyGrowSheetRow(data);
          case TestPrecautionaryViewRow:
            return TestPrecautionaryViewRow(data);
          case SensorsRow:
            return SensorsRow(data);
          case FarmVisitorLogsRow:
            return FarmVisitorLogsRow(data);
          case TaskUserPerformanceViewRow:
            return TaskUserPerformanceViewRow(data);
          case SpacerInventoryRow:
            return SpacerInventoryRow(data);
          case MonitoringTopDashboardRow:
            return MonitoringTopDashboardRow(data);
          case ActionTypesRow:
            return ActionTypesRow(data);
          case ProductUnitsRow:
            return ProductUnitsRow(data);
          case TaskUsersRow:
            return TaskUsersRow(data);
          case LightUsageSummaryRow:
            return LightUsageSummaryRow(data);
          case FarmRolesRow:
            return FarmRolesRow(data);
          case LightTotalSummaryRow:
            return LightTotalSummaryRow(data);
          case DeviceLogsRow:
            return DeviceLogsRow(data);
          case LightingFixtureSummaryWithVendorRow:
            return LightingFixtureSummaryWithVendorRow(data);
          case TaskMainCategoriesViewRow:
            return TaskMainCategoriesViewRow(data);
          case GrowingMediaRow:
            return GrowingMediaRow(data);
          case ChefWeeklyDeliveriesRow:
            return ChefWeeklyDeliveriesRow(data);
          case WaterFlowQuarterlyTotalsRow:
            return WaterFlowQuarterlyTotalsRow(data);
          case TaskCategoryTasksViewRow:
            return TaskCategoryTasksViewRow(data);
          case TaskCategoriesRow:
            return TaskCategoriesRow(data);
          case TaskPriorityConfigRow:
            return TaskPriorityConfigRow(data);
          case ProductPestChemicalsRow:
            return ProductPestChemicalsRow(data);
          case UnitConversionRow:
            return UnitConversionRow(data);
          case ProfileRolesRow:
            return ProfileRolesRow(data);
          case LightingZoneTowersRow:
            return LightingZoneTowersRow(data);
          case PestObservationsViewRow:
            return PestObservationsViewRow(data);
          case TestTypesRow:
            return TestTypesRow(data);
          case RestaurantOrdersRow:
            return RestaurantOrdersRow(data);
          case TowerContentsRow:
            return TowerContentsRow(data);
          case ProductMonthlyMetricsRow:
            return ProductMonthlyMetricsRow(data);
          case TaskPlantingsRow:
            return TaskPlantingsRow(data);
          case TaskDailyViewRow:
            return TaskDailyViewRow(data);
          case EmployeePresenceRow:
            return EmployeePresenceRow(data);
          case PestObservationsRow:
            return PestObservationsRow(data);
          case DebugLogsRow:
            return DebugLogsRow(data);
          case TowerViewRow:
            return TowerViewRow(data);
          case WaterFlowMonthlyTotalsRow:
            return WaterFlowMonthlyTotalsRow(data);
          case DailySensorSummariesRow:
            return DailySensorSummariesRow(data);
          case FunctionExecutionLogsRow:
            return FunctionExecutionLogsRow(data);
          case TowersRow:
            return TowersRow(data);
          case MonitoringFarmRangesRow:
            return MonitoringFarmRangesRow(data);
          case TestUnitsRow:
            return TestUnitsRow(data);
          case CustomerTypesRow:
            return CustomerTypesRow(data);
          case LightingControllersRow:
            return LightingControllersRow(data);
          case HarvestListItemsRow:
            return HarvestListItemsRow(data);
          case TaskTypeDistributionRow:
            return TaskTypeDistributionRow(data);
          case SensorReadingsRow:
            return SensorReadingsRow(data);
          case ProductChemicalDetailsRow:
            return ProductChemicalDetailsRow(data);
          case ProductItemsRow:
            return ProductItemsRow(data);
          case ProductCustomerDetailsRow:
            return ProductCustomerDetailsRow(data);
          case ProductSafetyEquipmentRow:
            return ProductSafetyEquipmentRow(data);
          case TaskStatusConfigRow:
            return TaskStatusConfigRow(data);
          case MonitoringReportsRow:
            return MonitoringReportsRow(data);
          case ProductEquipmentDetailsRow:
            return ProductEquipmentDetailsRow(data);
          case PestSeverityLevelsRow:
            return PestSeverityLevelsRow(data);
          case ActionsRow:
            return ActionsRow(data);
          case FarmCurrencySettingsRow:
            return FarmCurrencySettingsRow(data);
          case LightingFixturesRow:
            return LightingFixturesRow(data);
          case WaterFlowWeeklyTotalsRow:
            return WaterFlowWeeklyTotalsRow(data);
          case LightingZonesWithControllerRow:
            return LightingZonesWithControllerRow(data);
          case ProfilesRow:
            return ProfilesRow(data);
          case ProductTypesRow:
            return ProductTypesRow(data);
          case VendorsWithTypesRow:
            return VendorsWithTypesRow(data);
          case SeedInventoryRow:
            return SeedInventoryRow(data);
          case PestRecentApplicationsRow:
            return PestRecentApplicationsRow(data);
          case WaterFlowYearlyTotalsRow:
            return WaterFlowYearlyTotalsRow(data);
          case LightingZoneSchedulesRow:
            return LightingZoneSchedulesRow(data);
          case FarmLightingEntriesRow:
            return FarmLightingEntriesRow(data);
          case TestStandardsRow:
            return TestStandardsRow(data);
          case ProductDosingRatesViewRow:
            return ProductDosingRatesViewRow(data);
          case RestaurantAllocationsRow:
            return RestaurantAllocationsRow(data);
          case TaskCategoryMappingRow:
            return TaskCategoryMappingRow(data);
          case LightScheduleRow:
            return LightScheduleRow(data);
          case SpacersReadyRow:
            return SpacersReadyRow(data);
          case ProductSafetyPrecautionsRow:
            return ProductSafetyPrecautionsRow(data);
          case ProductSummaryViewRow:
            return ProductSummaryViewRow(data);
          case CountryCodesRow:
            return CountryCodesRow(data);
          case MonitoringTaskStatusViewRow:
            return MonitoringTaskStatusViewRow(data);
          case PlantsRow:
            return PlantsRow(data);
          case WaterFlowAggregationRow:
            return WaterFlowAggregationRow(data);
          case WorkflowTransitionsViewRow:
            return WorkflowTransitionsViewRow(data);
          case TowerReservationsRow:
            return TowerReservationsRow(data);
          case WaterQualityLogsRow:
            return WaterQualityLogsRow(data);
          case FarmPlantsViewRow:
            return FarmPlantsViewRow(data);
          case ProductInventoryTransactionsRow:
            return ProductInventoryTransactionsRow(data);
          case WorkflowTransitionsRow:
            return WorkflowTransitionsRow(data);
          case WaterQualityTestsRow:
            return WaterQualityTestsRow(data);
          case SquareInventoryRow:
            return SquareInventoryRow(data);
          case ControlsCategoriesRow:
            return ControlsCategoriesRow(data);
          case TaskCategoryExpandableViewRow:
            return TaskCategoryExpandableViewRow(data);
          case PlantCategoryRelationRow:
            return PlantCategoryRelationRow(data);
          case ProductGrowingMediumDetailsRow:
            return ProductGrowingMediumDetailsRow(data);
          case SensorsMacRow:
            return SensorsMacRow(data);
          case ExpandedPrecautionaryStatementsRow:
            return ExpandedPrecautionaryStatementsRow(data);
          case VendorTypesRow:
            return VendorTypesRow(data);
          case MechanicalTypesRow:
            return MechanicalTypesRow(data);
          case WeeklyDeliveriesRow:
            return WeeklyDeliveriesRow(data);
          case SeedingCostsRow:
            return SeedingCostsRow(data);
          case MechanicalActionsRow:
            return MechanicalActionsRow(data);
          case MonitoringEcRangesRow:
            return MonitoringEcRangesRow(data);
          case AllocationsRow:
            return AllocationsRow(data);
          case CurrentTowerPlantsRow:
            return CurrentTowerPlantsRow(data);
          case UnitsRow:
            return UnitsRow(data);
          case TowerIdMappingRow:
            return TowerIdMappingRow(data);
          case ControllerPinsRow:
            return ControllerPinsRow(data);
          case MonitoringTowerReadingsRow:
            return MonitoringTowerReadingsRow(data);
          case ExpandedRequiredEquipmentRow:
            return ExpandedRequiredEquipmentRow(data);
          case WaterQualityTestDetailsRow:
            return WaterQualityTestDetailsRow(data);
          case FoodSafetyPlansRow:
            return FoodSafetyPlansRow(data);
          case TowerDashboardRow:
            return TowerDashboardRow(data);
          case ProductTypeUnitViewRow:
            return ProductTypeUnitViewRow(data);
          case LightingCostRow:
            return LightingCostRow(data);
          case ProductCleaningSupplyDetailsRow:
            return ProductCleaningSupplyDetailsRow(data);
          case MonitoringTowerDashboardRow:
            return MonitoringTowerDashboardRow(data);
          case DosingOptionsRow:
            return DosingOptionsRow(data);
          case WaterFlowTotalsRow:
            return WaterFlowTotalsRow(data);
          case TaskUsersListRow:
            return TaskUsersListRow(data);
          case LightDashboardMetricsRow:
            return LightDashboardMetricsRow(data);
          case ProductPestTrapDetailsRow:
            return ProductPestTrapDetailsRow(data);
          case ProductSafetyInfoRow:
            return ProductSafetyInfoRow(data);
          case LightFixtureUsageSummaryRow:
            return LightFixtureUsageSummaryRow(data);
          case ControllerTypesRow:
            return ControllerTypesRow(data);
          case TaskTypeHierarchyViewRow:
            return TaskTypeHierarchyViewRow(data);
          case MonitoringIntelligenceViewRow:
            return MonitoringIntelligenceViewRow(data);
          case ApplicationMethodsRow:
            return ApplicationMethodsRow(data);
          case HygienePoliciesRow:
            return HygienePoliciesRow(data);
          case IpmDashboardMetricsTestRow:
            return IpmDashboardMetricsTestRow(data);
          case LightingFixtureAllocationsRow:
            return LightingFixtureAllocationsRow(data);
          case PotableWaterPoliciesRow:
            return PotableWaterPoliciesRow(data);
          case LightingZoneSchedulesWithDaysRow:
            return LightingZoneSchedulesWithDaysRow(data);
          case StandingOrdersRow:
            return StandingOrdersRow(data);
          case TaskNotificationsViewRow:
            return TaskNotificationsViewRow(data);
          case MechanicalsCategoriesRow:
            return MechanicalsCategoriesRow(data);
          case ProductDashboardMetricsRow:
            return ProductDashboardMetricsRow(data);
          case TaskRolesRow:
            return TaskRolesRow(data);
          case MonitoringIntelligenceRow:
            return MonitoringIntelligenceRow(data);
          case LightStateLogsRow:
            return LightStateLogsRow(data);
          case LightZoneUsageSummaryRow:
            return LightZoneUsageSummaryRow(data);
          case MechanicalsMechanicalRow:
            return MechanicalsMechanicalRow(data);
          case PestsRow:
            return PestsRow(data);
          case HarvestListsRow:
            return HarvestListsRow(data);
          case LightingZonesRow:
            return LightingZonesRow(data);
          case DosingUnitsRow:
            return DosingUnitsRow(data);
          case ViewPlantDetailsByCategoryRow:
            return ViewPlantDetailsByCategoryRow(data);
          case TaskHistoryViewRow:
            return TaskHistoryViewRow(data);
          case PlantQuantityRow:
            return PlantQuantityRow(data);
          case ProductSdsRow:
            return ProductSdsRow(data);
          case SensorProvisioningRow:
            return SensorProvisioningRow(data);
          case MonitoringTaskCompletionTypesRow:
            return MonitoringTaskCompletionTypesRow(data);
          case TasksRow:
            return TasksRow(data);
          case ComplianceStatusesRow:
            return ComplianceStatusesRow(data);
          case SafetyEquipmentRow:
            return SafetyEquipmentRow(data);
          case PestLocationsRow:
            return PestLocationsRow(data);
          case SeedInventoryViewRow:
            return SeedInventoryViewRow(data);
          case ReadingTypesRow:
            return ReadingTypesRow(data);
          case ProductApplicationMethodsRow:
            return ProductApplicationMethodsRow(data);
          case TaskHistoryRow:
            return TaskHistoryRow(data);
          case CustomersRow:
            return CustomersRow(data);
          case TaskMainCategoriesRow:
            return TaskMainCategoriesRow(data);
          case PlantCatalogRow:
            return PlantCatalogRow(data);
          case MonitoringReadingChangeLogRow:
            return MonitoringReadingChangeLogRow(data);
          case ProductCategoriesRow:
            return ProductCategoriesRow(data);
          case VendorsBackupRow:
            return VendorsBackupRow(data);
          case CalculatedDosingRatesRow:
            return CalculatedDosingRatesRow(data);
          case FunctionErrorLogsRow:
            return FunctionErrorLogsRow(data);
          case PestControlProductsDetailRow:
            return PestControlProductsDetailRow(data);
          case ApplicationProductUsageRow:
            return ApplicationProductUsageRow(data);
          case AvailablePlantsViewRow:
            return AvailablePlantsViewRow(data);
          case PestControlApplicationsRow:
            return PestControlApplicationsRow(data);
          case TaskDashboardOverviewRow:
            return TaskDashboardOverviewRow(data);
          case OrdersRow:
            return OrdersRow(data);
          case MonitoringAttentionCountRow:
            return MonitoringAttentionCountRow(data);
          case TaskTypesRow:
            return TaskTypesRow(data);
          case ExtendedFarmPlantsViewRow:
            return ExtendedFarmPlantsViewRow(data);
          case LightEventsRow:
            return LightEventsRow(data);
          case TowerCapacityRow:
            return TowerCapacityRow(data);
          case SafetyPrecautionsRow:
            return SafetyPrecautionsRow(data);
          case SensorReadingsCompiledRow:
            return SensorReadingsCompiledRow(data);
          case PestControlProductsRow:
            return PestControlProductsRow(data);
          case ProductStockAlertsRow:
            return ProductStockAlertsRow(data);
          case FixtureTypesRow:
            return FixtureTypesRow(data);
          case ControllerCategoriesRow:
            return ControllerCategoriesRow(data);
          case CurrentWeekGrowSheetRow:
            return CurrentWeekGrowSheetRow(data);
          case TestTowerDashboardRow:
            return TestTowerDashboardRow(data);
          case MainActionTypesRow:
            return MainActionTypesRow(data);
          case LatestSensorReadingsByFarmRow:
            return LatestSensorReadingsByFarmRow(data);
          case ControllersViewRow:
            return ControllersViewRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
