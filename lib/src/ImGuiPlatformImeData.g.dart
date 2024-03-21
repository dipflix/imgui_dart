import 'dart:ffi';

import 'ImVec2.g.dart';

base class ImGuiPlatformImeData extends Struct {
  
  @Uint8()
  external int wantVisible;
  
  external ImVec2 inputPos;
  
  @Float()
  external double inputLineHeight;
  
}
