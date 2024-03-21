import 'dart:ffi';

import 'ImVec2.g.dart';

base class ImGuiPlatformMonitor extends Struct {
  
  external ImVec2 mainPos;
  
  external ImVec2 mainSize;
  
  external ImVec2 workPos;
  
  external ImVec2 workSize;
  
  @Float()
  external double dpiScale;
  
  external Pointer<Void> platformHandle;
  
}
