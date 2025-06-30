import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<int>? generateQuantityOptions(int totalQuantity) {
  // This function generates a list of unique quantity options based on a given total quantity.
  // It creates options from 1 to the total quantity and returns them as a list of integers.
  if (totalQuantity <= 0) {
    return null;
  }
  List<int> options = [];
  for (int i = 1; i <= totalQuantity; i++) {
    options.add(i);
  }
  return options;
}

List<String> generateQuantityDropdownOptions(int availableQuantity) {
  // Check if the available quantity is less than or equal to 0.
  // If it is, return an empty list to indicate no options are available.
  if (availableQuantity <= 0) {
    return []; // Return an empty list if no quantities are available.
  }

  // Generate a list of quantity options from 1 to the availableQuantity.
  // List.generate creates a list of numbers and converts each to a string.
  return List.generate(availableQuantity, (i) => (i + 1).toString());
}

List<int> generateIntegerDropdown(int availableQuantity) {
  // Check if the available quantity is less than or equal to 0
  if (availableQuantity <= 0) {
    return []; // Return an empty list if no quantities are available
  }

  // Generate a list of quantity options from 1 to the availableQuantity
  return List.generate(availableQuantity, (i) => i + 1);
}

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

List<int>? createRowIndices(int? rowCount) {
  if (rowCount == null || rowCount <= 0) {
    return [];
  }
  return List.generate(rowCount, (index) => index);
}

List<int>? createDefaultTowerCounts(int? rowCount) {
  if (rowCount == null || rowCount <= 0) {
    return [];
  }
  return List.filled(rowCount, 1);
}

String? formatRowLabel(int? rowIndex) {
  if (rowIndex == null) {
    return "Row 1";
  }
  return "Row ${rowIndex + 1}";
}

List<int>? collectTowerCounts(
  List<int>? currentCounts,
  int? rowCount,
) {
  if (currentCounts == null || rowCount == null) {
    return [];
  }

  // Return the current counts - they should already be updated by components
  return currentCounts;
}

List<String>? generateAllTowerPositions(List<int>? towerCounts) {
  if (towerCounts == null || towerCounts.isEmpty) {
    return [];
  }

  List<String> positions = [];

  for (int rowIndex = 0; rowIndex < towerCounts.length; rowIndex++) {
    int rowNumber = rowIndex + 1; // Convert 0->1, 1->2, etc.
    int towersInRow = towerCounts[rowIndex];

    for (int towerIndex = 1; towerIndex <= towersInRow; towerIndex++) {
      String position = "${rowNumber}.${towerIndex.toString().padLeft(2, '0')}";
      positions.add(position);
    }
  }

  return positions;
}

List<int>? updateTowerCountAtIndex(
  List<int>? currentCounts,
  int? rowIndex,
  int? newValue,
) {
  if (rowIndex == null || newValue == null) {
    return currentCounts ?? [];
  }

  // Initialize list if empty
  List<int> counts = currentCounts ?? [];

  // Expand list if needed to fit the index
  while (counts.length <= rowIndex) {
    counts.add(1); // default value
  }

  // Update the specific index
  counts[rowIndex] = newValue;

  return counts;
}

List<int>? setAllTowerPorts(
  List<String>? allTowerPositions,
  int? portCount,
) {
  if (allTowerPositions == null || portCount == null) {
    return [];
  }

  return List.filled(allTowerPositions.length, portCount);
}

int? getTotalTowers(List<String>? allTowerPositions) {
  if (allTowerPositions == null) {
    return 0;
  }
  return allTowerPositions.length;
}

int? getTotalPorts(List<int>? towerPortCounts) {
  if (towerPortCounts == null || towerPortCounts.isEmpty) {
    return 0;
  }
  return towerPortCounts.reduce((a, b) => a + b);
}

int? getTowerPortCount(
  List<int>? towerPortCounts,
  String? towerPosition,
  List<String>? allTowerPositions,
) {
  if (towerPortCounts == null ||
      towerPosition == null ||
      allTowerPositions == null) {
    return 0; // default
  }

  int index = allTowerPositions.indexOf(towerPosition);
  if (index >= 0 && index < towerPortCounts.length) {
    return towerPortCounts[index];
  }

  return 0; // default fallback
}

List<int>? updateTowerPortCount(
  List<int>? currentPortCounts,
  String? towerId,
  int? newPortCount,
  List<String>? allTowerPositions,
) {
  if (currentPortCounts == null ||
      towerId == null ||
      newPortCount == null ||
      allTowerPositions == null) {
    return [];
  }

  if (currentPortCounts.isEmpty || allTowerPositions.isEmpty) {
    return currentPortCounts;
  }

  int towerIndex = -1;
  for (int i = 0; i < allTowerPositions.length; i++) {
    if (allTowerPositions[i] == towerId) {
      towerIndex = i;
      break;
    }
  }

  if (towerIndex >= 0 && towerIndex < currentPortCounts.length) {
    List<int> result = [];
    for (int i = 0; i < currentPortCounts.length; i++) {
      if (i == towerIndex) {
        result.add(newPortCount);
      } else {
        result.add(currentPortCounts[i]);
      }
    }
    return result;
  }

  return currentPortCounts;
}

int? getRowNumber(String? towerPosition) {
  if (towerPosition == null) return 1;

  List<String> parts = towerPosition.split('.');
  if (parts.length >= 1) {
    return int.tryParse(parts[0]) ?? 1;
  }
  return 1;
}

int? getTowerNumber(String? towerPosition) {
  if (towerPosition == null) return 1;

  List<String> parts = towerPosition.split('.');
  if (parts.length >= 2) {
    return int.tryParse(parts[1]) ?? 1;
  }
  return 1;
}
