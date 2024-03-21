import 'dart:ffi';


base class ImVec4 extends Struct {
  
  @Float()
  external double x;
  
  @Float()
  external double y;
  
  @Float()
  external double z;
  
  @Float()
  external double w;
  
}
