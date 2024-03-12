import 'package:flutter/material.dart';

class PropertyInfoRow extends StatelessWidget {
  const PropertyInfoRow(
      {super.key,
      required this.label,
      required this.value,
      required this.icon});
  final String label;
  final String value;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16),
        ),
        Text(
          value,
          style: const TextStyle(color: Color.fromARGB(255, 78, 78, 78)),
        ),
        Icon(
          icon,
          color: Color.fromARGB(255, 99, 99, 99),
        ),
      ],
    );
  }
}
