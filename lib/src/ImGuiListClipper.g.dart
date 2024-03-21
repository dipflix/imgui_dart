import 'dart:ffi';


base class ImGuiListClipper extends Struct {
  
  @IntPtr()
  external int ctx;
  
  @Int32()
  external int displayStart;
  
  @Int32()
  external int displayEnd;
  
  @Int32()
  external int itemsCount;
  
  @Float()
  external double itemsHeight;
  
  @Float()
  external double startPosY;
  
  external Pointer<Void> tempData;
  
}
