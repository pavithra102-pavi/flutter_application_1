import 'package:flutter/material.dart';

class WhiteCard extends StatelessWidget {
  final Widget child;

  const WhiteCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
