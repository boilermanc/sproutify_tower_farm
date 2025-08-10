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

Future<bool> sprayCalculatorAction(
  String selectedUnit,
  int multiplier,
  String pestProductID,
) async {
  print('🚀 Action started!');

  try {
    print(
        '📊 Values: unit=$selectedUnit, multiplier=$multiplier, productId=$pestProductID');

    // QUERY THE DATABASE for the selected product
    final productData = await SupaFlow.client
        .from('product_mixing_details')
        .select(
            'rate_per_gallon, rate_unit_gallon, rate_per_quart, rate_unit_quart, rate_per_liter, rate_unit_liter')
        .eq('product_item_id', pestProductID)
        .single();

    print('📦 Product data: $productData');

    // CALCULATE MIXING DOSE directly (instead of using custom function)
    double calculatedDose = 0.0;

    switch (selectedUnit.toLowerCase()) {
      case 'quart':
        if (productData['rate_per_quart'] != null) {
          calculatedDose =
              productData['rate_per_quart'].toDouble() * multiplier;
        }
        break;
      case 'gallon':
        if (productData['rate_per_gallon'] != null) {
          calculatedDose =
              productData['rate_per_gallon'].toDouble() * multiplier;
        }
        break;
      case 'liter':
        if (productData['rate_per_liter'] != null) {
          calculatedDose =
              productData['rate_per_liter'].toDouble() * multiplier;
        }
        break;
    }

    // Round to 2 decimal places
    calculatedDose = double.parse(calculatedDose.toStringAsFixed(2));

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

    print(
        '💧 Calculated: $calculatedDose $doseUnit for $multiplier ${selectedUnit}s');

    // Store results in FFAppState for the component to read
    FFAppState().update(() {
      FFAppState().calculatedDose = calculatedDose;
      FFAppState().selectedDoseUnit = doseUnit;
    });

    print('✅ Calculation completed successfully');
    return true;
  } catch (e) {
    print('❌ Error: $e');
    // Store error values
    FFAppState().update(() {
      FFAppState().calculatedDose = 0.0;
      FFAppState().selectedDoseUnit = "Error";
    });
    return false;
  }
}
