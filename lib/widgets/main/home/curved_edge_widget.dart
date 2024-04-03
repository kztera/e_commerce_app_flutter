import 'package:flutter/material.dart';
import 'package:e_commerce_app_flutter_app/widgets/main/home/curved_edge.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdge(),
      child: child,
    );
  }
}
