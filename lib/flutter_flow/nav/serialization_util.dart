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
          case WeeklyHarvestForecastRow:
            return WeeklyHarvestForecastRow(data);
          case RolesRow:
            return RolesRow(data);
          case TaskStatusSummaryByFarmAndRoleViewRow:
            return TaskStatusSummaryByFarmAndRoleViewRow(data);
          case ProductTypeUnitsRow:
            return ProductTypeUnitsRow(data);
          case LatestLightStatusRow:
            return LatestLightStatusRow(data);
          case PestTypesRow:
            return PestTypesRow(data);
          case TaskListViewRow:
            return TaskListViewRow(data);
          case RoleCategoriesRow:
            return RoleCategoriesRow(data);
          case VendorTypesBackupRow:
            return VendorTypesBackupRow(data);
          case SensorReadingsMifloraRow:
            return SensorReadingsMifloraRow(data);
          case CancelledAllocationsViewRow:
            return CancelledAllocationsViewRow(data);
          case TowerProductivityViewRow:
            return TowerProductivityViewRow(data);
          case RptInventoryAgingRow:
            return RptInventoryAgingRow(data);
          case ProductSdsApplicationMethodsRow:
            return ProductSdsApplicationMethodsRow(data);
          case UserFarmsRow:
            return UserFarmsRow(data);
          case FarmProfilesViewRow:
            return FarmProfilesViewRow(data);
          case SensorAlertColorConfigRow:
            return SensorAlertColorConfigRow(data);
          case TaskMainCategoryTasksFlatViewRow:
            return TaskMainCategoryTasksFlatViewRow(data);
          case SensorAlertHistoryViewRow:
            return SensorAlertHistoryViewRow(data);
          case MechanicalsHeaterDetailsRow:
            return MechanicalsHeaterDetailsRow(data);
          case TowerDisplayWithPlantsTestRow:
            return TowerDisplayWithPlantsTestRow(data);
          case LightingCostWithCountryRow:
            return LightingCostWithCountryRow(data);
          case CustomerCareSayingsRow:
            return CustomerCareSayingsRow(data);
          case ControllersRow:
            return ControllersRow(data);
          case SensorTypesRow:
            return SensorTypesRow(data);
          case TowerContentsTestRow:
            return TowerContentsTestRow(data);
          case ControllerPinsDropdownViewRow:
            return ControllerPinsDropdownViewRow(data);
          case VLatestTowerActionsRow:
            return VLatestTowerActionsRow(data);
          case IracMethodsRow:
            return IracMethodsRow(data);
          case ExpandablePestCardsRow:
            return ExpandablePestCardsRow(data);
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
          case SensorReadingTypesViewRow:
            return SensorReadingTypesViewRow(data);
          case ProductInventoryThresholdsRow:
            return ProductInventoryThresholdsRow(data);
          case SpacerWasteReasonsRow:
            return SpacerWasteReasonsRow(data);
          case CustomerViewRow:
            return CustomerViewRow(data);
          case TowerDisplayStatusRow:
            return TowerDisplayStatusRow(data);
          case HarvestInventoryRow:
            return HarvestInventoryRow(data);
          case MonitoringTrendSummaryRow:
            return MonitoringTrendSummaryRow(data);
          case TowerStateSummaryRow:
            return TowerStateSummaryRow(data);
          case FracCodesRow:
            return FracCodesRow(data);
          case RptPendingDeliveriesRow:
            return RptPendingDeliveriesRow(data);
          case SensorAlertNotificationSettingsRow:
            return SensorAlertNotificationSettingsRow(data);
          case MonitoringTowerPhAdjustmentsRow:
            return MonitoringTowerPhAdjustmentsRow(data);
          case MethodProductDefaultsRow:
            return MethodProductDefaultsRow(data);
          case TaskDetailViewRow:
            return TaskDetailViewRow(data);
          case FarmStoreInventoryRow:
            return FarmStoreInventoryRow(data);
          case RoutineSchedulesRow:
            return RoutineSchedulesRow(data);
          case TowersStatusRow:
            return TowersStatusRow(data);
          case VTowerActionValidationRow:
            return VTowerActionValidationRow(data);
          case ProductInventoryLevelsRow:
            return ProductInventoryLevelsRow(data);
          case PlantDistributionBreakdownRow:
            return PlantDistributionBreakdownRow(data);
          case MonitoringEcValueRangesRow:
            return MonitoringEcValueRangesRow(data);
          case SeverityLevelsRow:
            return SeverityLevelsRow(data);
          case LatestWaterFlowReadingsRow:
            return LatestWaterFlowReadingsRow(data);
          case FarmsRow:
            return FarmsRow(data);
          case MechanicalControllerAssignmentsRow:
            return MechanicalControllerAssignmentsRow(data);
          case SensorAlertLogsRow:
            return SensorAlertLogsRow(data);
          case TowerPlantsDetailRow:
            return TowerPlantsDetailRow(data);
          case PlantCatalogMvRow:
            return PlantCatalogMvRow(data);
          case SpacerWasteAnalysisRow:
            return SpacerWasteAnalysisRow(data);
          case TowerAvailablePortsRow:
            return TowerAvailablePortsRow(data);
          case ViewProfileRolesRow:
            return ViewProfileRolesRow(data);
          case MechanicalDashboardSummaryRow:
            return MechanicalDashboardSummaryRow(data);
          case TaskAssignmentViewRow:
            return TaskAssignmentViewRow(data);
          case PlantDetailWithImagesRow:
            return PlantDetailWithImagesRow(data);
          case TowerPortsRow:
            return TowerPortsRow(data);
          case SeedLotsRow:
            return SeedLotsRow(data);
          case ProductTransactionsRow:
            return ProductTransactionsRow(data);
          case PlantCategoryRow:
            return PlantCategoryRow(data);
          case SensorMifloraScanRow:
            return SensorMifloraScanRow(data);
          case FarmPlantsRow:
            return FarmPlantsRow(data);
          case WeeklySeedingPlansRow:
            return WeeklySeedingPlansRow(data);
          case FixturesRow:
            return FixturesRow(data);
          case TowerDashboardBasicRow:
            return TowerDashboardBasicRow(data);
          case UnitConversionsRow:
            return UnitConversionsRow(data);
          case TowerManagementViewRow:
            return TowerManagementViewRow(data);
          case SpacerWasteSeverityListRow:
            return SpacerWasteSeverityListRow(data);
          case VendorsRow:
            return VendorsRow(data);
          case FarmImagesRow:
            return FarmImagesRow(data);
          case PlantWasteReasonsRow:
            return PlantWasteReasonsRow(data);
          case ControllerTypeViewRow:
            return ControllerTypeViewRow(data);
          case ColorCodesRow:
            return ColorCodesRow(data);
          case TaskRolesListRow:
            return TaskRolesListRow(data);
          case TasksRecurringRow:
            return TasksRecurringRow(data);
          case DeliveryOrderItemsViewRow:
            return DeliveryOrderItemsViewRow(data);
          case VDonationUserActivityRow:
            return VDonationUserActivityRow(data);
          case StickyCardN8nInputRow:
            return StickyCardN8nInputRow(data);
          case FarmPestDiseaseControlRow:
            return FarmPestDiseaseControlRow(data);
          case SimplifiedTowerDashboardRow:
            return SimplifiedTowerDashboardRow(data);
          case LightUsageRow:
            return LightUsageRow(data);
          case FarmObservationsRow:
            return FarmObservationsRow(data);
          case ProfileRolesListRow:
            return ProfileRolesListRow(data);
          case PestTreatmentLocationsRow:
            return PestTreatmentLocationsRow(data);
          case InvitationsViewRow:
            return InvitationsViewRow(data);
          case FarmDashboardViewRow:
            return FarmDashboardViewRow(data);
          case RawToVolumeUnitRow:
            return RawToVolumeUnitRow(data);
          case DeliveryOrdersViewRow:
            return DeliveryOrdersViewRow(data);
          case WeeklyGrowSheetRow:
            return WeeklyGrowSheetRow(data);
          case TestPrecautionaryViewRow:
            return TestPrecautionaryViewRow(data);
          case VTowerActionSequencesRow:
            return VTowerActionSequencesRow(data);
          case SensorsRow:
            return SensorsRow(data);
          case FarmVisitorLogsRow:
            return FarmVisitorLogsRow(data);
          case LightingHourlyChartRow:
            return LightingHourlyChartRow(data);
          case CustomerDestinationsViewRow:
            return CustomerDestinationsViewRow(data);
          case TaskUserPerformanceViewRow:
            return TaskUserPerformanceViewRow(data);
          case InitialFarmLoadRow:
            return InitialFarmLoadRow(data);
          case StickyCardsRow:
            return StickyCardsRow(data);
          case SeedInventorySummaryRow:
            return SeedInventorySummaryRow(data);
          case SpacerInventoryRow:
            return SpacerInventoryRow(data);
          case HarvestListViewRow:
            return HarvestListViewRow(data);
          case ActionTypesRow:
            return ActionTypesRow(data);
          case DiseaseObservationsRow:
            return DiseaseObservationsRow(data);
          case ProductUnitsRow:
            return ProductUnitsRow(data);
          case TaskUsersRow:
            return TaskUsersRow(data);
          case ProductDosingRatesCleanRow:
            return ProductDosingRatesCleanRow(data);
          case LightUsageSummaryRow:
            return LightUsageSummaryRow(data);
          case AiAnalysisQualityRow:
            return AiAnalysisQualityRow(data);
          case FarmRolesRow:
            return FarmRolesRow(data);
          case StickyCardTasksRow:
            return StickyCardTasksRow(data);
          case ActiveStickyCardsViewRow:
            return ActiveStickyCardsViewRow(data);
          case PlantWasteSeverityListRow:
            return PlantWasteSeverityListRow(data);
          case ControllerDashboardViewRow:
            return ControllerDashboardViewRow(data);
          case PestManagementDashboardRow:
            return PestManagementDashboardRow(data);
          case LightTotalSummaryRow:
            return LightTotalSummaryRow(data);
          case TaskStatusDashboardSummaryRow:
            return TaskStatusDashboardSummaryRow(data);
          case DeviceLogsRow:
            return DeviceLogsRow(data);
          case LightingFixtureSummaryWithVendorRow:
            return LightingFixtureSummaryWithVendorRow(data);
          case TaskMainCategoriesViewRow:
            return TaskMainCategoriesViewRow(data);
          case GrowingMediaRow:
            return GrowingMediaRow(data);
          case TowerHistoryRow:
            return TowerHistoryRow(data);
          case WaterFlowQuarterlyTotalsRow:
            return WaterFlowQuarterlyTotalsRow(data);
          case TaskCategoryTasksViewRow:
            return TaskCategoryTasksViewRow(data);
          case TaskCategoriesRow:
            return TaskCategoriesRow(data);
          case TaskPriorityConfigRow:
            return TaskPriorityConfigRow(data);
          case LightingUsageBillingSummaryRow:
            return LightingUsageBillingSummaryRow(data);
          case MechanicalDashboardViewRow:
            return MechanicalDashboardViewRow(data);
          case UnitConversionRow:
            return UnitConversionRow(data);
          case ProfileRolesRow:
            return ProfileRolesRow(data);
          case LightingZoneTowersRow:
            return LightingZoneTowersRow(data);
          case TestTypesRow:
            return TestTypesRow(data);
          case PlantWasteRecordsRow:
            return PlantWasteRecordsRow(data);
          case RestaurantOrdersRow:
            return RestaurantOrdersRow(data);
          case TowerContentsRow:
            return TowerContentsRow(data);
          case ControllerSprinklerHistoryRow:
            return ControllerSprinklerHistoryRow(data);
          case FarmStoreInventoryViewRow:
            return FarmStoreInventoryViewRow(data);
          case PestControlProductsRecentApplicationsRow:
            return PestControlProductsRecentApplicationsRow(data);
          case ProductMonthlyMetricsRow:
            return ProductMonthlyMetricsRow(data);
          case PestLatestTreatmentsRow:
            return PestLatestTreatmentsRow(data);
          case TowerDisplayWithPlantsNewRow:
            return TowerDisplayWithPlantsNewRow(data);
          case TowerLastActionRow:
            return TowerLastActionRow(data);
          case TaskDailyViewRow:
            return TaskDailyViewRow(data);
          case StickyCardRefreshesRow:
            return StickyCardRefreshesRow(data);
          case EmployeePresenceRow:
            return EmployeePresenceRow(data);
          case MechanicalControllerAssignmentsViewRow:
            return MechanicalControllerAssignmentsViewRow(data);
          case ProductSafetyAllItemsRow:
            return ProductSafetyAllItemsRow(data);
          case LocallineOrderItemsViewRow:
            return LocallineOrderItemsViewRow(data);
          case PestObservationsRow:
            return PestObservationsRow(data);
          case StickyCardCheckDropdownRow:
            return StickyCardCheckDropdownRow(data);
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
          case VTowerStateVerificationRow:
            return VTowerStateVerificationRow(data);
          case FarmsWithFormattedAddressRow:
            return FarmsWithFormattedAddressRow(data);
          case StickyCardLocationsRow:
            return StickyCardLocationsRow(data);
          case MonitoringFarmRangesRow:
            return MonitoringFarmRangesRow(data);
          case TestUnitsRow:
            return TestUnitsRow(data);
          case SpacerWasteTrackingRow:
            return SpacerWasteTrackingRow(data);
          case CustomerTypesRow:
            return CustomerTypesRow(data);
          case LightingControllersRow:
            return LightingControllersRow(data);
          case ProductCatalogRow:
            return ProductCatalogRow(data);
          case HarvestListItemsRow:
            return HarvestListItemsRow(data);
          case TaskTypeDistributionRow:
            return TaskTypeDistributionRow(data);
          case CharityDestinationsViewRow:
            return CharityDestinationsViewRow(data);
          case OrderItemsViewRow:
            return OrderItemsViewRow(data);
          case LightingCostTiersRow:
            return LightingCostTiersRow(data);
          case VolumeConversionFactorsRow:
            return VolumeConversionFactorsRow(data);
          case SensorReadingsRow:
            return SensorReadingsRow(data);
          case IracModesOfActionRow:
            return IracModesOfActionRow(data);
          case SensorAlertStatusRow:
            return SensorAlertStatusRow(data);
          case ProductChemicalDetailsRow:
            return ProductChemicalDetailsRow(data);
          case LocationsRow:
            return LocationsRow(data);
          case ProductItemsRow:
            return ProductItemsRow(data);
          case ProductCustomerDetailsRow:
            return ProductCustomerDetailsRow(data);
          case IracMethodsWithModesRow:
            return IracMethodsWithModesRow(data);
          case ProductSafetyEquipmentRow:
            return ProductSafetyEquipmentRow(data);
          case TaskStatusConfigRow:
            return TaskStatusConfigRow(data);
          case TowerPlantingCatalogRow:
            return TowerPlantingCatalogRow(data);
          case SensorViewRow:
            return SensorViewRow(data);
          case HierarchicalPestPressureRow:
            return HierarchicalPestPressureRow(data);
          case PlantImagesRow:
            return PlantImagesRow(data);
          case PlantWasteAreasListRow:
            return PlantWasteAreasListRow(data);
          case MonitoringReportsRow:
            return MonitoringReportsRow(data);
          case TaskRecurringViewRow:
            return TaskRecurringViewRow(data);
          case MonitoringSummaryDashboardRow:
            return MonitoringSummaryDashboardRow(data);
          case ProductSafetyPrecautionsListRow:
            return ProductSafetyPrecautionsListRow(data);
          case FracCodesViewRow:
            return FracCodesViewRow(data);
          case ProductEquipmentDetailsRow:
            return ProductEquipmentDetailsRow(data);
          case ActionsRow:
            return ActionsRow(data);
          case WorkflowTransitionsBackupRow:
            return WorkflowTransitionsBackupRow(data);
          case FarmCurrencySettingsRow:
            return FarmCurrencySettingsRow(data);
          case RecentAllocationsViewRow:
            return RecentAllocationsViewRow(data);
          case LightingFixturesRow:
            return LightingFixturesRow(data);
          case LightUsageRealtimeRow:
            return LightUsageRealtimeRow(data);
          case WaterFlowWeeklyTotalsRow:
            return WaterFlowWeeklyTotalsRow(data);
          case WeeklySeedingPlansUiRow:
            return WeeklySeedingPlansUiRow(data);
          case LightingZonesWithControllerRow:
            return LightingZonesWithControllerRow(data);
          case ProfilesRow:
            return ProfilesRow(data);
          case TowerActionHistoryBackup20241123Row:
            return TowerActionHistoryBackup20241123Row(data);
          case ProductTypesRow:
            return ProductTypesRow(data);
          case VendorsWithTypesRow:
            return VendorsWithTypesRow(data);
          case RptSummaryStatsRow:
            return RptSummaryStatsRow(data);
          case SeedInventoryRow:
            return SeedInventoryRow(data);
          case PestRecentApplicationsRow:
            return PestRecentApplicationsRow(data);
          case WaterFlowYearlyTotalsRow:
            return WaterFlowYearlyTotalsRow(data);
          case TowerDisplayWithPlantsRow:
            return TowerDisplayWithPlantsRow(data);
          case TowerStateLogsRow:
            return TowerStateLogsRow(data);
          case TowerActionSequencesRow:
            return TowerActionSequencesRow(data);
          case LightingZoneSchedulesRow:
            return LightingZoneSchedulesRow(data);
          case SpacerWasteReasonsListRow:
            return SpacerWasteReasonsListRow(data);
          case TowerWorkflowSetupRow:
            return TowerWorkflowSetupRow(data);
          case WeeklyGrowSheetViewRow:
            return WeeklyGrowSheetViewRow(data);
          case DonationTrackingRow:
            return DonationTrackingRow(data);
          case FarmLightingEntriesRow:
            return FarmLightingEntriesRow(data);
          case TowerActionHistoryRow:
            return TowerActionHistoryRow(data);
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
          case ProductSafetyPrecautionsRow:
            return ProductSafetyPrecautionsRow(data);
          case TowerGrowingPlantsRow:
            return TowerGrowingPlantsRow(data);
          case ProductSummaryViewRow:
            return ProductSummaryViewRow(data);
          case SdsExtractedDataRow:
            return SdsExtractedDataRow(data);
          case OrderItemsRow:
            return OrderItemsRow(data);
          case ProductPestCatalogRow:
            return ProductPestCatalogRow(data);
          case PendingStickyCardTasksRow:
            return PendingStickyCardTasksRow(data);
          case SensorReadingMapRow:
            return SensorReadingMapRow(data);
          case CountryCodesRow:
            return CountryCodesRow(data);
          case PlantsRow:
            return PlantsRow(data);
          case SensorAlertThresholdsRow:
            return SensorAlertThresholdsRow(data);
          case WaterFlowAggregationRow:
            return WaterFlowAggregationRow(data);
          case WorkflowTransitionsViewRow:
            return WorkflowTransitionsViewRow(data);
          case TowerReservationsRow:
            return TowerReservationsRow(data);
          case WeeklyPlanDetailsUiRow:
            return WeeklyPlanDetailsUiRow(data);
          case WaterQualityLogsRow:
            return WaterQualityLogsRow(data);
          case PlantHarvestTimelineRow:
            return PlantHarvestTimelineRow(data);
          case SensorEnvironmentSummaryRow:
            return SensorEnvironmentSummaryRow(data);
          case FarmVendorsViewRow:
            return FarmVendorsViewRow(data);
          case FarmPlantsViewRow:
            return FarmPlantsViewRow(data);
          case MechanicalZoneSummaryRow:
            return MechanicalZoneSummaryRow(data);
          case ProductInventoryTransactionsRow:
            return ProductInventoryTransactionsRow(data);
          case WorkflowTransitionsRow:
            return WorkflowTransitionsRow(data);
          case SeedTransactionsRow:
            return SeedTransactionsRow(data);
          case WaterQualityTestsRow:
            return WaterQualityTestsRow(data);
          case SquareInventoryRow:
            return SquareInventoryRow(data);
          case ControlsCategoriesRow:
            return ControlsCategoriesRow(data);
          case TaskCategoryExpandableViewRow:
            return TaskCategoryExpandableViewRow(data);
          case PestProductTypesRow:
            return PestProductTypesRow(data);
          case ProductSdsInfoViewRow:
            return ProductSdsInfoViewRow(data);
          case FarmVendorsRow:
            return FarmVendorsRow(data);
          case TowerStatusRow:
            return TowerStatusRow(data);
          case PlantCategoryRelationRow:
            return PlantCategoryRelationRow(data);
          case LocallineOrderItemsRow:
            return LocallineOrderItemsRow(data);
          case ProductGrowingMediumDetailsRow:
            return ProductGrowingMediumDetailsRow(data);
          case LocallineOrderHeadersRow:
            return LocallineOrderHeadersRow(data);
          case SensorsMacRow:
            return SensorsMacRow(data);
          case AllocationSummaryViewRow:
            return AllocationSummaryViewRow(data);
          case LightUsageCostTiersRow:
            return LightUsageCostTiersRow(data);
          case ExpandedPrecautionaryStatementsRow:
            return ExpandedPrecautionaryStatementsRow(data);
          case VendorTypesRow:
            return VendorTypesRow(data);
          case TowerCurrentStateRow:
            return TowerCurrentStateRow(data);
          case ControllerSprinklerStatusRow:
            return ControllerSprinklerStatusRow(data);
          case LightingMobileViewRow:
            return LightingMobileViewRow(data);
          case ProductSafetyEquipmentListRow:
            return ProductSafetyEquipmentListRow(data);
          case MechanicalTypesRow:
            return MechanicalTypesRow(data);
          case AiPestInsightsRow:
            return AiPestInsightsRow(data);
          case DiseasesRow:
            return DiseasesRow(data);
          case WeeklyDeliveriesRow:
            return WeeklyDeliveriesRow(data);
          case SeedingCostsRow:
            return SeedingCostsRow(data);
          case RptAvailableHarvestRow:
            return RptAvailableHarvestRow(data);
          case MechanicalActionsRow:
            return MechanicalActionsRow(data);
          case MonitoringTowerDashboardFixedRow:
            return MonitoringTowerDashboardFixedRow(data);
          case MonitoringEcRangesRow:
            return MonitoringEcRangesRow(data);
          case ProductExtractedIntervalsRow:
            return ProductExtractedIntervalsRow(data);
          case AllocationsRow:
            return AllocationsRow(data);
          case CurrentTowerPlantsRow:
            return CurrentTowerPlantsRow(data);
          case UnitsRow:
            return UnitsRow(data);
          case TowerIdMappingRow:
            return TowerIdMappingRow(data);
          case ProductLabelExtractedDataRow:
            return ProductLabelExtractedDataRow(data);
          case RptAllocationEfficiencyRow:
            return RptAllocationEfficiencyRow(data);
          case ControllerPinsRow:
            return ControllerPinsRow(data);
          case ActionRelationshipsRow:
            return ActionRelationshipsRow(data);
          case TowerWorkflowTransitionsRow:
            return TowerWorkflowTransitionsRow(data);
          case VDonationDetailsRow:
            return VDonationDetailsRow(data);
          case MonitoringTowerReadingsRow:
            return MonitoringTowerReadingsRow(data);
          case TowerActionsViewRow:
            return TowerActionsViewRow(data);
          case ExpandedRequiredEquipmentRow:
            return ExpandedRequiredEquipmentRow(data);
          case UnitConversionFactorsRow:
            return UnitConversionFactorsRow(data);
          case RptDailyOperationsRow:
            return RptDailyOperationsRow(data);
          case VUnifiedWorkflowMonitoringRow:
            return VUnifiedWorkflowMonitoringRow(data);
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
          case SpacerWasteRecordsRow:
            return SpacerWasteRecordsRow(data);
          case ProductStagingRow:
            return ProductStagingRow(data);
          case StickyCardsFarmSummaryRow:
            return StickyCardsFarmSummaryRow(data);
          case ControllerSprinklerValvesRow:
            return ControllerSprinklerValvesRow(data);
          case TaskTypeHierarchyViewRow:
            return TaskTypeHierarchyViewRow(data);
          case MonitoringIntelligenceViewRow:
            return MonitoringIntelligenceViewRow(data);
          case ApplicationMethodsRow:
            return ApplicationMethodsRow(data);
          case HygienePoliciesRow:
            return HygienePoliciesRow(data);
          case LightingFixtureAllocationsRow:
            return LightingFixtureAllocationsRow(data);
          case SystemNotificationsRow:
            return SystemNotificationsRow(data);
          case PotableWaterPoliciesRow:
            return PotableWaterPoliciesRow(data);
          case LightingZoneSchedulesWithDaysRow:
            return LightingZoneSchedulesWithDaysRow(data);
          case StandingOrdersRow:
            return StandingOrdersRow(data);
          case TaskNotificationsViewRow:
            return TaskNotificationsViewRow(data);
          case MonitoringTowerDashboardEnhancedRow:
            return MonitoringTowerDashboardEnhancedRow(data);
          case OrderDashboardViewRow:
            return OrderDashboardViewRow(data);
          case DeliveryVerificationsRow:
            return DeliveryVerificationsRow(data);
          case TowerDisplayStatusMobileRow:
            return TowerDisplayStatusMobileRow(data);
          case FarmProductsViewRow:
            return FarmProductsViewRow(data);
          case MechanicalsCategoriesRow:
            return MechanicalsCategoriesRow(data);
          case SensorReadingTypesRow:
            return SensorReadingTypesRow(data);
          case ProductDashboardMetricsRow:
            return ProductDashboardMetricsRow(data);
          case LightUsageMonthlyBillingRow:
            return LightUsageMonthlyBillingRow(data);
          case TaskRolesRow:
            return TaskRolesRow(data);
          case MonitoringIntelligenceRow:
            return MonitoringIntelligenceRow(data);
          case InvitationsRow:
            return InvitationsRow(data);
          case LightStateLogsRow:
            return LightStateLogsRow(data);
          case LightZoneUsageSummaryRow:
            return LightZoneUsageSummaryRow(data);
          case MechanicalsMechanicalRow:
            return MechanicalsMechanicalRow(data);
          case PestsRow:
            return PestsRow(data);
          case TaskAvailableStaffRow:
            return TaskAvailableStaffRow(data);
          case HarvestListsRow:
            return HarvestListsRow(data);
          case LightingZonesRow:
            return LightingZonesRow(data);
          case MonitoringPageViewRow:
            return MonitoringPageViewRow(data);
          case InventoryStatusOverviewRow:
            return InventoryStatusOverviewRow(data);
          case PlantHarvestTimelineNewRow:
            return PlantHarvestTimelineNewRow(data);
          case DosingUnitsRow:
            return DosingUnitsRow(data);
          case ViewPlantDetailsByCategoryRow:
            return ViewPlantDetailsByCategoryRow(data);
          case LocallineOrdersRow:
            return LocallineOrdersRow(data);
          case TaskHistoryViewRow:
            return TaskHistoryViewRow(data);
          case OrderStatusesRow:
            return OrderStatusesRow(data);
          case PlantQuantityRow:
            return PlantQuantityRow(data);
          case ProductSdsRow:
            return ProductSdsRow(data);
          case MobilePestDashboardRow:
            return MobilePestDashboardRow(data);
          case SensorProvisioningRow:
            return SensorProvisioningRow(data);
          case MonitoringTaskCompletionTypesRow:
            return MonitoringTaskCompletionTypesRow(data);
          case LatestMacSensorReadingsByFarmRow:
            return LatestMacSensorReadingsByFarmRow(data);
          case OrderHeadersViewRow:
            return OrderHeadersViewRow(data);
          case TasksRow:
            return TasksRow(data);
          case ComplianceStatusesRow:
            return ComplianceStatusesRow(data);
          case SafetyEquipmentRow:
            return SafetyEquipmentRow(data);
          case PestLocationsRow:
            return PestLocationsRow(data);
          case HarvestAvailableViewRow:
            return HarvestAvailableViewRow(data);
          case PlantWasteReasonsListRow:
            return PlantWasteReasonsListRow(data);
          case SeedInventoryViewRow:
            return SeedInventoryViewRow(data);
          case ReadingTypesRow:
            return ReadingTypesRow(data);
          case WeatherLogsRow:
            return WeatherLogsRow(data);
          case ProductApplicationMethodsRow:
            return ProductApplicationMethodsRow(data);
          case TriggerLogsRow:
            return TriggerLogsRow(data);
          case TaskHistoryRow:
            return TaskHistoryRow(data);
          case FarmProductCatalogRow:
            return FarmProductCatalogRow(data);
          case CustomersRow:
            return CustomersRow(data);
          case MonitoringPhRangesRow:
            return MonitoringPhRangesRow(data);
          case FarmTowerConfigsRow:
            return FarmTowerConfigsRow(data);
          case TaskMainCategoriesRow:
            return TaskMainCategoriesRow(data);
          case RptHarvestPerformanceRow:
            return RptHarvestPerformanceRow(data);
          case PlantCatalogRow:
            return PlantCatalogRow(data);
          case ExpiringInventoryViewRow:
            return ExpiringInventoryViewRow(data);
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
          case ProductItemSdsCreationRow:
            return ProductItemSdsCreationRow(data);
          case PestControlApplicationsRow:
            return PestControlApplicationsRow(data);
          case TaskDashboardOverviewRow:
            return TaskDashboardOverviewRow(data);
          case OrdersRow:
            return OrdersRow(data);
          case ProductApplicationTimingRow:
            return ProductApplicationTimingRow(data);
          case LatestSensorReadingsByFarmV2Row:
            return LatestSensorReadingsByFarmV2Row(data);
          case Tower52BackupRow:
            return Tower52BackupRow(data);
          case TaskTypesRow:
            return TaskTypesRow(data);
          case ProductMixingDetailsRow:
            return ProductMixingDetailsRow(data);
          case ExtendedFarmPlantsViewRow:
            return ExtendedFarmPlantsViewRow(data);
          case LightEventsRow:
            return LightEventsRow(data);
          case TowerCapacityRow:
            return TowerCapacityRow(data);
          case VPlantingMonitoringRow:
            return VPlantingMonitoringRow(data);
          case TowerContentInconsistenciesRow:
            return TowerContentInconsistenciesRow(data);
          case SafetyPrecautionsRow:
            return SafetyPrecautionsRow(data);
          case FarmChemicalsRow:
            return FarmChemicalsRow(data);
          case SensorReadingsCompiledRow:
            return SensorReadingsCompiledRow(data);
          case UnitsMasterRow:
            return UnitsMasterRow(data);
          case HarvestSummaryViewRow:
            return HarvestSummaryViewRow(data);
          case PestControlProductsRow:
            return PestControlProductsRow(data);
          case ProductStockAlertsRow:
            return ProductStockAlertsRow(data);
          case FixtureTypesRow:
            return FixtureTypesRow(data);
          case ControllerCategoriesRow:
            return ControllerCategoriesRow(data);
          case RptCustomerDeliveriesRow:
            return RptCustomerDeliveriesRow(data);
          case VTowerActionsRow:
            return VTowerActionsRow(data);
          case CurrentWeekGrowSheetRow:
            return CurrentWeekGrowSheetRow(data);
          case OrderProductStatusRow:
            return OrderProductStatusRow(data);
          case SeedingPlanTowersRow:
            return SeedingPlanTowersRow(data);
          case PendingDeliveriesViewRow:
            return PendingDeliveriesViewRow(data);
          case TableZonesRow:
            return TableZonesRow(data);
          case MonitoringTowerDashboardEnhancedWithValuesRow:
            return MonitoringTowerDashboardEnhancedWithValuesRow(data);
          case StickyCardAnalysisRow:
            return StickyCardAnalysisRow(data);
          case GrowingTablesRow:
            return GrowingTablesRow(data);
          case FarmStoreTransactionsRow:
            return FarmStoreTransactionsRow(data);
          case TestTowerDashboardRow:
            return TestTowerDashboardRow(data);
          case MainActionTypesRow:
            return MainActionTypesRow(data);
          case LatestSensorReadingsByFarmRow:
            return LatestSensorReadingsByFarmRow(data);
          case ControllersViewRow:
            return ControllersViewRow(data);
          case IpdmScheduleRow:
            return IpdmScheduleRow(data);
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
