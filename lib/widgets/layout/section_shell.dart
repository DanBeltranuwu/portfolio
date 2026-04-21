import 'package:flutter/material.dart';

import '../../layout/breakpoints.dart';
import '../../theme/palette.dart';

class SectionShell extends StatelessWidget {
  const SectionShell({
    required this.child,
    this.top = 44,
    this.bottom = 44,
    this.removeBottomBorder = false,
    super.key,
  });

  final Widget child;
  final double top;
  final double bottom;
  final bool removeBottomBorder;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final mobile = isMobileWidth(width);
    final tablet = isTabletWidth(width);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: removeBottomBorder
            ? null
            : const Border(
                bottom: BorderSide(color: PortfolioPalette.border, width: 1),
              ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              mobile
                  ? 20
                  : tablet
                  ? 28
                  : 40,
              top,
              mobile
                  ? 20
                  : tablet
                  ? 28
                  : 40,
              bottom,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
