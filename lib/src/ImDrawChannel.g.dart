import 'dart:ffi';

import 'ImVector.g.dart';

base class ImDrawChannel extends Struct {
  
  external ImVector _CmdBuffer;
  
  external ImVector _IdxBuffer;
  
}
