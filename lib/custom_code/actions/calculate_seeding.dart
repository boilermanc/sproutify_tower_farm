// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> calculateSeeding(
  int towerCount,
  int portsPerTower,
  int plantId,
  int overagePercent,
) async {
  // ADD THESE DEBUG LINES RIGHT HERE ↓
  print('calculateSeeding called with:');
  print('towerCount: $towerCount');
  print('portsPerTower: $portsPerTower');
  print('plantId: $plantId');
  print('overagePercent: $overagePercent');
  // ↑ END OF NEW DEBUG LINES

  // Handle empty or invalid inputs
  if (towerCount == 0 || portsPerTower == 0 || plantId == 0) {
    return {
      'error': 'Invalid inputs - check tower count, ports, or plant selection',
      'towerCount': towerCount,
      'portsPerTower': portsPerTower,
      'plantId': plantId,
      'overagePercent': overagePercent,
      'totalPorts': 0,
      'seedsPerPort': 0,
      'baseSeedsNeeded': 0,
      'rowsNeeded': 0,
      'seedsToPlant': 0,
      'overageSeeds': 0,
      'sheetsNeeded': 0
    };
  }

  try {
    // Calculate total ports
    int totalPorts = towerCount * portsPerTower;

    // Get seeds per port from plant table
    final plantResponse = await Supabase.instance.client
        .from('plants')
        .select('seeds_per_port')
        .eq('plant_id', plantId)
        .single();

    // Handle missing or null seeds_per_port
    int seedsPerPort = 1; // Default fallback
    if (plantResponse != null && plantResponse['seeds_per_port'] != null) {
      seedsPerPort = plantResponse['seeds_per_port'] as int;
    }

    // Calculate seeding requirements
    int baseSeedsNeeded = totalPorts * seedsPerPort;
    double seedsWithOverage = baseSeedsNeeded * (1 + overagePercent / 100.0);
    int rowsNeeded = (seedsWithOverage / 7).ceil();
    int seedsToPlant = rowsNeeded * 7;
    int overageSeeds = seedsToPlant - baseSeedsNeeded;
    int sheetsNeeded = (rowsNeeded / 14).ceil();

    // ADD THIS PRINT STATEMENT RIGHT HERE ↓
    print(
        'Returning successful result with towerCount: $towerCount, totalPorts: $totalPorts');
    // ↑ ADD THAT LINE RIGHT ABOVE THE RETURN STATEMENT

    return {
      'success': true,
      'totalPorts': totalPorts,
      'seedsPerPort': seedsPerPort,
      'baseSeedsNeeded': baseSeedsNeeded,
      'rowsNeeded': rowsNeeded,
      'seedsToPlant': seedsToPlant,
      'overageSeeds': overageSeeds,
      'sheetsNeeded': sheetsNeeded,
      'inputs': {
        'towerCount': towerCount,
        'portsPerTower': portsPerTower,
        'plantId': plantId,
        'overagePercent': overagePercent
      }
    };
  } catch (e) {
    // Return detailed error for debugging
    return {
      'error': 'Database or calculation error: ${e.toString()}',
      'towerCount': towerCount,
      'portsPerTower': portsPerTower,
      'plantId': plantId,
      'overagePercent': overagePercent,
      'totalPorts': towerCount * portsPerTower,
      'seedsPerPort': 1,
      'baseSeedsNeeded': 0,
      'rowsNeeded': 0,
      'seedsToPlant': 0,
      'overageSeeds': 0,
      'sheetsNeeded': 0
    };
  }
}
