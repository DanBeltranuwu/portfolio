/// Horizontal breakpoints aligned with the original single-file layout.
const double kMobileBreakpoint = 650;
const double kTabletBreakpoint = 1100;

bool isMobileWidth(double width) => width < kMobileBreakpoint;

bool isTabletWidth(double width) =>
    width >= kMobileBreakpoint && width < kTabletBreakpoint;
