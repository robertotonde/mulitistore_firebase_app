import 'package:flutter/material.dart';

class ReapetedTab extends StatelessWidget {
  final String label;
  const ReapetedTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
