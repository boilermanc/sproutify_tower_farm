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

import 'index.dart'; // Imports other custom actions

import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:html' as html;

Future<bool> generateTowerFarmPdf(
  String farmName,
  int totalTowers,
  String generatedAt,
  List<dynamic> summary,
) async {
  try {
    String formatDate(dynamic value) {
      if (value == null) return '-';
      DateTime? date;
      if (value is DateTime) date = value;
      if (value is String && value.isNotEmpty)
        date ??= DateTime.tryParse(value);
      if (date == null) return value.toString();
      date = date.toLocal();
      return '${date.month}/${date.day}/${date.year}';
    }

    // Extract values from summary array
    // Order: [growing, clean, available, needMaintenance, totalPorts, usedPorts, utilizationPercent]
    int growing = (summary.length > 0) ? (summary[0] as num?)?.toInt() ?? 0 : 0;
    int clean = (summary.length > 1) ? (summary[1] as num?)?.toInt() ?? 0 : 0;
    int available =
        (summary.length > 2) ? (summary[2] as num?)?.toInt() ?? 0 : 0;
    int needMaintenance =
        (summary.length > 3) ? (summary[3] as num?)?.toInt() ?? 0 : 0;
    int totalPorts =
        (summary.length > 4) ? (summary[4] as num?)?.toInt() ?? 0 : 0;
    int usedPorts =
        (summary.length > 5) ? (summary[5] as num?)?.toInt() ?? 0 : 0;
    int utilizationPercent =
        (summary.length > 6) ? (summary[6] as num?)?.toInt() ?? 0 : 0;

    pw.Widget summaryBox(String label, int value) {
      return pw.Container(
        padding: const pw.EdgeInsets.all(8),
        decoration: pw.BoxDecoration(
          border: pw.Border.all(color: PdfColors.grey300),
          borderRadius: pw.BorderRadius.circular(4),
        ),
        child: pw.Column(children: [
          pw.Text(value.toString(),
              style: pw.TextStyle(
                  fontSize: 18,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.green)),
          pw.Text(label,
              style:
                  const pw.TextStyle(fontSize: 10, color: PdfColors.grey600)),
        ]),
      );
    }

    final pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (context) => [
          // Header
          pw.Container(
            padding: const pw.EdgeInsets.only(bottom: 20),
            decoration: const pw.BoxDecoration(
              border: pw.Border(
                  bottom: pw.BorderSide(width: 2, color: PdfColors.green)),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Tower Farm Status Report',
                    style: pw.TextStyle(
                        fontSize: 24,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.green)),
                pw.SizedBox(height: 10),
                pw.Text('Farm: $farmName'),
                pw.Text('Generated: ${formatDate(generatedAt)}'),
                pw.Text('Total Towers: $totalTowers'),
              ],
            ),
          ),

          pw.SizedBox(height: 20),

          // Quick Summary using array values
          pw.Container(
            padding: const pw.EdgeInsets.all(15),
            decoration: pw.BoxDecoration(
              color: PdfColors.green50,
              borderRadius: pw.BorderRadius.circular(8),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Quick Summary',
                    style: pw.TextStyle(
                        fontSize: 16, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 10),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                  children: [
                    summaryBox('Growing', growing),
                    summaryBox('Clean', clean),
                    summaryBox('Available', available),
                    summaryBox('Maintenance', needMaintenance),
                  ],
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  'Port Utilization: $utilizationPercent% ($usedPorts/$totalPorts ports)',
                  style: const pw.TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),

          pw.SizedBox(height: 20),

          // Tower Summary Details
          pw.Container(
            padding: const pw.EdgeInsets.all(15),
            decoration: pw.BoxDecoration(
              color: PdfColors.blue50,
              borderRadius: pw.BorderRadius.circular(8),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Tower Summary',
                    style: pw.TextStyle(
                        fontSize: 16, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 8),
                pw.Text('• Total Towers: $totalTowers',
                    style: const pw.TextStyle(fontSize: 12)),
                pw.Text('• Available Towers: $available',
                    style: const pw.TextStyle(fontSize: 12)),
                pw.Text('• Towers Needing Maintenance: $needMaintenance',
                    style: const pw.TextStyle(fontSize: 12)),
                pw.Text('• Total Port Capacity: $totalPorts ports',
                    style: const pw.TextStyle(fontSize: 12)),
                pw.Text('• Current Utilization: $utilizationPercent%',
                    style: const pw.TextStyle(fontSize: 12)),
              ],
            ),
          ),

          pw.SizedBox(height: 30),
          pw.Divider(),
          pw.Text('Generated by Tower Farm Management System',
              style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey600),
              textAlign: pw.TextAlign.center),
        ],
      ),
    );

    final Uint8List bytes = await pdf.save();

    // Web download approach
    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    final filename =
        'tower-report-${farmName.trim().toLowerCase().replaceAll(' ', '-')}-${DateTime.now().millisecondsSinceEpoch}.pdf';

    final anchor = html.document.createElement('a') as html.AnchorElement;
    anchor.href = url;
    anchor.download = filename;
    anchor.click();

    html.Url.revokeObjectUrl(url);

    print('PDF downloaded successfully: $filename');

    return true;
  } catch (e) {
    print('Error generating PDF: $e');
    return false;
  }
}
