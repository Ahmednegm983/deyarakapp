import 'package:flutter/material.dart';

class AmentiesRow extends StatelessWidget {
  const AmentiesRow({super.key, required this.label, required this.icon});
  final String label;

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
        Icon(
          icon,
          color: const Color.fromARGB(255, 99, 99, 99),
        ),
      ],
    );
  }
}
