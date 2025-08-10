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

Future<String> getDoseUnit(
  String selectedUnit,
  String pestProductID,
) async {
  try {
    // QUERY THE DATABASE for the selected product
    final productData = await SupaFlow.client
        .from('product_mixing_details')
        .select('rate_unit_gallon, rate_unit_quart, rate_unit_liter')
        .eq('product_item_id', pestProductID)
        .single();

    // GET THE CORRECT UNIT from the database
    String doseUnit = "";
    switch (selectedUnit.toLowerCase()) {
      case 'quart':
        doseUnit = productData['rate_unit_quart'] ?? "Teaspoon";
        break;
      case 'gallon':
        doseUnit = productData['rate_unit_gallon'] ?? "Teaspoon";
        break;
      case 'liter':
        doseUnit = productData['rate_unit_liter'] ?? "Teaspoon";
        break;
    }

    return doseUnit;
  } catch (e) {
    print('❌ Error getting dose unit: $e');
    return "Error";
  }
}
