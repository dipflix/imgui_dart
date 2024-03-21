import 'dart:ffi';

import 'ImVector.g.dart';
import 'ImVec2.g.dart';
import 'ImGuiViewport.g.dart';

base class ImDrawData extends Struct {
  
  @Uint8()
  external int valid;
  
  @Int32()
  external int cmdListsCount;
  
  @Int32()
  external int totalIdxCount;
  
  @Int32()
  external int totalVtxCount;
  
  external ImVector cmdLists;
  
  external ImVec2 displayPos;
  
  external ImVec2 displaySize;
  
  external ImVec2 framebufferScale;
  
  external Pointer<ImGuiViewport> ownerViewport;
  
}
