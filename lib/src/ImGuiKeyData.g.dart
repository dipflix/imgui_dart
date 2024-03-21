import 'dart:ffi';


base class ImGuiKeyData extends Struct {
  
  @Uint8()
  external int down;
  
  @Float()
  external double downDuration;
  
  @Float()
  external double downDurationPrev;
  
  @Float()
  external double analogValue;
  
}
