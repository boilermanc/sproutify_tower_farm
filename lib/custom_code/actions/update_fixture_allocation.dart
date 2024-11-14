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

Future<List<String>> updateFixtureAllocation(
  String fixtureId,
  String zoneId,
  int quantityChange,
) async {
  try {
    // Fetch current allocation from lighting_fixture_allocations
    final response = await SupaFlow.client
        .from('lighting_fixture_allocations')
        .select()
        .eq('lighting_fixture_id', fixtureId)
        .eq('zone_id', zoneId)
        .maybeSingle();

    // In v2, response is directly the data
    final currentAllocation = response as Map<String, dynamic>?;

    // Calculate new quantity
    int newQuantity =
        (currentAllocation?['quantity'] as int? ?? 0) + quantityChange;

    if (newQuantity < 0) {
      return ['false', 'Insufficient quantity for removal'];
    }

    if (currentAllocation == null && newQuantity > 0) {
      // Insert new allocation
      await SupaFlow.client.from('lighting_fixture_allocations').insert({
        'lighting_fixture_id': fixtureId,
        'zone_id': zoneId,
        'quantity': newQuantity,
      });
    } else if (newQuantity > 0) {
      // Update existing allocation
      await SupaFlow.client
          .from('lighting_fixture_allocations')
          .update({
            'quantity': newQuantity,
          })
          .eq('lighting_fixture_id', fixtureId)
          .eq('zone_id', zoneId);
    } else {
      // Delete allocation if new quantity is 0
      await SupaFlow.client
          .from('lighting_fixture_allocations')
          .delete()
          .eq('lighting_fixture_id', fixtureId)
          .eq('zone_id', zoneId);
    }

    return ['true', 'Fixture allocation updated successfully'];
  } catch (e) {
    return ['false', 'Error updating allocation: ${e.toString()}'];
  }
}
