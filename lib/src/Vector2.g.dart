import 'dart:ffi';

base class ImVector2 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}
