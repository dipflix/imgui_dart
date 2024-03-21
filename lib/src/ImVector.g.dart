import 'dart:ffi';

base class ImVector extends Struct {
  
  @Uint32()
  external int size;
  
  @Uint32()
  external int capacity;
  
  external Pointer data;
  
}
