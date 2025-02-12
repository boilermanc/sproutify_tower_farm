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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = SupaFlow.client;

Future signInWithMagicLink(String emailAddress) async {
  try {
    print('Attempting to send magic link to: $emailAddress');

    await supabase.auth.signInWithOtp(
        email: emailAddress,
        shouldCreateUser: true, // Changed to true since we want new users
        emailRedirectTo:
            'sproutifyfarm://sproutifyfarm.com/authenticationSuccess');

    print('Magic link request completed');
    return;
  } catch (e) {
    print('Error sending magic link: $e');
    throw e;
  }
}
