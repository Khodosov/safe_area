import 'package:flutter/material.dart';

class TipCard extends StatelessWidget {
  final String tip;
  final IconData icon;
  const TipCard({
    Key? key,
    required this.tip,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Icon(
            icon,
            size: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              tip,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
