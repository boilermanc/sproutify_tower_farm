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

import 'package:printing/printing.dart';

/// Convert an HTML string to PDF on‑the‑fly and open the OS print dialog.
/// Returns ['true'] on success, ['false', error] on failure.
Future<List<String>> printHtml(
  String html,
) async {
  try {
    await Printing.layoutPdf(
      onLayout: (format) => Printing.convertHtml(
        html: html,
        format: format,
      ),
    );
    return ['true'];
  } catch (e) {
    return ['false', e.toString()];
  }
}
