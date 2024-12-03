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
