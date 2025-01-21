import 'package:flutter/material.dart';
import 'custom_curved_edge.dart';




class TCurvedWidget extends StatelessWidget {
  const TCurvedWidget({
    super.key, this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child:child,
    );
  }
}
