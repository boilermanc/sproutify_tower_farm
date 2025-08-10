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

Future<double> getCalculatedDose(
  String selectedUnit,
  int multiplier,
  String pestProductID,
) async {
  try {
    // QUERY THE DATABASE for the selected product
    final productData = await SupaFlow.client
        .from('product_mixing_details')
        .select('rate_per_gallon, rate_per_quart, rate_per_liter')
        .eq('product_item_id', pestProductID)
        .single();

    // CALCULATE MIXING DOSE
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
    return double.parse(calculatedDose.toStringAsFixed(2));
  } catch (e) {
    print('❌ Error calculating dose: $e');
    return 0.0;
  }
}
