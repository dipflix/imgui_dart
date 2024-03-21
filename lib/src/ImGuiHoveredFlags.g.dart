class ImGuiHoveredFlags {
  static const int None = 0;
  static const int ChildWindows = 1;
  static const int RootWindow = 2;
  static const int AnyWindow = 4;
  static const int NoPopupHierarchy = 8;
  static const int DockHierarchy = 16;
  static const int AllowWhenBlockedByPopup = 32;
  static const int AllowWhenBlockedByActiveItem = 128;
  static const int AllowWhenOverlappedByItem = 256;
  static const int AllowWhenOverlappedByWindow = 512;
  static const int AllowWhenDisabled = 1024;
  static const int NoNavOverride = 2048;
  static const int AllowWhenOverlapped = 768;
  static const int RectOnly = 928;
  static const int RootAndChildWindows = 3;
  static const int ForTooltip = 4096;
  static const int Stationary = 8192;
  static const int DelayNone = 16384;
  static const int DelayShort = 32768;
  static const int DelayNormal = 65536;
  static const int NoSharedDelay = 131072;
}
