// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
import 'package:flutter/scheduler.dart';

class PortCounterWidget extends StatefulWidget {
  const PortCounterWidget({
    Key? key,
    this.width,
    this.height,
    required this.availablePorts,
    this.onCountChanged,
    this.onAvailableChanged,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int availablePorts;
  final Future<dynamic> Function(int onCountChanged)? onCountChanged;
  final Future<dynamic> Function(int onAvailableChange)? onAvailableChanged;

  @override
  State<PortCounterWidget> createState() => _PortCounterWidgetState();
}

class _PortCounterWidgetState extends State<PortCounterWidget> {
  int? _selectedCount;
  int? _maxAvailable;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeWidget();
  }

  void _initializeWidget() {
    try {
      _maxAvailable = widget.availablePorts;
      _selectedCount = _maxAvailable;

      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          setState(() {
            _isInitialized = true;
          });
          if (_selectedCount != null) {
            widget.onCountChanged?.call(_selectedCount!);
          }
        }
      });
    } catch (e) {
      print('Error initializing PortCounterWidget: $e');
    }
  }

  void _increment() {
    if (!_isInitialized || _selectedCount == null || _maxAvailable == null)
      return;

    try {
      setState(() {
        if (_selectedCount! < _maxAvailable!) {
          _selectedCount = _selectedCount! + 1;
          widget.onCountChanged?.call(_selectedCount!);
        }
      });
    } catch (e) {
      print('Error in increment: $e');
    }
  }

  void _decrement() {
    if (!_isInitialized || _selectedCount == null) return;

    try {
      setState(() {
        if (_selectedCount! > 0) {
          _selectedCount = _selectedCount! - 1;
          widget.onCountChanged?.call(_selectedCount!);
        }
      });
    } catch (e) {
      print('Error in decrement: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Show loading indicator if not initialized or values are null
    if (!_isInitialized || _selectedCount == null || _maxAvailable == null) {
      return Container(
        width: widget.width ?? 120,
        height: widget.height ?? 40,
        child: Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      width: widget.width ?? 120,
      height: widget.height ?? 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
            onPressed: _decrement,
            child: Text(
              '-',
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey[600],
              ),
            ),
            style: TextButton.styleFrom(
              minimumSize: Size(40, 40),
              padding: EdgeInsets.zero,
            ),
          ),
          Container(
            width: 40,
            child: Text(
              _selectedCount.toString(),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyLarge.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          TextButton(
            onPressed: _increment,
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
            style: TextButton.styleFrom(
              minimumSize: Size(40, 40),
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}
