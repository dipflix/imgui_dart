import 'dart:ffi';

class ImGuiKeyChord {
  static const int None = 0;
  static const int Ctrl = 1 << 12;
  static const int Shift = 1 << 13;
  static const int Alt = 1 << 14;
  static const int Super = 1 << 15;
  static const int Shortcut = 1 << 11;
  static const int Mask = 0xF800;
}
