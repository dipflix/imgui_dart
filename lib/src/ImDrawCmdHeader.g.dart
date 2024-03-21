import 'dart:ffi';

import 'ImVec4.g.dart';

base class ImDrawCmdHeader extends Struct {
  
  external ImVec4 clipRect;
  
  @IntPtr()
  external int textureId;
  
  @Uint32()
  external int vtxOffset;
  
}
