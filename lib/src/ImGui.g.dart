import 'dart:io' show Platform;
import 'dart:ffi';
import 'ImGuiPayload.g.dart';
import 'ImGuiDragDropFlags.g.dart';
import 'ImGuiDir.g.dart';
import 'ImGuiWindowFlags.g.dart';
import 'ImVec2.g.dart';
import 'ImGuiChildFlags.g.dart';
import 'ImGuiComboFlags.g.dart';
import 'ImGuiPopupFlags.g.dart';
import 'ImGuiTabBarFlags.g.dart';
import 'ImGuiTabItemFlags.g.dart';
import 'ImGuiTableFlags.g.dart';
import 'ImGuiTreeNodeFlags.g.dart';
import 'ImVec4.g.dart';
import 'ImGuiColorEditFlags.g.dart';
import 'Vector3.g.dart';
import 'ImVector4.g.dart';
import 'ImFontAtlas.g.dart';
import 'ImGuiCol.g.dart';
import 'ImGuiDockNodeFlags.g.dart';
import 'ImGuiWindowClass.g.dart';
import 'ImGuiViewport.g.dart';
import 'ImGuiSliderFlags.g.dart';
import 'Vector2.g.dart';
import 'ImGuiDataType.g.dart';
import 'ImDrawList.g.dart';
import 'ImDrawData.g.dart';
import 'ImFont.g.dart';
import 'ImGuiIO.g.dart';
import 'ImGuiKey.g.dart';
import 'ImGuiMouseButton.g.dart';
import 'ImGuiMouseCursor.g.dart';
import 'ImGuiPlatformIO.g.dart';
import 'ImGuiStorage.g.dart';
import 'ImGuiStyle.g.dart';
import 'ImGuiInputTextFlags.g.dart';
import 'ImGuiButtonFlags.g.dart';
import 'ImGuiHoveredFlags.g.dart';
import 'ImGuiKeyChord.g.dart';
import 'ImGuiFocusedFlags.g.dart';
import 'ImGuiStyleVar.g.dart';
import 'ImGuiSelectableFlags.g.dart';
import 'ImGuiCond.g.dart';
import 'ImGuiTableColumnFlags.g.dart';
import 'ImGuiTableSortSpecs.g.dart';
import 'ImGuiTableRowFlags.g.dart';
import 'ImGuiTableBgTarget.g.dart';
import 'ImColor.g.dart';
import 'ImDrawCmd.g.dart';
import 'ImDrawFlags.g.dart';
import 'ImDrawListSplitter.g.dart';
import 'ImFontConfig.g.dart';
import 'ImFontGlyph.g.dart';
import 'ImFontAtlasCustomRect.g.dart';
import 'ImFontGlyphRangesBuilder.g.dart';
import 'ImVector.g.dart';
import 'ImGuiMouseSource.g.dart';
import 'ImGuiListClipper.g.dart';
import 'ImGuiOnceUponAFrame.g.dart';
import 'ImGuiPlatformImeData.g.dart';
import 'ImGuiPlatformMonitor.g.dart';
import 'ImGuiStoragePair.g.dart';
import 'ImGuiTableColumnSortSpecs.g.dart';
import 'ImGuiTextBuffer.g.dart';
import 'ImGuiTextFilter.g.dart';
import 'ImGuiTextRange.g.dart';

DynamicLibrary initializeImGui() {
  var dll = '';
  const dir = "./dependencies";

  if (Platform.isWindows) {
    dll = 'cimgui64.dll';
  } else if (Platform.isMacOS) {
    dll = 'cimgui64.dylib';
  } else if (Platform.isLinux) {
    dll = 'cimgui64.so';
  } else {
    throw Exception('Unsupported platform');
  }

  return DynamicLibrary.open("$dir/$dll");
}

final _cimgui = initializeImGui();

///```c
/// ImGuiPayload* igAcceptDragDropPayload(
///  byte* type ,
///  ImGuiDragDropFlags flags
/// );
///```
Pointer<ImGuiPayload> igAcceptDragDropPayload(Pointer<Uint8> type, int flags) =>
    _igAcceptDragDropPayload(type, flags);

late final _igAcceptDragDropPayload = _cimgui.lookupFunction<
    Pointer<ImGuiPayload> Function(Pointer<Uint8> type, Uint32 flags),
    Pointer<ImGuiPayload> Function(
        Pointer<Uint8> type, int flags)>('igAcceptDragDropPayload');

///```c
/// void igAlignTextToFramePadding(
/// );
///```
void igAlignTextToFramePadding() => _igAlignTextToFramePadding();

late final _igAlignTextToFramePadding =
    _cimgui.lookupFunction<Void Function(), void Function()>(
        'igAlignTextToFramePadding');

///```c
/// byte igArrowButton(
///  byte* str_id ,
///  ImGuiDir dir
/// );
///```
int igArrowButton(Pointer<Uint8> str_id, int dir) =>
    _igArrowButton(str_id, dir);

late final _igArrowButton = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 dir),
    int Function(Pointer<Uint8> str_id, int dir)>('igArrowButton');

///```c
/// byte igBegin(
///  byte* name ,
///  byte* p_open ,
///  ImGuiWindowFlags flags
/// );
///```
int igBegin(Pointer<Uint8> name, Pointer<Uint8> p_open, int flags) =>
    _igBegin(name, p_open, flags);

late final _igBegin = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> name, Pointer<Uint8> p_open, Uint32 flags),
    int Function(
        Pointer<Uint8> name, Pointer<Uint8> p_open, int flags)>('igBegin');

///```c
/// byte igBeginChild_Str(
///  byte* str_id ,
///  ImVec2 size ,
///  ImGuiChildFlags child_flags ,
///  ImGuiWindowFlags window_flags
/// );
///```
int igBeginChild_Str(Pointer<Uint8> str_id, ImVec2 size, int child_flags,
        int window_flags) =>
    _igBeginChild_Str(str_id, size, child_flags, window_flags);

late final _igBeginChild_Str = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, ImVec2 size, Uint32 child_flags,
        Uint32 window_flags),
    int Function(Pointer<Uint8> str_id, ImVec2 size, int child_flags,
        int window_flags)>('igBeginChild_Str');

///```c
/// byte igBeginChild_ID(
///  uint id ,
///  ImVec2 size ,
///  ImGuiChildFlags child_flags ,
///  ImGuiWindowFlags window_flags
/// );
///```
int igBeginChild_ID(int id, ImVec2 size, int child_flags, int window_flags) =>
    _igBeginChild_ID(id, size, child_flags, window_flags);

late final _igBeginChild_ID = _cimgui.lookupFunction<
    Uint8 Function(
        Uint32 id, ImVec2 size, Uint32 child_flags, Uint32 window_flags),
    int Function(int id, ImVec2 size, int child_flags,
        int window_flags)>('igBeginChild_ID');

///```c
/// byte igBeginCombo(
///  byte* label ,
///  byte* preview_value ,
///  ImGuiComboFlags flags
/// );
///```
int igBeginCombo(
        Pointer<Uint8> label, Pointer<Uint8> preview_value, int flags) =>
    _igBeginCombo(label, preview_value, flags);

late final _igBeginCombo = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label, Pointer<Uint8> preview_value, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Uint8> preview_value,
        int flags)>('igBeginCombo');

///```c
/// void igBeginDisabled(
///  byte disabled
/// );
///```
void igBeginDisabled(int disabled) => _igBeginDisabled(disabled);

late final _igBeginDisabled = _cimgui.lookupFunction<
    Void Function(Uint8 disabled),
    void Function(int disabled)>('igBeginDisabled');

///```c
/// byte igBeginDragDropSource(
///  ImGuiDragDropFlags flags
/// );
///```
int igBeginDragDropSource(int flags) => _igBeginDragDropSource(flags);

late final _igBeginDragDropSource = _cimgui.lookupFunction<
    Uint8 Function(Uint32 flags),
    int Function(int flags)>('igBeginDragDropSource');

///```c
/// byte igBeginDragDropTarget(
/// );
///```
int igBeginDragDropTarget() => _igBeginDragDropTarget();

late final _igBeginDragDropTarget = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igBeginDragDropTarget');

///```c
/// void igBeginGroup(
/// );
///```
void igBeginGroup() => _igBeginGroup();

late final _igBeginGroup =
    _cimgui.lookupFunction<Void Function(), void Function()>('igBeginGroup');

///```c
/// byte igBeginItemTooltip(
/// );
///```
int igBeginItemTooltip() => _igBeginItemTooltip();

late final _igBeginItemTooltip = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igBeginItemTooltip');

///```c
/// byte igBeginListBox(
///  byte* label ,
///  ImVec2 size
/// );
///```
int igBeginListBox(Pointer<Uint8> label, ImVec2 size) =>
    _igBeginListBox(label, size);

late final _igBeginListBox = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, ImVec2 size),
    int Function(Pointer<Uint8> label, ImVec2 size)>('igBeginListBox');

///```c
/// byte igBeginMainMenuBar(
/// );
///```
int igBeginMainMenuBar() => _igBeginMainMenuBar();

late final _igBeginMainMenuBar = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igBeginMainMenuBar');

///```c
/// byte igBeginMenu(
///  byte* label ,
///  byte enabled
/// );
///```
int igBeginMenu(Pointer<Uint8> label, int enabled) =>
    _igBeginMenu(label, enabled);

late final _igBeginMenu = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Uint8 enabled),
    int Function(Pointer<Uint8> label, int enabled)>('igBeginMenu');

///```c
/// byte igBeginMenuBar(
/// );
///```
int igBeginMenuBar() => _igBeginMenuBar();

late final _igBeginMenuBar =
    _cimgui.lookupFunction<Uint8 Function(), int Function()>('igBeginMenuBar');

///```c
/// byte igBeginPopup(
///  byte* str_id ,
///  ImGuiWindowFlags flags
/// );
///```
int igBeginPopup(Pointer<Uint8> str_id, int flags) =>
    _igBeginPopup(str_id, flags);

late final _igBeginPopup = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 flags),
    int Function(Pointer<Uint8> str_id, int flags)>('igBeginPopup');

///```c
/// byte igBeginPopupContextItem(
///  byte* str_id ,
///  ImGuiPopupFlags popup_flags
/// );
///```
int igBeginPopupContextItem(Pointer<Uint8> str_id, int popup_flags) =>
    _igBeginPopupContextItem(str_id, popup_flags);

late final _igBeginPopupContextItem = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 popup_flags),
    int Function(
        Pointer<Uint8> str_id, int popup_flags)>('igBeginPopupContextItem');

///```c
/// byte igBeginPopupContextVoid(
///  byte* str_id ,
///  ImGuiPopupFlags popup_flags
/// );
///```
int igBeginPopupContextVoid(Pointer<Uint8> str_id, int popup_flags) =>
    _igBeginPopupContextVoid(str_id, popup_flags);

late final _igBeginPopupContextVoid = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 popup_flags),
    int Function(
        Pointer<Uint8> str_id, int popup_flags)>('igBeginPopupContextVoid');

///```c
/// byte igBeginPopupContextWindow(
///  byte* str_id ,
///  ImGuiPopupFlags popup_flags
/// );
///```
int igBeginPopupContextWindow(Pointer<Uint8> str_id, int popup_flags) =>
    _igBeginPopupContextWindow(str_id, popup_flags);

late final _igBeginPopupContextWindow = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 popup_flags),
    int Function(
        Pointer<Uint8> str_id, int popup_flags)>('igBeginPopupContextWindow');

///```c
/// byte igBeginPopupModal(
///  byte* name ,
///  byte* p_open ,
///  ImGuiWindowFlags flags
/// );
///```
int igBeginPopupModal(Pointer<Uint8> name, Pointer<Uint8> p_open, int flags) =>
    _igBeginPopupModal(name, p_open, flags);

late final _igBeginPopupModal = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> name, Pointer<Uint8> p_open, Uint32 flags),
    int Function(Pointer<Uint8> name, Pointer<Uint8> p_open,
        int flags)>('igBeginPopupModal');

///```c
/// byte igBeginTabBar(
///  byte* str_id ,
///  ImGuiTabBarFlags flags
/// );
///```
int igBeginTabBar(Pointer<Uint8> str_id, int flags) =>
    _igBeginTabBar(str_id, flags);

late final _igBeginTabBar = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 flags),
    int Function(Pointer<Uint8> str_id, int flags)>('igBeginTabBar');

///```c
/// byte igBeginTabItem(
///  byte* label ,
///  byte* p_open ,
///  ImGuiTabItemFlags flags
/// );
///```
int igBeginTabItem(Pointer<Uint8> label, Pointer<Uint8> p_open, int flags) =>
    _igBeginTabItem(label, p_open, flags);

late final _igBeginTabItem = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Uint8> p_open, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Uint8> p_open,
        int flags)>('igBeginTabItem');

///```c
/// byte igBeginTable(
///  byte* str_id ,
///  int column ,
///  ImGuiTableFlags flags ,
///  ImVec2 outer_size ,
///  float inner_width
/// );
///```
int igBeginTable(Pointer<Uint8> str_id, int column, int flags,
        ImVec2 outer_size, double inner_width) =>
    _igBeginTable(str_id, column, flags, outer_size, inner_width);

late final _igBeginTable = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Int32 column, Uint32 flags,
        ImVec2 outer_size, Float inner_width),
    int Function(Pointer<Uint8> str_id, int column, int flags,
        ImVec2 outer_size, double inner_width)>('igBeginTable');

///```c
/// byte igBeginTooltip(
/// );
///```
int igBeginTooltip() => _igBeginTooltip();

late final _igBeginTooltip =
    _cimgui.lookupFunction<Uint8 Function(), int Function()>('igBeginTooltip');

///```c
/// void igBullet(
/// );
///```
void igBullet() => _igBullet();

late final _igBullet =
    _cimgui.lookupFunction<Void Function(), void Function()>('igBullet');

///```c
/// void igBulletText(
///  byte* fmt ,
///  ... ...
/// );
///```
void igBulletText(Pointer<Uint8> fmt) => _igBulletText(fmt);

late final _igBulletText = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> fmt)>('igBulletText');

///```c
/// byte igButton(
///  byte* label ,
///  ImVec2 size
/// );
///```
int igButton(Pointer<Uint8> label, ImVec2 size) => _igButton(label, size);

late final _igButton = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, ImVec2 size),
    int Function(Pointer<Uint8> label, ImVec2 size)>('igButton');

///```c
/// float igCalcItemWidth(
/// );
///```
double igCalcItemWidth() => _igCalcItemWidth();

late final _igCalcItemWidth = _cimgui
    .lookupFunction<Float Function(), double Function()>('igCalcItemWidth');

///```c
/// void igCalcTextSize(
///  ImVec2* pOut ,
///  byte* text ,
///  byte* text_end ,
///  byte hide_text_after_double_hash ,
///  float wrap_width
/// );
///```
void igCalcTextSize(
        Pointer<ImVec2> pOut,
        Pointer<Uint8> text,
        Pointer<Uint8> text_end,
        int hide_text_after_double_hash,
        double wrap_width) =>
    _igCalcTextSize(
        pOut, text, text_end, hide_text_after_double_hash, wrap_width);

late final _igCalcTextSize = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImVec2> pOut,
        Pointer<Uint8> text,
        Pointer<Uint8> text_end,
        Uint8 hide_text_after_double_hash,
        Float wrap_width),
    void Function(
        Pointer<ImVec2> pOut,
        Pointer<Uint8> text,
        Pointer<Uint8> text_end,
        int hide_text_after_double_hash,
        double wrap_width)>('igCalcTextSize');

///```c
/// byte igCheckbox(
///  byte* label ,
///  byte* v
/// );
///```
int igCheckbox(Pointer<Uint8> label, Pointer<Uint8> v) => _igCheckbox(label, v);

late final _igCheckbox = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Uint8> v),
    int Function(Pointer<Uint8> label, Pointer<Uint8> v)>('igCheckbox');

///```c
/// byte igCheckboxFlags_IntPtr(
///  byte* label ,
///  int* flags ,
///  int flags_value
/// );
///```
int igCheckboxFlags_IntPtr(
        Pointer<Uint8> label, Pointer<Int32> flags, int flags_value) =>
    _igCheckboxFlags_IntPtr(label, flags, flags_value);

late final _igCheckboxFlags_IntPtr = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label, Pointer<Int32> flags, Int32 flags_value),
    int Function(Pointer<Uint8> label, Pointer<Int32> flags,
        int flags_value)>('igCheckboxFlags_IntPtr');

///```c
/// byte igCheckboxFlags_UintPtr(
///  byte* label ,
///  uint* flags ,
///  uint flags_value
/// );
///```
int igCheckboxFlags_UintPtr(
        Pointer<Uint8> label, Pointer<Uint32> flags, int flags_value) =>
    _igCheckboxFlags_UintPtr(label, flags, flags_value);

late final _igCheckboxFlags_UintPtr = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label, Pointer<Uint32> flags, Uint32 flags_value),
    int Function(Pointer<Uint8> label, Pointer<Uint32> flags,
        int flags_value)>('igCheckboxFlags_UintPtr');

///```c
/// void igCloseCurrentPopup(
/// );
///```
void igCloseCurrentPopup() => _igCloseCurrentPopup();

late final _igCloseCurrentPopup = _cimgui
    .lookupFunction<Void Function(), void Function()>('igCloseCurrentPopup');

///```c
/// byte igCollapsingHeader_TreeNodeFlags(
///  byte* label ,
///  ImGuiTreeNodeFlags flags
/// );
///```
int igCollapsingHeader_TreeNodeFlags(Pointer<Uint8> label, int flags) =>
    _igCollapsingHeader_TreeNodeFlags(label, flags);

late final _igCollapsingHeader_TreeNodeFlags = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Uint32 flags),
    int Function(
        Pointer<Uint8> label, int flags)>('igCollapsingHeader_TreeNodeFlags');

///```c
/// byte igCollapsingHeader_BoolPtr(
///  byte* label ,
///  byte* p_visible ,
///  ImGuiTreeNodeFlags flags
/// );
///```
int igCollapsingHeader_BoolPtr(
        Pointer<Uint8> label, Pointer<Uint8> p_visible, int flags) =>
    _igCollapsingHeader_BoolPtr(label, p_visible, flags);

late final _igCollapsingHeader_BoolPtr = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label, Pointer<Uint8> p_visible, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Uint8> p_visible,
        int flags)>('igCollapsingHeader_BoolPtr');

///```c
/// byte igColorButton(
///  byte* desc_id ,
///  ImVec4 col ,
///  ImGuiColorEditFlags flags ,
///  ImVec2 size
/// );
///```
int igColorButton(Pointer<Uint8> desc_id, ImVec4 col, int flags, ImVec2 size) =>
    _igColorButton(desc_id, col, flags, size);

late final _igColorButton = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> desc_id, ImVec4 col, Uint32 flags, ImVec2 size),
    int Function(Pointer<Uint8> desc_id, ImVec4 col, int flags,
        ImVec2 size)>('igColorButton');

///```c
/// uint igColorConvertFloat4ToU32(
///  ImVec4 _in
/// );
///```
int igColorConvertFloat4ToU32(ImVec4 _in) => _igColorConvertFloat4ToU32(_in);

late final _igColorConvertFloat4ToU32 = _cimgui.lookupFunction<
    Uint32 Function(ImVec4 _in),
    int Function(ImVec4 _in)>('igColorConvertFloat4ToU32');

///```c
/// void igColorConvertHSVtoRGB(
///  float h ,
///  float s ,
///  float v ,
///  float* out_r ,
///  float* out_g ,
///  float* out_b
/// );
///```
void igColorConvertHSVtoRGB(double h, double s, double v, Pointer<Float> out_r,
        Pointer<Float> out_g, Pointer<Float> out_b) =>
    _igColorConvertHSVtoRGB(h, s, v, out_r, out_g, out_b);

late final _igColorConvertHSVtoRGB = _cimgui.lookupFunction<
    Void Function(Float h, Float s, Float v, Pointer<Float> out_r,
        Pointer<Float> out_g, Pointer<Float> out_b),
    void Function(double h, double s, double v, Pointer<Float> out_r,
        Pointer<Float> out_g, Pointer<Float> out_b)>('igColorConvertHSVtoRGB');

///```c
/// void igColorConvertRGBtoHSV(
///  float r ,
///  float g ,
///  float b ,
///  float* out_h ,
///  float* out_s ,
///  float* out_v
/// );
///```
void igColorConvertRGBtoHSV(double r, double g, double b, Pointer<Float> out_h,
        Pointer<Float> out_s, Pointer<Float> out_v) =>
    _igColorConvertRGBtoHSV(r, g, b, out_h, out_s, out_v);

late final _igColorConvertRGBtoHSV = _cimgui.lookupFunction<
    Void Function(Float r, Float g, Float b, Pointer<Float> out_h,
        Pointer<Float> out_s, Pointer<Float> out_v),
    void Function(double r, double g, double b, Pointer<Float> out_h,
        Pointer<Float> out_s, Pointer<Float> out_v)>('igColorConvertRGBtoHSV');

///```c
/// void igColorConvertU32ToFloat4(
///  ImVec4* pOut ,
///  uint _in
/// );
///```
void igColorConvertU32ToFloat4(Pointer<ImVec4> pOut, int _in) =>
    _igColorConvertU32ToFloat4(pOut, _in);

late final _igColorConvertU32ToFloat4 = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec4> pOut, Uint32 _in),
    void Function(Pointer<ImVec4> pOut, int _in)>('igColorConvertU32ToFloat4');

///```c
/// byte igColorEdit3(
///  byte* label ,
///  Vector3* col ,
///  ImGuiColorEditFlags flags
/// );
///```
int igColorEdit3(Pointer<Uint8> label, Pointer<ImVector3> col, int flags) =>
    _igColorEdit3(label, col, flags);

late final _igColorEdit3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector3> col, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<ImVector3> col,
        int flags)>('igColorEdit3');

///```c
/// byte igColorEdit4(
///  byte* label ,
///  Vector4* col ,
///  ImGuiColorEditFlags flags
/// );
///```
int igColorEdit4(Pointer<Uint8> label, Pointer<Vector4> col, int flags) =>
    _igColorEdit4(label, col, flags);

late final _igColorEdit4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Vector4> col, Uint32 flags),
    int Function(
        Pointer<Uint8> label, Pointer<Vector4> col, int flags)>('igColorEdit4');

///```c
/// byte igColorPicker3(
///  byte* label ,
///  Vector3* col ,
///  ImGuiColorEditFlags flags
/// );
///```
int igColorPicker3(Pointer<Uint8> label, Pointer<ImVector3> col, int flags) =>
    _igColorPicker3(label, col, flags);

late final _igColorPicker3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector3> col, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<ImVector3> col,
        int flags)>('igColorPicker3');

///```c
/// byte igColorPicker4(
///  byte* label ,
///  Vector4* col ,
///  ImGuiColorEditFlags flags ,
///  float* ref_col
/// );
///```
int igColorPicker4(Pointer<Uint8> label, Pointer<Vector4> col, int flags,
        Pointer<Float> ref_col) =>
    _igColorPicker4(label, col, flags, ref_col);

late final _igColorPicker4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Vector4> col, Uint32 flags,
        Pointer<Float> ref_col),
    int Function(Pointer<Uint8> label, Pointer<Vector4> col, int flags,
        Pointer<Float> ref_col)>('igColorPicker4');

///```c
/// void igColumns(
///  int count ,
///  byte* id ,
///  byte border
/// );
///```
void igColumns(int count, Pointer<Uint8> id, int border) =>
    _igColumns(count, id, border);

late final _igColumns = _cimgui.lookupFunction<
    Void Function(Int32 count, Pointer<Uint8> id, Uint8 border),
    void Function(int count, Pointer<Uint8> id, int border)>('igColumns');

///```c
/// byte igCombo_Str_arr(
///  byte* label ,
///  int* current_item ,
///  byte** items ,
///  int items_count ,
///  int popup_max_height_in_items
/// );
///```
int igCombo_Str_arr(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Pointer<Uint8>> items,
        int items_count,
        int popup_max_height_in_items) =>
    _igCombo_Str_arr(
        label, current_item, items, items_count, popup_max_height_in_items);

late final _igCombo_Str_arr = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Pointer<Uint8>> items,
        Int32 items_count,
        Int32 popup_max_height_in_items),
    int Function(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Pointer<Uint8>> items,
        int items_count,
        int popup_max_height_in_items)>('igCombo_Str_arr');

///```c
/// byte igCombo_Str(
///  byte* label ,
///  int* current_item ,
///  byte* items_separated_by_zeros ,
///  int popup_max_height_in_items
/// );
///```
int igCombo_Str(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Uint8> items_separated_by_zeros,
        int popup_max_height_in_items) =>
    _igCombo_Str(label, current_item, items_separated_by_zeros,
        popup_max_height_in_items);

late final _igCombo_Str = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Uint8> items_separated_by_zeros,
        Int32 popup_max_height_in_items),
    int Function(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Uint8> items_separated_by_zeros,
        int popup_max_height_in_items)>('igCombo_Str');

///```c
/// IntPtr igCreateContext(
///  ImFontAtlas* shared_font_atlas
/// );
///```
int igCreateContext(Pointer<ImFontAtlas> shared_font_atlas) =>
    _igCreateContext(shared_font_atlas);

late final _igCreateContext = _cimgui.lookupFunction<
    IntPtr Function(Pointer<ImFontAtlas> shared_font_atlas),
    int Function(Pointer<ImFontAtlas> shared_font_atlas)>('igCreateContext');

///```c
/// byte igDebugCheckVersionAndDataLayout(
///  byte* version_str ,
///  uint sz_io ,
///  uint sz_style ,
///  uint sz_vec2 ,
///  uint sz_vec4 ,
///  uint sz_drawvert ,
///  uint sz_drawidx
/// );
///```
int igDebugCheckVersionAndDataLayout(
        Pointer<Uint8> version_str,
        int sz_io,
        int sz_style,
        int sz_vec2,
        int sz_vec4,
        int sz_drawvert,
        int sz_drawidx) =>
    _igDebugCheckVersionAndDataLayout(version_str, sz_io, sz_style, sz_vec2,
        sz_vec4, sz_drawvert, sz_drawidx);

late final _igDebugCheckVersionAndDataLayout = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> version_str, Uint32 sz_io, Uint32 sz_style,
        Uint32 sz_vec2, Uint32 sz_vec4, Uint32 sz_drawvert, Uint32 sz_drawidx),
    int Function(
        Pointer<Uint8> version_str,
        int sz_io,
        int sz_style,
        int sz_vec2,
        int sz_vec4,
        int sz_drawvert,
        int sz_drawidx)>('igDebugCheckVersionAndDataLayout');

///```c
/// void igDebugFlashStyleColor(
///  ImGuiCol idx
/// );
///```
void igDebugFlashStyleColor(int idx) => _igDebugFlashStyleColor(idx);

late final _igDebugFlashStyleColor =
    _cimgui.lookupFunction<Void Function(Uint32 idx), void Function(int idx)>(
        'igDebugFlashStyleColor');

///```c
/// void igDebugTextEncoding(
///  byte* text
/// );
///```
void igDebugTextEncoding(Pointer<Uint8> text) => _igDebugTextEncoding(text);

late final _igDebugTextEncoding = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> text),
    void Function(Pointer<Uint8> text)>('igDebugTextEncoding');

///```c
/// void igDestroyContext(
///  IntPtr ctx
/// );
///```
void igDestroyContext(int ctx) => _igDestroyContext(ctx);

late final _igDestroyContext =
    _cimgui.lookupFunction<Void Function(IntPtr ctx), void Function(int ctx)>(
        'igDestroyContext');

///```c
/// void igDestroyPlatformWindows(
/// );
///```
void igDestroyPlatformWindows() => _igDestroyPlatformWindows();

late final _igDestroyPlatformWindows =
    _cimgui.lookupFunction<Void Function(), void Function()>(
        'igDestroyPlatformWindows');

///```c
/// uint igDockSpace(
///  uint id ,
///  ImVec2 size ,
///  ImGuiDockNodeFlags flags ,
///  ImGuiWindowClass* window_class
/// );
///```
int igDockSpace(int id, ImVec2 size, int flags,
        Pointer<ImGuiWindowClass> window_class) =>
    _igDockSpace(id, size, flags, window_class);

late final _igDockSpace = _cimgui.lookupFunction<
    Uint32 Function(Uint32 id, ImVec2 size, Uint32 flags,
        Pointer<ImGuiWindowClass> window_class),
    int Function(int id, ImVec2 size, int flags,
        Pointer<ImGuiWindowClass> window_class)>('igDockSpace');

///```c
/// uint igDockSpaceOverViewport(
///  ImGuiViewport* viewport ,
///  ImGuiDockNodeFlags flags ,
///  ImGuiWindowClass* window_class
/// );
///```
int igDockSpaceOverViewport(Pointer<ImGuiViewport> viewport, int flags,
        Pointer<ImGuiWindowClass> window_class) =>
    _igDockSpaceOverViewport(viewport, flags, window_class);

late final _igDockSpaceOverViewport = _cimgui.lookupFunction<
    Uint32 Function(Pointer<ImGuiViewport> viewport, Uint32 flags,
        Pointer<ImGuiWindowClass> window_class),
    int Function(Pointer<ImGuiViewport> viewport, int flags,
        Pointer<ImGuiWindowClass> window_class)>('igDockSpaceOverViewport');

///```c
/// byte igDragFloat(
///  byte* label ,
///  float* v ,
///  float v_speed ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragFloat(Pointer<Uint8> label, Pointer<Float> v, double v_speed,
        double v_min, double v_max, Pointer<Uint8> format, int flags) =>
    _igDragFloat(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragFloat = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Float> v, Float v_speed,
        Float v_min, Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        Pointer<Float> v,
        double v_speed,
        double v_min,
        double v_max,
        Pointer<Uint8> format,
        int flags)>('igDragFloat');

///```c
/// byte igDragFloat2(
///  byte* label ,
///  Vector2* v ,
///  float v_speed ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragFloat2(Pointer<Uint8> label, Pointer<ImVector2> v, double v_speed,
        double v_min, double v_max, Pointer<Uint8> format, int flags) =>
    _igDragFloat2(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragFloat2 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector2> v, Float v_speed,
        Float v_min, Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        Pointer<ImVector2> v,
        double v_speed,
        double v_min,
        double v_max,
        Pointer<Uint8> format,
        int flags)>('igDragFloat2');

///```c
/// byte igDragFloat3(
///  byte* label ,
///  Vector3* v ,
///  float v_speed ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragFloat3(Pointer<Uint8> label, Pointer<ImVector3> v, double v_speed,
        double v_min, double v_max, Pointer<Uint8> format, int flags) =>
    _igDragFloat3(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragFloat3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector3> v, Float v_speed,
        Float v_min, Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        Pointer<ImVector3> v,
        double v_speed,
        double v_min,
        double v_max,
        Pointer<Uint8> format,
        int flags)>('igDragFloat3');

///```c
/// byte igDragFloat4(
///  byte* label ,
///  Vector4* v ,
///  float v_speed ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragFloat4(Pointer<Uint8> label, Pointer<Vector4> v, double v_speed,
        double v_min, double v_max, Pointer<Uint8> format, int flags) =>
    _igDragFloat4(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragFloat4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Vector4> v, Float v_speed,
        Float v_min, Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        Pointer<Vector4> v,
        double v_speed,
        double v_min,
        double v_max,
        Pointer<Uint8> format,
        int flags)>('igDragFloat4');

///```c
/// byte igDragFloatRange2(
///  byte* label ,
///  float* v_current_min ,
///  float* v_current_max ,
///  float v_speed ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  byte* format_max ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragFloatRange2(
        Pointer<Uint8> label,
        Pointer<Float> v_current_min,
        Pointer<Float> v_current_max,
        double v_speed,
        double v_min,
        double v_max,
        Pointer<Uint8> format,
        Pointer<Uint8> format_max,
        int flags) =>
    _igDragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min,
        v_max, format, format_max, flags);

late final _igDragFloatRange2 = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Pointer<Float> v_current_min,
        Pointer<Float> v_current_max,
        Float v_speed,
        Float v_min,
        Float v_max,
        Pointer<Uint8> format,
        Pointer<Uint8> format_max,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        Pointer<Float> v_current_min,
        Pointer<Float> v_current_max,
        double v_speed,
        double v_min,
        double v_max,
        Pointer<Uint8> format,
        Pointer<Uint8> format_max,
        int flags)>('igDragFloatRange2');

///```c
/// byte igDragInt(
///  byte* label ,
///  int* v ,
///  float v_speed ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragInt(Pointer<Uint8> label, Pointer<Int32> v, double v_speed, int v_min,
        int v_max, Pointer<Uint8> format, int flags) =>
    _igDragInt(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragInt = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Float v_speed,
        Int32 v_min, Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, double v_speed,
        int v_min, int v_max, Pointer<Uint8> format, int flags)>('igDragInt');

///```c
/// byte igDragInt2(
///  byte* label ,
///  int* v ,
///  float v_speed ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragInt2(Pointer<Uint8> label, Pointer<Int32> v, double v_speed,
        int v_min, int v_max, Pointer<Uint8> format, int flags) =>
    _igDragInt2(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragInt2 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Float v_speed,
        Int32 v_min, Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, double v_speed,
        int v_min, int v_max, Pointer<Uint8> format, int flags)>('igDragInt2');

///```c
/// byte igDragInt3(
///  byte* label ,
///  int* v ,
///  float v_speed ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragInt3(Pointer<Uint8> label, Pointer<Int32> v, double v_speed,
        int v_min, int v_max, Pointer<Uint8> format, int flags) =>
    _igDragInt3(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragInt3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Float v_speed,
        Int32 v_min, Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, double v_speed,
        int v_min, int v_max, Pointer<Uint8> format, int flags)>('igDragInt3');

///```c
/// byte igDragInt4(
///  byte* label ,
///  int* v ,
///  float v_speed ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragInt4(Pointer<Uint8> label, Pointer<Int32> v, double v_speed,
        int v_min, int v_max, Pointer<Uint8> format, int flags) =>
    _igDragInt4(label, v, v_speed, v_min, v_max, format, flags);

late final _igDragInt4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Float v_speed,
        Int32 v_min, Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, double v_speed,
        int v_min, int v_max, Pointer<Uint8> format, int flags)>('igDragInt4');

///```c
/// byte igDragIntRange2(
///  byte* label ,
///  int* v_current_min ,
///  int* v_current_max ,
///  float v_speed ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  byte* format_max ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragIntRange2(
        Pointer<Uint8> label,
        Pointer<Int32> v_current_min,
        Pointer<Int32> v_current_max,
        double v_speed,
        int v_min,
        int v_max,
        Pointer<Uint8> format,
        Pointer<Uint8> format_max,
        int flags) =>
    _igDragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max,
        format, format_max, flags);

late final _igDragIntRange2 = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Pointer<Int32> v_current_min,
        Pointer<Int32> v_current_max,
        Float v_speed,
        Int32 v_min,
        Int32 v_max,
        Pointer<Uint8> format,
        Pointer<Uint8> format_max,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        Pointer<Int32> v_current_min,
        Pointer<Int32> v_current_max,
        double v_speed,
        int v_min,
        int v_max,
        Pointer<Uint8> format,
        Pointer<Uint8> format_max,
        int flags)>('igDragIntRange2');

///```c
/// byte igDragScalar(
///  byte* label ,
///  ImGuiDataType data_type ,
///  void* p_data ,
///  float v_speed ,
///  void* p_min ,
///  void* p_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragScalar(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        double v_speed,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags) =>
    _igDragScalar(
        label, data_type, p_data, v_speed, p_min, p_max, format, flags);

late final _igDragScalar = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Uint32 data_type,
        Pointer<Void> p_data,
        Float v_speed,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        double v_speed,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags)>('igDragScalar');

///```c
/// byte igDragScalarN(
///  byte* label ,
///  ImGuiDataType data_type ,
///  void* p_data ,
///  int components ,
///  float v_speed ,
///  void* p_min ,
///  void* p_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igDragScalarN(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        int components,
        double v_speed,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags) =>
    _igDragScalarN(label, data_type, p_data, components, v_speed, p_min, p_max,
        format, flags);

late final _igDragScalarN = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Uint32 data_type,
        Pointer<Void> p_data,
        Int32 components,
        Float v_speed,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        int components,
        double v_speed,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags)>('igDragScalarN');

///```c
/// void igDummy(
///  ImVec2 size
/// );
///```
void igDummy(ImVec2 size) => _igDummy(size);

late final _igDummy = _cimgui.lookupFunction<Void Function(ImVec2 size),
    void Function(ImVec2 size)>('igDummy');

///```c
/// void igEnd(
/// );
///```
void igEnd() => _igEnd();

late final _igEnd =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEnd');

///```c
/// void igEndChild(
/// );
///```
void igEndChild() => _igEndChild();

late final _igEndChild =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndChild');

///```c
/// void igEndCombo(
/// );
///```
void igEndCombo() => _igEndCombo();

late final _igEndCombo =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndCombo');

///```c
/// void igEndDisabled(
/// );
///```
void igEndDisabled() => _igEndDisabled();

late final _igEndDisabled =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndDisabled');

///```c
/// void igEndDragDropSource(
/// );
///```
void igEndDragDropSource() => _igEndDragDropSource();

late final _igEndDragDropSource = _cimgui
    .lookupFunction<Void Function(), void Function()>('igEndDragDropSource');

///```c
/// void igEndDragDropTarget(
/// );
///```
void igEndDragDropTarget() => _igEndDragDropTarget();

late final _igEndDragDropTarget = _cimgui
    .lookupFunction<Void Function(), void Function()>('igEndDragDropTarget');

///```c
/// void igEndFrame(
/// );
///```
void igEndFrame() => _igEndFrame();

late final _igEndFrame =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndFrame');

///```c
/// void igEndGroup(
/// );
///```
void igEndGroup() => _igEndGroup();

late final _igEndGroup =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndGroup');

///```c
/// void igEndListBox(
/// );
///```
void igEndListBox() => _igEndListBox();

late final _igEndListBox =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndListBox');

///```c
/// void igEndMainMenuBar(
/// );
///```
void igEndMainMenuBar() => _igEndMainMenuBar();

late final _igEndMainMenuBar = _cimgui
    .lookupFunction<Void Function(), void Function()>('igEndMainMenuBar');

///```c
/// void igEndMenu(
/// );
///```
void igEndMenu() => _igEndMenu();

late final _igEndMenu =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndMenu');

///```c
/// void igEndMenuBar(
/// );
///```
void igEndMenuBar() => _igEndMenuBar();

late final _igEndMenuBar =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndMenuBar');

///```c
/// void igEndPopup(
/// );
///```
void igEndPopup() => _igEndPopup();

late final _igEndPopup =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndPopup');

///```c
/// void igEndTabBar(
/// );
///```
void igEndTabBar() => _igEndTabBar();

late final _igEndTabBar =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndTabBar');

///```c
/// void igEndTabItem(
/// );
///```
void igEndTabItem() => _igEndTabItem();

late final _igEndTabItem =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndTabItem');

///```c
/// void igEndTable(
/// );
///```
void igEndTable() => _igEndTable();

late final _igEndTable =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndTable');

///```c
/// void igEndTooltip(
/// );
///```
void igEndTooltip() => _igEndTooltip();

late final _igEndTooltip =
    _cimgui.lookupFunction<Void Function(), void Function()>('igEndTooltip');

///```c
/// ImGuiViewport* igFindViewportByID(
///  uint id
/// );
///```
Pointer<ImGuiViewport> igFindViewportByID(int id) => _igFindViewportByID(id);

late final _igFindViewportByID = _cimgui.lookupFunction<
    Pointer<ImGuiViewport> Function(Uint32 id),
    Pointer<ImGuiViewport> Function(int id)>('igFindViewportByID');

///```c
/// ImGuiViewport* igFindViewportByPlatformHandle(
///  void* platform_handle
/// );
///```
Pointer<ImGuiViewport> igFindViewportByPlatformHandle(
        Pointer<Void> platform_handle) =>
    _igFindViewportByPlatformHandle(platform_handle);

late final _igFindViewportByPlatformHandle = _cimgui.lookupFunction<
    Pointer<ImGuiViewport> Function(Pointer<Void> platform_handle),
    Pointer<ImGuiViewport> Function(
        Pointer<Void> platform_handle)>('igFindViewportByPlatformHandle');

///```c
/// void igGetAllocatorFunctions(
///  IntPtr* p_alloc_func ,
///  IntPtr* p_free_func ,
///  void** p_user_data
/// );
///```
void igGetAllocatorFunctions(Pointer<IntPtr> p_alloc_func,
        Pointer<IntPtr> p_free_func, Pointer<Pointer<Void>> p_user_data) =>
    _igGetAllocatorFunctions(p_alloc_func, p_free_func, p_user_data);

late final _igGetAllocatorFunctions = _cimgui.lookupFunction<
    Void Function(Pointer<IntPtr> p_alloc_func, Pointer<IntPtr> p_free_func,
        Pointer<Pointer<Void>> p_user_data),
    void Function(Pointer<IntPtr> p_alloc_func, Pointer<IntPtr> p_free_func,
        Pointer<Pointer<Void>> p_user_data)>('igGetAllocatorFunctions');

///```c
/// ImDrawList* igGetBackgroundDrawList_Nil(
/// );
///```
Pointer<ImDrawList> igGetBackgroundDrawList_Nil() =>
    _igGetBackgroundDrawList_Nil();

late final _igGetBackgroundDrawList_Nil = _cimgui.lookupFunction<
    Pointer<ImDrawList> Function(),
    Pointer<ImDrawList> Function()>('igGetBackgroundDrawList_Nil');

///```c
/// ImDrawList* igGetBackgroundDrawList_ViewportPtr(
///  ImGuiViewport* viewport
/// );
///```
Pointer<ImDrawList> igGetBackgroundDrawList_ViewportPtr(
        Pointer<ImGuiViewport> viewport) =>
    _igGetBackgroundDrawList_ViewportPtr(viewport);

late final _igGetBackgroundDrawList_ViewportPtr = _cimgui.lookupFunction<
        Pointer<ImDrawList> Function(Pointer<ImGuiViewport> viewport),
        Pointer<ImDrawList> Function(Pointer<ImGuiViewport> viewport)>(
    'igGetBackgroundDrawList_ViewportPtr');

///```c
/// byte* igGetClipboardText(
/// );
///```
Pointer<Uint8> igGetClipboardText() => _igGetClipboardText();

late final _igGetClipboardText = _cimgui.lookupFunction<
    Pointer<Uint8> Function(), Pointer<Uint8> Function()>('igGetClipboardText');

///```c
/// uint igGetColorU32_Col(
///  ImGuiCol idx ,
///  float alpha_mul
/// );
///```
int igGetColorU32_Col(int idx, double alpha_mul) =>
    _igGetColorU32_Col(idx, alpha_mul);

late final _igGetColorU32_Col = _cimgui.lookupFunction<
    Uint32 Function(Uint32 idx, Float alpha_mul),
    int Function(int idx, double alpha_mul)>('igGetColorU32_Col');

///```c
/// uint igGetColorU32_Vec4(
///  ImVec4 col
/// );
///```
int igGetColorU32_Vec4(ImVec4 col) => _igGetColorU32_Vec4(col);

late final _igGetColorU32_Vec4 = _cimgui.lookupFunction<
    Uint32 Function(ImVec4 col),
    int Function(ImVec4 col)>('igGetColorU32_Vec4');

///```c
/// uint igGetColorU32_U32(
///  uint col
/// );
///```
int igGetColorU32_U32(int col) => _igGetColorU32_U32(col);

late final _igGetColorU32_U32 =
    _cimgui.lookupFunction<Uint32 Function(Uint32 col), int Function(int col)>(
        'igGetColorU32_U32');

///```c
/// int igGetColumnIndex(
/// );
///```
int igGetColumnIndex() => _igGetColumnIndex();

late final _igGetColumnIndex = _cimgui
    .lookupFunction<Int32 Function(), int Function()>('igGetColumnIndex');

///```c
/// float igGetColumnOffset(
///  int column_index
/// );
///```
double igGetColumnOffset(int column_index) => _igGetColumnOffset(column_index);

late final _igGetColumnOffset = _cimgui.lookupFunction<
    Float Function(Int32 column_index),
    double Function(int column_index)>('igGetColumnOffset');

///```c
/// int igGetColumnsCount(
/// );
///```
int igGetColumnsCount() => _igGetColumnsCount();

late final _igGetColumnsCount = _cimgui
    .lookupFunction<Int32 Function(), int Function()>('igGetColumnsCount');

///```c
/// float igGetColumnWidth(
///  int column_index
/// );
///```
double igGetColumnWidth(int column_index) => _igGetColumnWidth(column_index);

late final _igGetColumnWidth = _cimgui.lookupFunction<
    Float Function(Int32 column_index),
    double Function(int column_index)>('igGetColumnWidth');

///```c
/// void igGetContentRegionAvail(
///  ImVec2* pOut
/// );
///```
void igGetContentRegionAvail(Pointer<ImVec2> pOut) =>
    _igGetContentRegionAvail(pOut);

late final _igGetContentRegionAvail = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetContentRegionAvail');

///```c
/// void igGetContentRegionMax(
///  ImVec2* pOut
/// );
///```
void igGetContentRegionMax(Pointer<ImVec2> pOut) =>
    _igGetContentRegionMax(pOut);

late final _igGetContentRegionMax = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetContentRegionMax');

///```c
/// IntPtr igGetCurrentContext(
/// );
///```
int igGetCurrentContext() => _igGetCurrentContext();

late final _igGetCurrentContext = _cimgui
    .lookupFunction<IntPtr Function(), int Function()>('igGetCurrentContext');

///```c
/// void igGetCursorPos(
///  ImVec2* pOut
/// );
///```
void igGetCursorPos(Pointer<ImVec2> pOut) => _igGetCursorPos(pOut);

late final _igGetCursorPos = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetCursorPos');

///```c
/// float igGetCursorPosX(
/// );
///```
double igGetCursorPosX() => _igGetCursorPosX();

late final _igGetCursorPosX = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetCursorPosX');

///```c
/// float igGetCursorPosY(
/// );
///```
double igGetCursorPosY() => _igGetCursorPosY();

late final _igGetCursorPosY = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetCursorPosY');

///```c
/// void igGetCursorScreenPos(
///  ImVec2* pOut
/// );
///```
void igGetCursorScreenPos(Pointer<ImVec2> pOut) => _igGetCursorScreenPos(pOut);

late final _igGetCursorScreenPos = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetCursorScreenPos');

///```c
/// void igGetCursorStartPos(
///  ImVec2* pOut
/// );
///```
void igGetCursorStartPos(Pointer<ImVec2> pOut) => _igGetCursorStartPos(pOut);

late final _igGetCursorStartPos = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetCursorStartPos');

///```c
/// ImGuiPayload* igGetDragDropPayload(
/// );
///```
Pointer<ImGuiPayload> igGetDragDropPayload() => _igGetDragDropPayload();

late final _igGetDragDropPayload = _cimgui.lookupFunction<
    Pointer<ImGuiPayload> Function(),
    Pointer<ImGuiPayload> Function()>('igGetDragDropPayload');

///```c
/// ImDrawData* igGetDrawData(
/// );
///```
Pointer<ImDrawData> igGetDrawData() => _igGetDrawData();

late final _igGetDrawData = _cimgui.lookupFunction<
    Pointer<ImDrawData> Function(),
    Pointer<ImDrawData> Function()>('igGetDrawData');

///```c
/// IntPtr igGetDrawListSharedData(
/// );
///```
int igGetDrawListSharedData() => _igGetDrawListSharedData();

late final _igGetDrawListSharedData =
    _cimgui.lookupFunction<IntPtr Function(), int Function()>(
        'igGetDrawListSharedData');

///```c
/// ImFont* igGetFont(
/// );
///```
Pointer<ImFont> igGetFont() => _igGetFont();

late final _igGetFont = _cimgui.lookupFunction<Pointer<ImFont> Function(),
    Pointer<ImFont> Function()>('igGetFont');

///```c
/// float igGetFontSize(
/// );
///```
double igGetFontSize() => _igGetFontSize();

late final _igGetFontSize = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetFontSize');

///```c
/// void igGetFontTexUvWhitePixel(
///  ImVec2* pOut
/// );
///```
void igGetFontTexUvWhitePixel(Pointer<ImVec2> pOut) =>
    _igGetFontTexUvWhitePixel(pOut);

late final _igGetFontTexUvWhitePixel = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetFontTexUvWhitePixel');

///```c
/// ImDrawList* igGetForegroundDrawList_Nil(
/// );
///```
Pointer<ImDrawList> igGetForegroundDrawList_Nil() =>
    _igGetForegroundDrawList_Nil();

late final _igGetForegroundDrawList_Nil = _cimgui.lookupFunction<
    Pointer<ImDrawList> Function(),
    Pointer<ImDrawList> Function()>('igGetForegroundDrawList_Nil');

///```c
/// ImDrawList* igGetForegroundDrawList_ViewportPtr(
///  ImGuiViewport* viewport
/// );
///```
Pointer<ImDrawList> igGetForegroundDrawList_ViewportPtr(
        Pointer<ImGuiViewport> viewport) =>
    _igGetForegroundDrawList_ViewportPtr(viewport);

late final _igGetForegroundDrawList_ViewportPtr = _cimgui.lookupFunction<
        Pointer<ImDrawList> Function(Pointer<ImGuiViewport> viewport),
        Pointer<ImDrawList> Function(Pointer<ImGuiViewport> viewport)>(
    'igGetForegroundDrawList_ViewportPtr');

///```c
/// int igGetFrameCount(
/// );
///```
int igGetFrameCount() => _igGetFrameCount();

late final _igGetFrameCount =
    _cimgui.lookupFunction<Int32 Function(), int Function()>('igGetFrameCount');

///```c
/// float igGetFrameHeight(
/// );
///```
double igGetFrameHeight() => _igGetFrameHeight();

late final _igGetFrameHeight = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetFrameHeight');

///```c
/// float igGetFrameHeightWithSpacing(
/// );
///```
double igGetFrameHeightWithSpacing() => _igGetFrameHeightWithSpacing();

late final _igGetFrameHeightWithSpacing =
    _cimgui.lookupFunction<Float Function(), double Function()>(
        'igGetFrameHeightWithSpacing');

///```c
/// uint igGetID_Str(
///  byte* str_id
/// );
///```
int igGetID_Str(Pointer<Uint8> str_id) => _igGetID_Str(str_id);

late final _igGetID_Str = _cimgui.lookupFunction<
    Uint32 Function(Pointer<Uint8> str_id),
    int Function(Pointer<Uint8> str_id)>('igGetID_Str');

///```c
/// uint igGetID_StrStr(
///  byte* str_id_begin ,
///  byte* str_id_end
/// );
///```
int igGetID_StrStr(Pointer<Uint8> str_id_begin, Pointer<Uint8> str_id_end) =>
    _igGetID_StrStr(str_id_begin, str_id_end);

late final _igGetID_StrStr = _cimgui.lookupFunction<
    Uint32 Function(Pointer<Uint8> str_id_begin, Pointer<Uint8> str_id_end),
    int Function(Pointer<Uint8> str_id_begin,
        Pointer<Uint8> str_id_end)>('igGetID_StrStr');

///```c
/// uint igGetID_Ptr(
///  void* ptr_id
/// );
///```
int igGetID_Ptr(Pointer<Void> ptr_id) => _igGetID_Ptr(ptr_id);

late final _igGetID_Ptr = _cimgui.lookupFunction<
    Uint32 Function(Pointer<Void> ptr_id),
    int Function(Pointer<Void> ptr_id)>('igGetID_Ptr');

///```c
/// ImGuiIO* igGetIO(
/// );
///```
Pointer<ImGuiIO> igGetIO() => _igGetIO();

late final _igGetIO = _cimgui.lookupFunction<Pointer<ImGuiIO> Function(),
    Pointer<ImGuiIO> Function()>('igGetIO');

///```c
/// uint igGetItemID(
/// );
///```
int igGetItemID() => _igGetItemID();

late final _igGetItemID =
    _cimgui.lookupFunction<Uint32 Function(), int Function()>('igGetItemID');

///```c
/// void igGetItemRectMax(
///  ImVec2* pOut
/// );
///```
void igGetItemRectMax(Pointer<ImVec2> pOut) => _igGetItemRectMax(pOut);

late final _igGetItemRectMax = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetItemRectMax');

///```c
/// void igGetItemRectMin(
///  ImVec2* pOut
/// );
///```
void igGetItemRectMin(Pointer<ImVec2> pOut) => _igGetItemRectMin(pOut);

late final _igGetItemRectMin = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetItemRectMin');

///```c
/// void igGetItemRectSize(
///  ImVec2* pOut
/// );
///```
void igGetItemRectSize(Pointer<ImVec2> pOut) => _igGetItemRectSize(pOut);

late final _igGetItemRectSize = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetItemRectSize');

///```c
/// ImGuiKey igGetKeyIndex(
///  ImGuiKey key
/// );
///```
int igGetKeyIndex(int key) => _igGetKeyIndex(key);

late final _igGetKeyIndex =
    _cimgui.lookupFunction<Uint32 Function(Uint32 key), int Function(int key)>(
        'igGetKeyIndex');

///```c
/// byte* igGetKeyName(
///  ImGuiKey key
/// );
///```
Pointer<Uint8> igGetKeyName(int key) => _igGetKeyName(key);

late final _igGetKeyName = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Uint32 key),
    Pointer<Uint8> Function(int key)>('igGetKeyName');

///```c
/// int igGetKeyPressedAmount(
///  ImGuiKey key ,
///  float repeat_delay ,
///  float rate
/// );
///```
int igGetKeyPressedAmount(int key, double repeat_delay, double rate) =>
    _igGetKeyPressedAmount(key, repeat_delay, rate);

late final _igGetKeyPressedAmount = _cimgui.lookupFunction<
    Int32 Function(Uint32 key, Float repeat_delay, Float rate),
    int Function(
        int key, double repeat_delay, double rate)>('igGetKeyPressedAmount');

///```c
/// ImGuiViewport* igGetMainViewport(
/// );
///```
Pointer<ImGuiViewport> igGetMainViewport() => _igGetMainViewport();

late final _igGetMainViewport = _cimgui.lookupFunction<
    Pointer<ImGuiViewport> Function(),
    Pointer<ImGuiViewport> Function()>('igGetMainViewport');

///```c
/// int igGetMouseClickedCount(
///  ImGuiMouseButton button
/// );
///```
int igGetMouseClickedCount(int button) => _igGetMouseClickedCount(button);

late final _igGetMouseClickedCount = _cimgui.lookupFunction<
    Int32 Function(Uint32 button),
    int Function(int button)>('igGetMouseClickedCount');

///```c
/// ImGuiMouseCursor igGetMouseCursor(
/// );
///```
int igGetMouseCursor() => _igGetMouseCursor();

late final _igGetMouseCursor = _cimgui
    .lookupFunction<Uint32 Function(), int Function()>('igGetMouseCursor');

///```c
/// void igGetMouseDragDelta(
///  ImVec2* pOut ,
///  ImGuiMouseButton button ,
///  float lock_threshold
/// );
///```
void igGetMouseDragDelta(
        Pointer<ImVec2> pOut, int button, double lock_threshold) =>
    _igGetMouseDragDelta(pOut, button, lock_threshold);

late final _igGetMouseDragDelta = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut, Uint32 button, Float lock_threshold),
    void Function(Pointer<ImVec2> pOut, int button,
        double lock_threshold)>('igGetMouseDragDelta');

///```c
/// void igGetMousePos(
///  ImVec2* pOut
/// );
///```
void igGetMousePos(Pointer<ImVec2> pOut) => _igGetMousePos(pOut);

late final _igGetMousePos = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetMousePos');

///```c
/// void igGetMousePosOnOpeningCurrentPopup(
///  ImVec2* pOut
/// );
///```
void igGetMousePosOnOpeningCurrentPopup(Pointer<ImVec2> pOut) =>
    _igGetMousePosOnOpeningCurrentPopup(pOut);

late final _igGetMousePosOnOpeningCurrentPopup = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetMousePosOnOpeningCurrentPopup');

///```c
/// ImGuiPlatformIO* igGetPlatformIO(
/// );
///```
Pointer<ImGuiPlatformIO> igGetPlatformIO() => _igGetPlatformIO();

late final _igGetPlatformIO = _cimgui.lookupFunction<
    Pointer<ImGuiPlatformIO> Function(),
    Pointer<ImGuiPlatformIO> Function()>('igGetPlatformIO');

///```c
/// float igGetScrollMaxX(
/// );
///```
double igGetScrollMaxX() => _igGetScrollMaxX();

late final _igGetScrollMaxX = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetScrollMaxX');

///```c
/// float igGetScrollMaxY(
/// );
///```
double igGetScrollMaxY() => _igGetScrollMaxY();

late final _igGetScrollMaxY = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetScrollMaxY');

///```c
/// float igGetScrollX(
/// );
///```
double igGetScrollX() => _igGetScrollX();

late final _igGetScrollX =
    _cimgui.lookupFunction<Float Function(), double Function()>('igGetScrollX');

///```c
/// float igGetScrollY(
/// );
///```
double igGetScrollY() => _igGetScrollY();

late final _igGetScrollY =
    _cimgui.lookupFunction<Float Function(), double Function()>('igGetScrollY');

///```c
/// ImGuiStorage* igGetStateStorage(
/// );
///```
Pointer<ImGuiStorage> igGetStateStorage() => _igGetStateStorage();

late final _igGetStateStorage = _cimgui.lookupFunction<
    Pointer<ImGuiStorage> Function(),
    Pointer<ImGuiStorage> Function()>('igGetStateStorage');

///```c
/// ImGuiStyle* igGetStyle(
/// );
///```
Pointer<ImGuiStyle> igGetStyle() => _igGetStyle();

late final _igGetStyle = _cimgui.lookupFunction<Pointer<ImGuiStyle> Function(),
    Pointer<ImGuiStyle> Function()>('igGetStyle');

///```c
/// byte* igGetStyleColorName(
///  ImGuiCol idx
/// );
///```
Pointer<Uint8> igGetStyleColorName(int idx) => _igGetStyleColorName(idx);

late final _igGetStyleColorName = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Uint32 idx),
    Pointer<Uint8> Function(int idx)>('igGetStyleColorName');

///```c
/// ImVec4* igGetStyleColorVec4(
///  ImGuiCol idx
/// );
///```
Pointer<ImVec4> igGetStyleColorVec4(int idx) => _igGetStyleColorVec4(idx);

late final _igGetStyleColorVec4 = _cimgui.lookupFunction<
    Pointer<ImVec4> Function(Uint32 idx),
    Pointer<ImVec4> Function(int idx)>('igGetStyleColorVec4');

///```c
/// float igGetTextLineHeight(
/// );
///```
double igGetTextLineHeight() => _igGetTextLineHeight();

late final _igGetTextLineHeight = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetTextLineHeight');

///```c
/// float igGetTextLineHeightWithSpacing(
/// );
///```
double igGetTextLineHeightWithSpacing() => _igGetTextLineHeightWithSpacing();

late final _igGetTextLineHeightWithSpacing =
    _cimgui.lookupFunction<Float Function(), double Function()>(
        'igGetTextLineHeightWithSpacing');

///```c
/// double igGetTime(
/// );
///```
double igGetTime() => _igGetTime();

late final _igGetTime =
    _cimgui.lookupFunction<Double Function(), double Function()>('igGetTime');

///```c
/// float igGetTreeNodeToLabelSpacing(
/// );
///```
double igGetTreeNodeToLabelSpacing() => _igGetTreeNodeToLabelSpacing();

late final _igGetTreeNodeToLabelSpacing =
    _cimgui.lookupFunction<Float Function(), double Function()>(
        'igGetTreeNodeToLabelSpacing');

///```c
/// byte* igGetVersion(
/// );
///```
Pointer<Uint8> igGetVersion() => _igGetVersion();

late final _igGetVersion = _cimgui.lookupFunction<Pointer<Uint8> Function(),
    Pointer<Uint8> Function()>('igGetVersion');

///```c
/// void igGetWindowContentRegionMax(
///  ImVec2* pOut
/// );
///```
void igGetWindowContentRegionMax(Pointer<ImVec2> pOut) =>
    _igGetWindowContentRegionMax(pOut);

late final _igGetWindowContentRegionMax = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetWindowContentRegionMax');

///```c
/// void igGetWindowContentRegionMin(
///  ImVec2* pOut
/// );
///```
void igGetWindowContentRegionMin(Pointer<ImVec2> pOut) =>
    _igGetWindowContentRegionMin(pOut);

late final _igGetWindowContentRegionMin = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetWindowContentRegionMin');

///```c
/// uint igGetWindowDockID(
/// );
///```
int igGetWindowDockID() => _igGetWindowDockID();

late final _igGetWindowDockID = _cimgui
    .lookupFunction<Uint32 Function(), int Function()>('igGetWindowDockID');

///```c
/// float igGetWindowDpiScale(
/// );
///```
double igGetWindowDpiScale() => _igGetWindowDpiScale();

late final _igGetWindowDpiScale = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetWindowDpiScale');

///```c
/// ImDrawList* igGetWindowDrawList(
/// );
///```
Pointer<ImDrawList> igGetWindowDrawList() => _igGetWindowDrawList();

late final _igGetWindowDrawList = _cimgui.lookupFunction<
    Pointer<ImDrawList> Function(),
    Pointer<ImDrawList> Function()>('igGetWindowDrawList');

///```c
/// float igGetWindowHeight(
/// );
///```
double igGetWindowHeight() => _igGetWindowHeight();

late final _igGetWindowHeight = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetWindowHeight');

///```c
/// void igGetWindowPos(
///  ImVec2* pOut
/// );
///```
void igGetWindowPos(Pointer<ImVec2> pOut) => _igGetWindowPos(pOut);

late final _igGetWindowPos = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetWindowPos');

///```c
/// void igGetWindowSize(
///  ImVec2* pOut
/// );
///```
void igGetWindowSize(Pointer<ImVec2> pOut) => _igGetWindowSize(pOut);

late final _igGetWindowSize = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut),
    void Function(Pointer<ImVec2> pOut)>('igGetWindowSize');

///```c
/// ImGuiViewport* igGetWindowViewport(
/// );
///```
Pointer<ImGuiViewport> igGetWindowViewport() => _igGetWindowViewport();

late final _igGetWindowViewport = _cimgui.lookupFunction<
    Pointer<ImGuiViewport> Function(),
    Pointer<ImGuiViewport> Function()>('igGetWindowViewport');

///```c
/// float igGetWindowWidth(
/// );
///```
double igGetWindowWidth() => _igGetWindowWidth();

late final _igGetWindowWidth = _cimgui
    .lookupFunction<Float Function(), double Function()>('igGetWindowWidth');

///```c
/// void igImage(
///  IntPtr user_texture_id ,
///  ImVec2 image_size ,
///  ImVec2 uv0 ,
///  ImVec2 uv1 ,
///  ImVec4 tint_col ,
///  ImVec4 border_col
/// );
///```
void igImage(int user_texture_id, ImVec2 image_size, ImVec2 uv0, ImVec2 uv1,
        ImVec4 tint_col, ImVec4 border_col) =>
    _igImage(user_texture_id, image_size, uv0, uv1, tint_col, border_col);

late final _igImage = _cimgui.lookupFunction<
    Void Function(IntPtr user_texture_id, ImVec2 image_size, ImVec2 uv0,
        ImVec2 uv1, ImVec4 tint_col, ImVec4 border_col),
    void Function(int user_texture_id, ImVec2 image_size, ImVec2 uv0,
        ImVec2 uv1, ImVec4 tint_col, ImVec4 border_col)>('igImage');

///```c
/// byte igImageButton(
///  byte* str_id ,
///  IntPtr user_texture_id ,
///  ImVec2 image_size ,
///  ImVec2 uv0 ,
///  ImVec2 uv1 ,
///  ImVec4 bg_col ,
///  ImVec4 tint_col
/// );
///```
int igImageButton(Pointer<Uint8> str_id, int user_texture_id, ImVec2 image_size,
        ImVec2 uv0, ImVec2 uv1, ImVec4 bg_col, ImVec4 tint_col) =>
    _igImageButton(
        str_id, user_texture_id, image_size, uv0, uv1, bg_col, tint_col);

late final _igImageButton = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> str_id,
        IntPtr user_texture_id,
        ImVec2 image_size,
        ImVec2 uv0,
        ImVec2 uv1,
        ImVec4 bg_col,
        ImVec4 tint_col),
    int Function(
        Pointer<Uint8> str_id,
        int user_texture_id,
        ImVec2 image_size,
        ImVec2 uv0,
        ImVec2 uv1,
        ImVec4 bg_col,
        ImVec4 tint_col)>('igImageButton');

///```c
/// void igIndent(
///  float indent_w
/// );
///```
void igIndent(double indent_w) => _igIndent(indent_w);

late final _igIndent = _cimgui.lookupFunction<Void Function(Float indent_w),
    void Function(double indent_w)>('igIndent');

///```c
/// byte igInputDouble(
///  byte* label ,
///  double* v ,
///  double step ,
///  double step_fast ,
///  byte* format ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputDouble(Pointer<Uint8> label, Pointer<Double> v, double step,
        double step_fast, Pointer<Uint8> format, int flags) =>
    _igInputDouble(label, v, step, step_fast, format, flags);

late final _igInputDouble = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Double> v, Double step,
        Double step_fast, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Double> v, double step,
        double step_fast, Pointer<Uint8> format, int flags)>('igInputDouble');

///```c
/// byte igInputFloat(
///  byte* label ,
///  float* v ,
///  float step ,
///  float step_fast ,
///  byte* format ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputFloat(Pointer<Uint8> label, Pointer<Float> v, double step,
        double step_fast, Pointer<Uint8> format, int flags) =>
    _igInputFloat(label, v, step, step_fast, format, flags);

late final _igInputFloat = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Float> v, Float step,
        Float step_fast, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Float> v, double step,
        double step_fast, Pointer<Uint8> format, int flags)>('igInputFloat');

///```c
/// byte igInputFloat2(
///  byte* label ,
///  Vector2* v ,
///  byte* format ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputFloat2(Pointer<Uint8> label, Pointer<ImVector2> v,
        Pointer<Uint8> format, int flags) =>
    _igInputFloat2(label, v, format, flags);

late final _igInputFloat2 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector2> v,
        Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<ImVector2> v,
        Pointer<Uint8> format, int flags)>('igInputFloat2');

///```c
/// byte igInputFloat3(
///  byte* label ,
///  Vector3* v ,
///  byte* format ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputFloat3(Pointer<Uint8> label, Pointer<ImVector3> v,
        Pointer<Uint8> format, int flags) =>
    _igInputFloat3(label, v, format, flags);

late final _igInputFloat3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector3> v,
        Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<ImVector3> v,
        Pointer<Uint8> format, int flags)>('igInputFloat3');

///```c
/// byte igInputFloat4(
///  byte* label ,
///  Vector4* v ,
///  byte* format ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputFloat4(Pointer<Uint8> label, Pointer<Vector4> v,
        Pointer<Uint8> format, int flags) =>
    _igInputFloat4(label, v, format, flags);

late final _igInputFloat4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Vector4> v,
        Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Vector4> v,
        Pointer<Uint8> format, int flags)>('igInputFloat4');

///```c
/// byte igInputInt(
///  byte* label ,
///  int* v ,
///  int step ,
///  int step_fast ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputInt(Pointer<Uint8> label, Pointer<Int32> v, int step, int step_fast,
        int flags) =>
    _igInputInt(label, v, step, step_fast, flags);

late final _igInputInt = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Int32 step,
        Int32 step_fast, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, int step,
        int step_fast, int flags)>('igInputInt');

///```c
/// byte igInputInt2(
///  byte* label ,
///  int* v ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputInt2(Pointer<Uint8> label, Pointer<Int32> v, int flags) =>
    _igInputInt2(label, v, flags);

late final _igInputInt2 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Uint32 flags),
    int Function(
        Pointer<Uint8> label, Pointer<Int32> v, int flags)>('igInputInt2');

///```c
/// byte igInputInt3(
///  byte* label ,
///  int* v ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputInt3(Pointer<Uint8> label, Pointer<Int32> v, int flags) =>
    _igInputInt3(label, v, flags);

late final _igInputInt3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Uint32 flags),
    int Function(
        Pointer<Uint8> label, Pointer<Int32> v, int flags)>('igInputInt3');

///```c
/// byte igInputInt4(
///  byte* label ,
///  int* v ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputInt4(Pointer<Uint8> label, Pointer<Int32> v, int flags) =>
    _igInputInt4(label, v, flags);

late final _igInputInt4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Uint32 flags),
    int Function(
        Pointer<Uint8> label, Pointer<Int32> v, int flags)>('igInputInt4');

///```c
/// byte igInputScalar(
///  byte* label ,
///  ImGuiDataType data_type ,
///  void* p_data ,
///  void* p_step ,
///  void* p_step_fast ,
///  byte* format ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputScalar(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_step,
        Pointer<Void> p_step_fast,
        Pointer<Uint8> format,
        int flags) =>
    _igInputScalar(
        label, data_type, p_data, p_step, p_step_fast, format, flags);

late final _igInputScalar = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Uint32 data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_step,
        Pointer<Void> p_step_fast,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_step,
        Pointer<Void> p_step_fast,
        Pointer<Uint8> format,
        int flags)>('igInputScalar');

///```c
/// byte igInputScalarN(
///  byte* label ,
///  ImGuiDataType data_type ,
///  void* p_data ,
///  int components ,
///  void* p_step ,
///  void* p_step_fast ,
///  byte* format ,
///  ImGuiInputTextFlags flags
/// );
///```
int igInputScalarN(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        int components,
        Pointer<Void> p_step,
        Pointer<Void> p_step_fast,
        Pointer<Uint8> format,
        int flags) =>
    _igInputScalarN(label, data_type, p_data, components, p_step, p_step_fast,
        format, flags);

late final _igInputScalarN = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Uint32 data_type,
        Pointer<Void> p_data,
        Int32 components,
        Pointer<Void> p_step,
        Pointer<Void> p_step_fast,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        int components,
        Pointer<Void> p_step,
        Pointer<Void> p_step_fast,
        Pointer<Uint8> format,
        int flags)>('igInputScalarN');

///```c
/// byte igInputText(
///  byte* label ,
///  byte* buf ,
///  uint buf_size ,
///  ImGuiInputTextFlags flags ,
///  ImGuiInputTextCallback callback ,
///  void* user_data
/// );
///```
int igInputText(Pointer<Uint8> label, Pointer<Uint8> buf, int buf_size,
        int flags, Pointer callback, Pointer<Void> user_data) =>
    _igInputText(label, buf, buf_size, flags, callback, user_data);

late final _igInputText = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Uint8> buf, Uint32 buf_size,
        Uint32 flags, Pointer callback, Pointer<Void> user_data),
    int Function(Pointer<Uint8> label, Pointer<Uint8> buf, int buf_size,
        int flags, Pointer callback, Pointer<Void> user_data)>('igInputText');

///```c
/// byte igInputTextMultiline(
///  byte* label ,
///  byte* buf ,
///  uint buf_size ,
///  ImVec2 size ,
///  ImGuiInputTextFlags flags ,
///  ImGuiInputTextCallback callback ,
///  void* user_data
/// );
///```
int igInputTextMultiline(Pointer<Uint8> label, Pointer<Uint8> buf, int buf_size,
        ImVec2 size, int flags, Pointer callback, Pointer<Void> user_data) =>
    _igInputTextMultiline(
        label, buf, buf_size, size, flags, callback, user_data);

late final _igInputTextMultiline = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Uint8> buf, Uint32 buf_size,
        ImVec2 size, Uint32 flags, Pointer callback, Pointer<Void> user_data),
    int Function(
        Pointer<Uint8> label,
        Pointer<Uint8> buf,
        int buf_size,
        ImVec2 size,
        int flags,
        Pointer callback,
        Pointer<Void> user_data)>('igInputTextMultiline');

///```c
/// byte igInputTextWithHint(
///  byte* label ,
///  byte* hint ,
///  byte* buf ,
///  uint buf_size ,
///  ImGuiInputTextFlags flags ,
///  ImGuiInputTextCallback callback ,
///  void* user_data
/// );
///```
int igInputTextWithHint(
        Pointer<Uint8> label,
        Pointer<Uint8> hint,
        Pointer<Uint8> buf,
        int buf_size,
        int flags,
        Pointer callback,
        Pointer<Void> user_data) =>
    _igInputTextWithHint(
        label, hint, buf, buf_size, flags, callback, user_data);

late final _igInputTextWithHint = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Pointer<Uint8> hint,
        Pointer<Uint8> buf,
        Uint32 buf_size,
        Uint32 flags,
        Pointer callback,
        Pointer<Void> user_data),
    int Function(
        Pointer<Uint8> label,
        Pointer<Uint8> hint,
        Pointer<Uint8> buf,
        int buf_size,
        int flags,
        Pointer callback,
        Pointer<Void> user_data)>('igInputTextWithHint');

///```c
/// byte igInvisibleButton(
///  byte* str_id ,
///  ImVec2 size ,
///  ImGuiButtonFlags flags
/// );
///```
int igInvisibleButton(Pointer<Uint8> str_id, ImVec2 size, int flags) =>
    _igInvisibleButton(str_id, size, flags);

late final _igInvisibleButton = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, ImVec2 size, Uint32 flags),
    int Function(
        Pointer<Uint8> str_id, ImVec2 size, int flags)>('igInvisibleButton');

///```c
/// byte igIsAnyItemActive(
/// );
///```
int igIsAnyItemActive() => _igIsAnyItemActive();

late final _igIsAnyItemActive = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsAnyItemActive');

///```c
/// byte igIsAnyItemFocused(
/// );
///```
int igIsAnyItemFocused() => _igIsAnyItemFocused();

late final _igIsAnyItemFocused = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsAnyItemFocused');

///```c
/// byte igIsAnyItemHovered(
/// );
///```
int igIsAnyItemHovered() => _igIsAnyItemHovered();

late final _igIsAnyItemHovered = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsAnyItemHovered');

///```c
/// byte igIsAnyMouseDown(
/// );
///```
int igIsAnyMouseDown() => _igIsAnyMouseDown();

late final _igIsAnyMouseDown = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsAnyMouseDown');

///```c
/// byte igIsItemActivated(
/// );
///```
int igIsItemActivated() => _igIsItemActivated();

late final _igIsItemActivated = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsItemActivated');

///```c
/// byte igIsItemActive(
/// );
///```
int igIsItemActive() => _igIsItemActive();

late final _igIsItemActive =
    _cimgui.lookupFunction<Uint8 Function(), int Function()>('igIsItemActive');

///```c
/// byte igIsItemClicked(
///  ImGuiMouseButton mouse_button
/// );
///```
int igIsItemClicked(int mouse_button) => _igIsItemClicked(mouse_button);

late final _igIsItemClicked = _cimgui.lookupFunction<
    Uint8 Function(Uint32 mouse_button),
    int Function(int mouse_button)>('igIsItemClicked');

///```c
/// byte igIsItemDeactivated(
/// );
///```
int igIsItemDeactivated() => _igIsItemDeactivated();

late final _igIsItemDeactivated = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsItemDeactivated');

///```c
/// byte igIsItemDeactivatedAfterEdit(
/// );
///```
int igIsItemDeactivatedAfterEdit() => _igIsItemDeactivatedAfterEdit();

late final _igIsItemDeactivatedAfterEdit =
    _cimgui.lookupFunction<Uint8 Function(), int Function()>(
        'igIsItemDeactivatedAfterEdit');

///```c
/// byte igIsItemEdited(
/// );
///```
int igIsItemEdited() => _igIsItemEdited();

late final _igIsItemEdited =
    _cimgui.lookupFunction<Uint8 Function(), int Function()>('igIsItemEdited');

///```c
/// byte igIsItemFocused(
/// );
///```
int igIsItemFocused() => _igIsItemFocused();

late final _igIsItemFocused =
    _cimgui.lookupFunction<Uint8 Function(), int Function()>('igIsItemFocused');

///```c
/// byte igIsItemHovered(
///  ImGuiHoveredFlags flags
/// );
///```
int igIsItemHovered(int flags) => _igIsItemHovered(flags);

late final _igIsItemHovered = _cimgui.lookupFunction<
    Uint8 Function(Uint32 flags), int Function(int flags)>('igIsItemHovered');

///```c
/// byte igIsItemToggledOpen(
/// );
///```
int igIsItemToggledOpen() => _igIsItemToggledOpen();

late final _igIsItemToggledOpen = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsItemToggledOpen');

///```c
/// byte igIsItemVisible(
/// );
///```
int igIsItemVisible() => _igIsItemVisible();

late final _igIsItemVisible =
    _cimgui.lookupFunction<Uint8 Function(), int Function()>('igIsItemVisible');

///```c
/// byte igIsKeyChordPressed_Nil(
///  ImGuiKeyChord key_chord
/// );
///```
int igIsKeyChordPressed_Nil(int key_chord) =>
    _igIsKeyChordPressed_Nil(key_chord);

late final _igIsKeyChordPressed_Nil = _cimgui.lookupFunction<
    Uint8 Function(Uint32 key_chord),
    int Function(int key_chord)>('igIsKeyChordPressed_Nil');

///```c
/// byte igIsKeyDown_Nil(
///  ImGuiKey key
/// );
///```
int igIsKeyDown_Nil(int key) => _igIsKeyDown_Nil(key);

late final _igIsKeyDown_Nil =
    _cimgui.lookupFunction<Uint8 Function(Uint32 key), int Function(int key)>(
        'igIsKeyDown_Nil');

///```c
/// byte igIsKeyPressed_Bool(
///  ImGuiKey key ,
///  byte repeat
/// );
///```
int igIsKeyPressed_Bool(int key, int repeat) =>
    _igIsKeyPressed_Bool(key, repeat);

late final _igIsKeyPressed_Bool = _cimgui.lookupFunction<
    Uint8 Function(Uint32 key, Uint8 repeat),
    int Function(int key, int repeat)>('igIsKeyPressed_Bool');

///```c
/// byte igIsKeyReleased_Nil(
///  ImGuiKey key
/// );
///```
int igIsKeyReleased_Nil(int key) => _igIsKeyReleased_Nil(key);

late final _igIsKeyReleased_Nil =
    _cimgui.lookupFunction<Uint8 Function(Uint32 key), int Function(int key)>(
        'igIsKeyReleased_Nil');

///```c
/// byte igIsMouseClicked_Bool(
///  ImGuiMouseButton button ,
///  byte repeat
/// );
///```
int igIsMouseClicked_Bool(int button, int repeat) =>
    _igIsMouseClicked_Bool(button, repeat);

late final _igIsMouseClicked_Bool = _cimgui.lookupFunction<
    Uint8 Function(Uint32 button, Uint8 repeat),
    int Function(int button, int repeat)>('igIsMouseClicked_Bool');

///```c
/// byte igIsMouseDoubleClicked_Nil(
///  ImGuiMouseButton button
/// );
///```
int igIsMouseDoubleClicked_Nil(int button) =>
    _igIsMouseDoubleClicked_Nil(button);

late final _igIsMouseDoubleClicked_Nil = _cimgui.lookupFunction<
    Uint8 Function(Uint32 button),
    int Function(int button)>('igIsMouseDoubleClicked_Nil');

///```c
/// byte igIsMouseDown_Nil(
///  ImGuiMouseButton button
/// );
///```
int igIsMouseDown_Nil(int button) => _igIsMouseDown_Nil(button);

late final _igIsMouseDown_Nil = _cimgui.lookupFunction<
    Uint8 Function(Uint32 button),
    int Function(int button)>('igIsMouseDown_Nil');

///```c
/// byte igIsMouseDragging(
///  ImGuiMouseButton button ,
///  float lock_threshold
/// );
///```
int igIsMouseDragging(int button, double lock_threshold) =>
    _igIsMouseDragging(button, lock_threshold);

late final _igIsMouseDragging = _cimgui.lookupFunction<
    Uint8 Function(Uint32 button, Float lock_threshold),
    int Function(int button, double lock_threshold)>('igIsMouseDragging');

///```c
/// byte igIsMouseHoveringRect(
///  ImVec2 r_min ,
///  ImVec2 r_max ,
///  byte clip
/// );
///```
int igIsMouseHoveringRect(ImVec2 r_min, ImVec2 r_max, int clip) =>
    _igIsMouseHoveringRect(r_min, r_max, clip);

late final _igIsMouseHoveringRect = _cimgui.lookupFunction<
    Uint8 Function(ImVec2 r_min, ImVec2 r_max, Uint8 clip),
    int Function(
        ImVec2 r_min, ImVec2 r_max, int clip)>('igIsMouseHoveringRect');

///```c
/// byte igIsMousePosValid(
///  ImVec2* mouse_pos
/// );
///```
int igIsMousePosValid(Pointer<ImVec2> mouse_pos) =>
    _igIsMousePosValid(mouse_pos);

late final _igIsMousePosValid = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImVec2> mouse_pos),
    int Function(Pointer<ImVec2> mouse_pos)>('igIsMousePosValid');

///```c
/// byte igIsMouseReleased_Nil(
///  ImGuiMouseButton button
/// );
///```
int igIsMouseReleased_Nil(int button) => _igIsMouseReleased_Nil(button);

late final _igIsMouseReleased_Nil = _cimgui.lookupFunction<
    Uint8 Function(Uint32 button),
    int Function(int button)>('igIsMouseReleased_Nil');

///```c
/// byte igIsPopupOpen_Str(
///  byte* str_id ,
///  ImGuiPopupFlags flags
/// );
///```
int igIsPopupOpen_Str(Pointer<Uint8> str_id, int flags) =>
    _igIsPopupOpen_Str(str_id, flags);

late final _igIsPopupOpen_Str = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 flags),
    int Function(Pointer<Uint8> str_id, int flags)>('igIsPopupOpen_Str');

///```c
/// byte igIsRectVisible_Nil(
///  ImVec2 size
/// );
///```
int igIsRectVisible_Nil(ImVec2 size) => _igIsRectVisible_Nil(size);

late final _igIsRectVisible_Nil = _cimgui.lookupFunction<
    Uint8 Function(ImVec2 size),
    int Function(ImVec2 size)>('igIsRectVisible_Nil');

///```c
/// byte igIsRectVisible_Vec2(
///  ImVec2 rect_min ,
///  ImVec2 rect_max
/// );
///```
int igIsRectVisible_Vec2(ImVec2 rect_min, ImVec2 rect_max) =>
    _igIsRectVisible_Vec2(rect_min, rect_max);

late final _igIsRectVisible_Vec2 = _cimgui.lookupFunction<
    Uint8 Function(ImVec2 rect_min, ImVec2 rect_max),
    int Function(ImVec2 rect_min, ImVec2 rect_max)>('igIsRectVisible_Vec2');

///```c
/// byte igIsWindowAppearing(
/// );
///```
int igIsWindowAppearing() => _igIsWindowAppearing();

late final _igIsWindowAppearing = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsWindowAppearing');

///```c
/// byte igIsWindowCollapsed(
/// );
///```
int igIsWindowCollapsed() => _igIsWindowCollapsed();

late final _igIsWindowCollapsed = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsWindowCollapsed');

///```c
/// byte igIsWindowDocked(
/// );
///```
int igIsWindowDocked() => _igIsWindowDocked();

late final _igIsWindowDocked = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igIsWindowDocked');

///```c
/// byte igIsWindowFocused(
///  ImGuiFocusedFlags flags
/// );
///```
int igIsWindowFocused(int flags) => _igIsWindowFocused(flags);

late final _igIsWindowFocused = _cimgui.lookupFunction<
    Uint8 Function(Uint32 flags), int Function(int flags)>('igIsWindowFocused');

///```c
/// byte igIsWindowHovered(
///  ImGuiHoveredFlags flags
/// );
///```
int igIsWindowHovered(int flags) => _igIsWindowHovered(flags);

late final _igIsWindowHovered = _cimgui.lookupFunction<
    Uint8 Function(Uint32 flags), int Function(int flags)>('igIsWindowHovered');

///```c
/// void igLabelText(
///  byte* label ,
///  byte* fmt ,
///  ... ...
/// );
///```
void igLabelText(Pointer<Uint8> label, Pointer<Uint8> fmt) =>
    _igLabelText(label, fmt);

late final _igLabelText = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> label, Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> label, Pointer<Uint8> fmt)>('igLabelText');

///```c
/// byte igListBox_Str_arr(
///  byte* label ,
///  int* current_item ,
///  byte** items ,
///  int items_count ,
///  int height_in_items
/// );
///```
int igListBox_Str_arr(Pointer<Uint8> label, Pointer<Int32> current_item,
        Pointer<Pointer<Uint8>> items, int items_count, int height_in_items) =>
    _igListBox_Str_arr(
        label, current_item, items, items_count, height_in_items);

late final _igListBox_Str_arr = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Pointer<Uint8>> items,
        Int32 items_count,
        Int32 height_in_items),
    int Function(
        Pointer<Uint8> label,
        Pointer<Int32> current_item,
        Pointer<Pointer<Uint8>> items,
        int items_count,
        int height_in_items)>('igListBox_Str_arr');

///```c
/// void igLoadIniSettingsFromDisk(
///  byte* ini_filename
/// );
///```
void igLoadIniSettingsFromDisk(Pointer<Uint8> ini_filename) =>
    _igLoadIniSettingsFromDisk(ini_filename);

late final _igLoadIniSettingsFromDisk = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> ini_filename),
    void Function(Pointer<Uint8> ini_filename)>('igLoadIniSettingsFromDisk');

///```c
/// void igLoadIniSettingsFromMemory(
///  byte* ini_data ,
///  uint ini_size
/// );
///```
void igLoadIniSettingsFromMemory(Pointer<Uint8> ini_data, int ini_size) =>
    _igLoadIniSettingsFromMemory(ini_data, ini_size);

late final _igLoadIniSettingsFromMemory = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> ini_data, Uint32 ini_size),
    void Function(
        Pointer<Uint8> ini_data, int ini_size)>('igLoadIniSettingsFromMemory');

///```c
/// void igLogButtons(
/// );
///```
void igLogButtons() => _igLogButtons();

late final _igLogButtons =
    _cimgui.lookupFunction<Void Function(), void Function()>('igLogButtons');

///```c
/// void igLogFinish(
/// );
///```
void igLogFinish() => _igLogFinish();

late final _igLogFinish =
    _cimgui.lookupFunction<Void Function(), void Function()>('igLogFinish');

///```c
/// void igLogText(
///  byte* fmt ,
///  ... ...
/// );
///```
void igLogText(Pointer<Uint8> fmt) => _igLogText(fmt);

late final _igLogText = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> fmt)>('igLogText');

///```c
/// void igLogToClipboard(
///  int auto_open_depth
/// );
///```
void igLogToClipboard(int auto_open_depth) =>
    _igLogToClipboard(auto_open_depth);

late final _igLogToClipboard = _cimgui.lookupFunction<
    Void Function(Int32 auto_open_depth),
    void Function(int auto_open_depth)>('igLogToClipboard');

///```c
/// void igLogToFile(
///  int auto_open_depth ,
///  byte* filename
/// );
///```
void igLogToFile(int auto_open_depth, Pointer<Uint8> filename) =>
    _igLogToFile(auto_open_depth, filename);

late final _igLogToFile = _cimgui.lookupFunction<
    Void Function(Int32 auto_open_depth, Pointer<Uint8> filename),
    void Function(int auto_open_depth, Pointer<Uint8> filename)>('igLogToFile');

///```c
/// void igLogToTTY(
///  int auto_open_depth
/// );
///```
void igLogToTTY(int auto_open_depth) => _igLogToTTY(auto_open_depth);

late final _igLogToTTY = _cimgui.lookupFunction<
    Void Function(Int32 auto_open_depth),
    void Function(int auto_open_depth)>('igLogToTTY');

///```c
/// void* igMemAlloc(
///  uint size
/// );
///```
Pointer<Void> igMemAlloc(int size) => _igMemAlloc(size);

late final _igMemAlloc = _cimgui.lookupFunction<
    Pointer<Void> Function(Uint32 size),
    Pointer<Void> Function(int size)>('igMemAlloc');

///```c
/// void igMemFree(
///  void* ptr
/// );
///```
void igMemFree(Pointer<Void> ptr) => _igMemFree(ptr);

late final _igMemFree = _cimgui.lookupFunction<Void Function(Pointer<Void> ptr),
    void Function(Pointer<Void> ptr)>('igMemFree');

///```c
/// byte igMenuItem_Bool(
///  byte* label ,
///  byte* shortcut ,
///  byte selected ,
///  byte enabled
/// );
///```
int igMenuItem_Bool(Pointer<Uint8> label, Pointer<Uint8> shortcut, int selected,
        int enabled) =>
    _igMenuItem_Bool(label, shortcut, selected, enabled);

late final _igMenuItem_Bool = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Uint8> shortcut,
        Uint8 selected, Uint8 enabled),
    int Function(Pointer<Uint8> label, Pointer<Uint8> shortcut, int selected,
        int enabled)>('igMenuItem_Bool');

///```c
/// byte igMenuItem_BoolPtr(
///  byte* label ,
///  byte* shortcut ,
///  byte* p_selected ,
///  byte enabled
/// );
///```
int igMenuItem_BoolPtr(Pointer<Uint8> label, Pointer<Uint8> shortcut,
        Pointer<Uint8> p_selected, int enabled) =>
    _igMenuItem_BoolPtr(label, shortcut, p_selected, enabled);

late final _igMenuItem_BoolPtr = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Uint8> shortcut,
        Pointer<Uint8> p_selected, Uint8 enabled),
    int Function(Pointer<Uint8> label, Pointer<Uint8> shortcut,
        Pointer<Uint8> p_selected, int enabled)>('igMenuItem_BoolPtr');

///```c
/// void igNewFrame(
/// );
///```
void igNewFrame() => _igNewFrame();

late final _igNewFrame =
    _cimgui.lookupFunction<Void Function(), void Function()>('igNewFrame');

///```c
/// void igNewLine(
/// );
///```
void igNewLine() => _igNewLine();

late final _igNewLine =
    _cimgui.lookupFunction<Void Function(), void Function()>('igNewLine');

///```c
/// void igNextColumn(
/// );
///```
void igNextColumn() => _igNextColumn();

late final _igNextColumn =
    _cimgui.lookupFunction<Void Function(), void Function()>('igNextColumn');

///```c
/// void igOpenPopup_Str(
///  byte* str_id ,
///  ImGuiPopupFlags popup_flags
/// );
///```
void igOpenPopup_Str(Pointer<Uint8> str_id, int popup_flags) =>
    _igOpenPopup_Str(str_id, popup_flags);

late final _igOpenPopup_Str = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> str_id, Uint32 popup_flags),
    void Function(Pointer<Uint8> str_id, int popup_flags)>('igOpenPopup_Str');

///```c
/// void igOpenPopup_ID(
///  uint id ,
///  ImGuiPopupFlags popup_flags
/// );
///```
void igOpenPopup_ID(int id, int popup_flags) =>
    _igOpenPopup_ID(id, popup_flags);

late final _igOpenPopup_ID = _cimgui.lookupFunction<
    Void Function(Uint32 id, Uint32 popup_flags),
    void Function(int id, int popup_flags)>('igOpenPopup_ID');

///```c
/// void igOpenPopupOnItemClick(
///  byte* str_id ,
///  ImGuiPopupFlags popup_flags
/// );
///```
void igOpenPopupOnItemClick(Pointer<Uint8> str_id, int popup_flags) =>
    _igOpenPopupOnItemClick(str_id, popup_flags);

late final _igOpenPopupOnItemClick = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> str_id, Uint32 popup_flags),
    void Function(
        Pointer<Uint8> str_id, int popup_flags)>('igOpenPopupOnItemClick');

///```c
/// void igPlotHistogram_FloatPtr(
///  byte* label ,
///  float* values ,
///  int values_count ,
///  int values_offset ,
///  byte* overlay_text ,
///  float scale_min ,
///  float scale_max ,
///  ImVec2 graph_size ,
///  int stride
/// );
///```
void igPlotHistogram_FloatPtr(
        Pointer<Uint8> label,
        Pointer<Float> values,
        int values_count,
        int values_offset,
        Pointer<Uint8> overlay_text,
        double scale_min,
        double scale_max,
        ImVec2 graph_size,
        int stride) =>
    _igPlotHistogram_FloatPtr(label, values, values_count, values_offset,
        overlay_text, scale_min, scale_max, graph_size, stride);

late final _igPlotHistogram_FloatPtr = _cimgui.lookupFunction<
    Void Function(
        Pointer<Uint8> label,
        Pointer<Float> values,
        Int32 values_count,
        Int32 values_offset,
        Pointer<Uint8> overlay_text,
        Float scale_min,
        Float scale_max,
        ImVec2 graph_size,
        Int32 stride),
    void Function(
        Pointer<Uint8> label,
        Pointer<Float> values,
        int values_count,
        int values_offset,
        Pointer<Uint8> overlay_text,
        double scale_min,
        double scale_max,
        ImVec2 graph_size,
        int stride)>('igPlotHistogram_FloatPtr');

///```c
/// void igPlotLines_FloatPtr(
///  byte* label ,
///  float* values ,
///  int values_count ,
///  int values_offset ,
///  byte* overlay_text ,
///  float scale_min ,
///  float scale_max ,
///  ImVec2 graph_size ,
///  int stride
/// );
///```
void igPlotLines_FloatPtr(
        Pointer<Uint8> label,
        Pointer<Float> values,
        int values_count,
        int values_offset,
        Pointer<Uint8> overlay_text,
        double scale_min,
        double scale_max,
        ImVec2 graph_size,
        int stride) =>
    _igPlotLines_FloatPtr(label, values, values_count, values_offset,
        overlay_text, scale_min, scale_max, graph_size, stride);

late final _igPlotLines_FloatPtr = _cimgui.lookupFunction<
    Void Function(
        Pointer<Uint8> label,
        Pointer<Float> values,
        Int32 values_count,
        Int32 values_offset,
        Pointer<Uint8> overlay_text,
        Float scale_min,
        Float scale_max,
        ImVec2 graph_size,
        Int32 stride),
    void Function(
        Pointer<Uint8> label,
        Pointer<Float> values,
        int values_count,
        int values_offset,
        Pointer<Uint8> overlay_text,
        double scale_min,
        double scale_max,
        ImVec2 graph_size,
        int stride)>('igPlotLines_FloatPtr');

///```c
/// void igPopButtonRepeat(
/// );
///```
void igPopButtonRepeat() => _igPopButtonRepeat();

late final _igPopButtonRepeat = _cimgui
    .lookupFunction<Void Function(), void Function()>('igPopButtonRepeat');

///```c
/// void igPopClipRect(
/// );
///```
void igPopClipRect() => _igPopClipRect();

late final _igPopClipRect =
    _cimgui.lookupFunction<Void Function(), void Function()>('igPopClipRect');

///```c
/// void igPopFont(
/// );
///```
void igPopFont() => _igPopFont();

late final _igPopFont =
    _cimgui.lookupFunction<Void Function(), void Function()>('igPopFont');

///```c
/// void igPopID(
/// );
///```
void igPopID() => _igPopID();

late final _igPopID =
    _cimgui.lookupFunction<Void Function(), void Function()>('igPopID');

///```c
/// void igPopItemWidth(
/// );
///```
void igPopItemWidth() => _igPopItemWidth();

late final _igPopItemWidth =
    _cimgui.lookupFunction<Void Function(), void Function()>('igPopItemWidth');

///```c
/// void igPopStyleColor(
///  int count
/// );
///```
void igPopStyleColor(int count) => _igPopStyleColor(count);

late final _igPopStyleColor = _cimgui.lookupFunction<Void Function(Int32 count),
    void Function(int count)>('igPopStyleColor');

///```c
/// void igPopStyleVar(
///  int count
/// );
///```
void igPopStyleVar(int count) => _igPopStyleVar(count);

late final _igPopStyleVar = _cimgui.lookupFunction<Void Function(Int32 count),
    void Function(int count)>('igPopStyleVar');

///```c
/// void igPopTabStop(
/// );
///```
void igPopTabStop() => _igPopTabStop();

late final _igPopTabStop =
    _cimgui.lookupFunction<Void Function(), void Function()>('igPopTabStop');

///```c
/// void igPopTextWrapPos(
/// );
///```
void igPopTextWrapPos() => _igPopTextWrapPos();

late final _igPopTextWrapPos = _cimgui
    .lookupFunction<Void Function(), void Function()>('igPopTextWrapPos');

///```c
/// void igProgressBar(
///  float fraction ,
///  ImVec2 size_arg ,
///  byte* overlay
/// );
///```
void igProgressBar(double fraction, ImVec2 size_arg, Pointer<Uint8> overlay) =>
    _igProgressBar(fraction, size_arg, overlay);

late final _igProgressBar = _cimgui.lookupFunction<
    Void Function(Float fraction, ImVec2 size_arg, Pointer<Uint8> overlay),
    void Function(double fraction, ImVec2 size_arg,
        Pointer<Uint8> overlay)>('igProgressBar');

///```c
/// void igPushButtonRepeat(
///  byte repeat
/// );
///```
void igPushButtonRepeat(int repeat) => _igPushButtonRepeat(repeat);

late final _igPushButtonRepeat = _cimgui.lookupFunction<
    Void Function(Uint8 repeat),
    void Function(int repeat)>('igPushButtonRepeat');

///```c
/// void igPushClipRect(
///  ImVec2 clip_rect_min ,
///  ImVec2 clip_rect_max ,
///  byte intersect_with_current_clip_rect
/// );
///```
void igPushClipRect(ImVec2 clip_rect_min, ImVec2 clip_rect_max,
        int intersect_with_current_clip_rect) =>
    _igPushClipRect(
        clip_rect_min, clip_rect_max, intersect_with_current_clip_rect);

late final _igPushClipRect = _cimgui.lookupFunction<
    Void Function(ImVec2 clip_rect_min, ImVec2 clip_rect_max,
        Uint8 intersect_with_current_clip_rect),
    void Function(ImVec2 clip_rect_min, ImVec2 clip_rect_max,
        int intersect_with_current_clip_rect)>('igPushClipRect');

///```c
/// void igPushFont(
///  ImFont* font
/// );
///```
void igPushFont(Pointer<ImFont> font) => _igPushFont(font);

late final _igPushFont = _cimgui.lookupFunction<
    Void Function(Pointer<ImFont> font),
    void Function(Pointer<ImFont> font)>('igPushFont');

///```c
/// void igPushID_Str(
///  byte* str_id
/// );
///```
void igPushID_Str(Pointer<Uint8> str_id) => _igPushID_Str(str_id);

late final _igPushID_Str = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> str_id),
    void Function(Pointer<Uint8> str_id)>('igPushID_Str');

///```c
/// void igPushID_StrStr(
///  byte* str_id_begin ,
///  byte* str_id_end
/// );
///```
void igPushID_StrStr(Pointer<Uint8> str_id_begin, Pointer<Uint8> str_id_end) =>
    _igPushID_StrStr(str_id_begin, str_id_end);

late final _igPushID_StrStr = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> str_id_begin, Pointer<Uint8> str_id_end),
    void Function(Pointer<Uint8> str_id_begin,
        Pointer<Uint8> str_id_end)>('igPushID_StrStr');

///```c
/// void igPushID_Ptr(
///  void* ptr_id
/// );
///```
void igPushID_Ptr(Pointer<Void> ptr_id) => _igPushID_Ptr(ptr_id);

late final _igPushID_Ptr = _cimgui.lookupFunction<
    Void Function(Pointer<Void> ptr_id),
    void Function(Pointer<Void> ptr_id)>('igPushID_Ptr');

///```c
/// void igPushID_Int(
///  int int_id
/// );
///```
void igPushID_Int(int int_id) => _igPushID_Int(int_id);

late final _igPushID_Int = _cimgui.lookupFunction<Void Function(Int32 int_id),
    void Function(int int_id)>('igPushID_Int');

///```c
/// void igPushItemWidth(
///  float item_width
/// );
///```
void igPushItemWidth(double item_width) => _igPushItemWidth(item_width);

late final _igPushItemWidth = _cimgui.lookupFunction<
    Void Function(Float item_width),
    void Function(double item_width)>('igPushItemWidth');

///```c
/// void igPushStyleColor_U32(
///  ImGuiCol idx ,
///  uint col
/// );
///```
void igPushStyleColor_U32(int idx, int col) => _igPushStyleColor_U32(idx, col);

late final _igPushStyleColor_U32 = _cimgui.lookupFunction<
    Void Function(Uint32 idx, Uint32 col),
    void Function(int idx, int col)>('igPushStyleColor_U32');

///```c
/// void igPushStyleColor_Vec4(
///  ImGuiCol idx ,
///  ImVec4 col
/// );
///```
void igPushStyleColor_Vec4(int idx, ImVec4 col) =>
    _igPushStyleColor_Vec4(idx, col);

late final _igPushStyleColor_Vec4 = _cimgui.lookupFunction<
    Void Function(Uint32 idx, ImVec4 col),
    void Function(int idx, ImVec4 col)>('igPushStyleColor_Vec4');

///```c
/// void igPushStyleVar_Float(
///  ImGuiStyleVar idx ,
///  float val
/// );
///```
void igPushStyleVar_Float(int idx, double val) =>
    _igPushStyleVar_Float(idx, val);

late final _igPushStyleVar_Float = _cimgui.lookupFunction<
    Void Function(Uint32 idx, Float val),
    void Function(int idx, double val)>('igPushStyleVar_Float');

///```c
/// void igPushStyleVar_Vec2(
///  ImGuiStyleVar idx ,
///  ImVec2 val
/// );
///```
void igPushStyleVar_Vec2(int idx, ImVec2 val) => _igPushStyleVar_Vec2(idx, val);

late final _igPushStyleVar_Vec2 = _cimgui.lookupFunction<
    Void Function(Uint32 idx, ImVec2 val),
    void Function(int idx, ImVec2 val)>('igPushStyleVar_Vec2');

///```c
/// void igPushTabStop(
///  byte tab_stop
/// );
///```
void igPushTabStop(int tab_stop) => _igPushTabStop(tab_stop);

late final _igPushTabStop = _cimgui.lookupFunction<
    Void Function(Uint8 tab_stop),
    void Function(int tab_stop)>('igPushTabStop');

///```c
/// void igPushTextWrapPos(
///  float wrap_local_pos_x
/// );
///```
void igPushTextWrapPos(double wrap_local_pos_x) =>
    _igPushTextWrapPos(wrap_local_pos_x);

late final _igPushTextWrapPos = _cimgui.lookupFunction<
    Void Function(Float wrap_local_pos_x),
    void Function(double wrap_local_pos_x)>('igPushTextWrapPos');

///```c
/// byte igRadioButton_Bool(
///  byte* label ,
///  byte active
/// );
///```
int igRadioButton_Bool(Pointer<Uint8> label, int active) =>
    _igRadioButton_Bool(label, active);

late final _igRadioButton_Bool = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Uint8 active),
    int Function(Pointer<Uint8> label, int active)>('igRadioButton_Bool');

///```c
/// byte igRadioButton_IntPtr(
///  byte* label ,
///  int* v ,
///  int v_button
/// );
///```
int igRadioButton_IntPtr(
        Pointer<Uint8> label, Pointer<Int32> v, int v_button) =>
    _igRadioButton_IntPtr(label, v, v_button);

late final _igRadioButton_IntPtr = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Int32 v_button),
    int Function(Pointer<Uint8> label, Pointer<Int32> v,
        int v_button)>('igRadioButton_IntPtr');

///```c
/// void igRender(
/// );
///```
void igRender() => _igRender();

late final _igRender =
    _cimgui.lookupFunction<Void Function(), void Function()>('igRender');

///```c
/// void igRenderPlatformWindowsDefault(
///  void* platform_render_arg ,
///  void* renderer_render_arg
/// );
///```
void igRenderPlatformWindowsDefault(
        Pointer<Void> platform_render_arg, Pointer<Void> renderer_render_arg) =>
    _igRenderPlatformWindowsDefault(platform_render_arg, renderer_render_arg);

late final _igRenderPlatformWindowsDefault = _cimgui.lookupFunction<
    Void Function(
        Pointer<Void> platform_render_arg, Pointer<Void> renderer_render_arg),
    void Function(Pointer<Void> platform_render_arg,
        Pointer<Void> renderer_render_arg)>('igRenderPlatformWindowsDefault');

///```c
/// void igResetMouseDragDelta(
///  ImGuiMouseButton button
/// );
///```
void igResetMouseDragDelta(int button) => _igResetMouseDragDelta(button);

late final _igResetMouseDragDelta = _cimgui.lookupFunction<
    Void Function(Uint32 button),
    void Function(int button)>('igResetMouseDragDelta');

///```c
/// void igSameLine(
///  float offset_from_start_x ,
///  float spacing
/// );
///```
void igSameLine(double offset_from_start_x, double spacing) =>
    _igSameLine(offset_from_start_x, spacing);

late final _igSameLine = _cimgui.lookupFunction<
    Void Function(Float offset_from_start_x, Float spacing),
    void Function(double offset_from_start_x, double spacing)>('igSameLine');

///```c
/// void igSaveIniSettingsToDisk(
///  byte* ini_filename
/// );
///```
void igSaveIniSettingsToDisk(Pointer<Uint8> ini_filename) =>
    _igSaveIniSettingsToDisk(ini_filename);

late final _igSaveIniSettingsToDisk = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> ini_filename),
    void Function(Pointer<Uint8> ini_filename)>('igSaveIniSettingsToDisk');

///```c
/// byte* igSaveIniSettingsToMemory(
///  uint* out_ini_size
/// );
///```
Pointer<Uint8> igSaveIniSettingsToMemory(Pointer<Uint32> out_ini_size) =>
    _igSaveIniSettingsToMemory(out_ini_size);

late final _igSaveIniSettingsToMemory = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Pointer<Uint32> out_ini_size),
    Pointer<Uint8> Function(
        Pointer<Uint32> out_ini_size)>('igSaveIniSettingsToMemory');

///```c
/// byte igSelectable_Bool(
///  byte* label ,
///  byte selected ,
///  ImGuiSelectableFlags flags ,
///  ImVec2 size
/// );
///```
int igSelectable_Bool(
        Pointer<Uint8> label, int selected, int flags, ImVec2 size) =>
    _igSelectable_Bool(label, selected, flags, size);

late final _igSelectable_Bool = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label, Uint8 selected, Uint32 flags, ImVec2 size),
    int Function(Pointer<Uint8> label, int selected, int flags,
        ImVec2 size)>('igSelectable_Bool');

///```c
/// byte igSelectable_BoolPtr(
///  byte* label ,
///  byte* p_selected ,
///  ImGuiSelectableFlags flags ,
///  ImVec2 size
/// );
///```
int igSelectable_BoolPtr(Pointer<Uint8> label, Pointer<Uint8> p_selected,
        int flags, ImVec2 size) =>
    _igSelectable_BoolPtr(label, p_selected, flags, size);

late final _igSelectable_BoolPtr = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Uint8> p_selected,
        Uint32 flags, ImVec2 size),
    int Function(Pointer<Uint8> label, Pointer<Uint8> p_selected, int flags,
        ImVec2 size)>('igSelectable_BoolPtr');

///```c
/// void igSeparator(
/// );
///```
void igSeparator() => _igSeparator();

late final _igSeparator =
    _cimgui.lookupFunction<Void Function(), void Function()>('igSeparator');

///```c
/// void igSeparatorText(
///  byte* label
/// );
///```
void igSeparatorText(Pointer<Uint8> label) => _igSeparatorText(label);

late final _igSeparatorText = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> label),
    void Function(Pointer<Uint8> label)>('igSeparatorText');

///```c
/// void igSetAllocatorFunctions(
///  IntPtr alloc_func ,
///  IntPtr free_func ,
///  void* user_data
/// );
///```
void igSetAllocatorFunctions(
        int alloc_func, int free_func, Pointer<Void> user_data) =>
    _igSetAllocatorFunctions(alloc_func, free_func, user_data);

late final _igSetAllocatorFunctions = _cimgui.lookupFunction<
    Void Function(IntPtr alloc_func, IntPtr free_func, Pointer<Void> user_data),
    void Function(int alloc_func, int free_func,
        Pointer<Void> user_data)>('igSetAllocatorFunctions');

///```c
/// void igSetClipboardText(
///  byte* text
/// );
///```
void igSetClipboardText(Pointer<Uint8> text) => _igSetClipboardText(text);

late final _igSetClipboardText = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> text),
    void Function(Pointer<Uint8> text)>('igSetClipboardText');

///```c
/// void igSetColorEditOptions(
///  ImGuiColorEditFlags flags
/// );
///```
void igSetColorEditOptions(int flags) => _igSetColorEditOptions(flags);

late final _igSetColorEditOptions = _cimgui.lookupFunction<
    Void Function(Uint32 flags),
    void Function(int flags)>('igSetColorEditOptions');

///```c
/// void igSetColumnOffset(
///  int column_index ,
///  float offset_x
/// );
///```
void igSetColumnOffset(int column_index, double offset_x) =>
    _igSetColumnOffset(column_index, offset_x);

late final _igSetColumnOffset = _cimgui.lookupFunction<
    Void Function(Int32 column_index, Float offset_x),
    void Function(int column_index, double offset_x)>('igSetColumnOffset');

///```c
/// void igSetColumnWidth(
///  int column_index ,
///  float width
/// );
///```
void igSetColumnWidth(int column_index, double width) =>
    _igSetColumnWidth(column_index, width);

late final _igSetColumnWidth = _cimgui.lookupFunction<
    Void Function(Int32 column_index, Float width),
    void Function(int column_index, double width)>('igSetColumnWidth');

///```c
/// void igSetCurrentContext(
///  IntPtr ctx
/// );
///```
void igSetCurrentContext(int ctx) => _igSetCurrentContext(ctx);

late final _igSetCurrentContext =
    _cimgui.lookupFunction<Void Function(IntPtr ctx), void Function(int ctx)>(
        'igSetCurrentContext');

///```c
/// void igSetCursorPos(
///  ImVec2 local_pos
/// );
///```
void igSetCursorPos(ImVec2 local_pos) => _igSetCursorPos(local_pos);

late final _igSetCursorPos = _cimgui.lookupFunction<
    Void Function(ImVec2 local_pos),
    void Function(ImVec2 local_pos)>('igSetCursorPos');

///```c
/// void igSetCursorPosX(
///  float local_x
/// );
///```
void igSetCursorPosX(double local_x) => _igSetCursorPosX(local_x);

late final _igSetCursorPosX = _cimgui.lookupFunction<
    Void Function(Float local_x),
    void Function(double local_x)>('igSetCursorPosX');

///```c
/// void igSetCursorPosY(
///  float local_y
/// );
///```
void igSetCursorPosY(double local_y) => _igSetCursorPosY(local_y);

late final _igSetCursorPosY = _cimgui.lookupFunction<
    Void Function(Float local_y),
    void Function(double local_y)>('igSetCursorPosY');

///```c
/// void igSetCursorScreenPos(
///  ImVec2 pos
/// );
///```
void igSetCursorScreenPos(ImVec2 pos) => _igSetCursorScreenPos(pos);

late final _igSetCursorScreenPos = _cimgui.lookupFunction<
    Void Function(ImVec2 pos),
    void Function(ImVec2 pos)>('igSetCursorScreenPos');

///```c
/// byte igSetDragDropPayload(
///  byte* type ,
///  void* data ,
///  uint sz ,
///  ImGuiCond cond
/// );
///```
int igSetDragDropPayload(
        Pointer<Uint8> type, Pointer<Void> data, int sz, int cond) =>
    _igSetDragDropPayload(type, data, sz, cond);

late final _igSetDragDropPayload = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> type, Pointer<Void> data, Uint32 sz, Uint32 cond),
    int Function(Pointer<Uint8> type, Pointer<Void> data, int sz,
        int cond)>('igSetDragDropPayload');

///```c
/// void igSetItemDefaultFocus(
/// );
///```
void igSetItemDefaultFocus() => _igSetItemDefaultFocus();

late final _igSetItemDefaultFocus = _cimgui
    .lookupFunction<Void Function(), void Function()>('igSetItemDefaultFocus');

///```c
/// void igSetItemTooltip(
///  byte* fmt ,
///  ... ...
/// );
///```
void igSetItemTooltip(Pointer<Uint8> fmt) => _igSetItemTooltip(fmt);

late final _igSetItemTooltip = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> fmt)>('igSetItemTooltip');

///```c
/// void igSetKeyboardFocusHere(
///  int offset
/// );
///```
void igSetKeyboardFocusHere(int offset) => _igSetKeyboardFocusHere(offset);

late final _igSetKeyboardFocusHere = _cimgui.lookupFunction<
    Void Function(Int32 offset),
    void Function(int offset)>('igSetKeyboardFocusHere');

///```c
/// void igSetMouseCursor(
///  ImGuiMouseCursor cursor_type
/// );
///```
void igSetMouseCursor(int cursor_type) => _igSetMouseCursor(cursor_type);

late final _igSetMouseCursor = _cimgui.lookupFunction<
    Void Function(Uint32 cursor_type),
    void Function(int cursor_type)>('igSetMouseCursor');

///```c
/// void igSetNextFrameWantCaptureKeyboard(
///  byte want_capture_keyboard
/// );
///```
void igSetNextFrameWantCaptureKeyboard(int want_capture_keyboard) =>
    _igSetNextFrameWantCaptureKeyboard(want_capture_keyboard);

late final _igSetNextFrameWantCaptureKeyboard = _cimgui.lookupFunction<
    Void Function(Uint8 want_capture_keyboard),
    void Function(
        int want_capture_keyboard)>('igSetNextFrameWantCaptureKeyboard');

///```c
/// void igSetNextFrameWantCaptureMouse(
///  byte want_capture_mouse
/// );
///```
void igSetNextFrameWantCaptureMouse(int want_capture_mouse) =>
    _igSetNextFrameWantCaptureMouse(want_capture_mouse);

late final _igSetNextFrameWantCaptureMouse = _cimgui.lookupFunction<
    Void Function(Uint8 want_capture_mouse),
    void Function(int want_capture_mouse)>('igSetNextFrameWantCaptureMouse');

///```c
/// void igSetNextItemAllowOverlap(
/// );
///```
void igSetNextItemAllowOverlap() => _igSetNextItemAllowOverlap();

late final _igSetNextItemAllowOverlap =
    _cimgui.lookupFunction<Void Function(), void Function()>(
        'igSetNextItemAllowOverlap');

///```c
/// void igSetNextItemOpen(
///  byte is_open ,
///  ImGuiCond cond
/// );
///```
void igSetNextItemOpen(int is_open, int cond) =>
    _igSetNextItemOpen(is_open, cond);

late final _igSetNextItemOpen = _cimgui.lookupFunction<
    Void Function(Uint8 is_open, Uint32 cond),
    void Function(int is_open, int cond)>('igSetNextItemOpen');

///```c
/// void igSetNextItemWidth(
///  float item_width
/// );
///```
void igSetNextItemWidth(double item_width) => _igSetNextItemWidth(item_width);

late final _igSetNextItemWidth = _cimgui.lookupFunction<
    Void Function(Float item_width),
    void Function(double item_width)>('igSetNextItemWidth');

///```c
/// void igSetNextWindowBgAlpha(
///  float alpha
/// );
///```
void igSetNextWindowBgAlpha(double alpha) => _igSetNextWindowBgAlpha(alpha);

late final _igSetNextWindowBgAlpha = _cimgui.lookupFunction<
    Void Function(Float alpha),
    void Function(double alpha)>('igSetNextWindowBgAlpha');

///```c
/// void igSetNextWindowClass(
///  ImGuiWindowClass* window_class
/// );
///```
void igSetNextWindowClass(Pointer<ImGuiWindowClass> window_class) =>
    _igSetNextWindowClass(window_class);

late final _igSetNextWindowClass = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiWindowClass> window_class),
    void Function(
        Pointer<ImGuiWindowClass> window_class)>('igSetNextWindowClass');

///```c
/// void igSetNextWindowCollapsed(
///  byte collapsed ,
///  ImGuiCond cond
/// );
///```
void igSetNextWindowCollapsed(int collapsed, int cond) =>
    _igSetNextWindowCollapsed(collapsed, cond);

late final _igSetNextWindowCollapsed = _cimgui.lookupFunction<
    Void Function(Uint8 collapsed, Uint32 cond),
    void Function(int collapsed, int cond)>('igSetNextWindowCollapsed');

///```c
/// void igSetNextWindowContentSize(
///  ImVec2 size
/// );
///```
void igSetNextWindowContentSize(ImVec2 size) =>
    _igSetNextWindowContentSize(size);

late final _igSetNextWindowContentSize = _cimgui.lookupFunction<
    Void Function(ImVec2 size),
    void Function(ImVec2 size)>('igSetNextWindowContentSize');

///```c
/// void igSetNextWindowDockID(
///  uint dock_id ,
///  ImGuiCond cond
/// );
///```
void igSetNextWindowDockID(int dock_id, int cond) =>
    _igSetNextWindowDockID(dock_id, cond);

late final _igSetNextWindowDockID = _cimgui.lookupFunction<
    Void Function(Uint32 dock_id, Uint32 cond),
    void Function(int dock_id, int cond)>('igSetNextWindowDockID');

///```c
/// void igSetNextWindowFocus(
/// );
///```
void igSetNextWindowFocus() => _igSetNextWindowFocus();

late final _igSetNextWindowFocus = _cimgui
    .lookupFunction<Void Function(), void Function()>('igSetNextWindowFocus');

///```c
/// void igSetNextWindowPos(
///  ImVec2 pos ,
///  ImGuiCond cond ,
///  ImVec2 pivot
/// );
///```
void igSetNextWindowPos(ImVec2 pos, int cond, ImVec2 pivot) =>
    _igSetNextWindowPos(pos, cond, pivot);

late final _igSetNextWindowPos = _cimgui.lookupFunction<
    Void Function(ImVec2 pos, Uint32 cond, ImVec2 pivot),
    void Function(ImVec2 pos, int cond, ImVec2 pivot)>('igSetNextWindowPos');

///```c
/// void igSetNextWindowScroll(
///  ImVec2 scroll
/// );
///```
void igSetNextWindowScroll(ImVec2 scroll) => _igSetNextWindowScroll(scroll);

late final _igSetNextWindowScroll = _cimgui.lookupFunction<
    Void Function(ImVec2 scroll),
    void Function(ImVec2 scroll)>('igSetNextWindowScroll');

///```c
/// void igSetNextWindowSize(
///  ImVec2 size ,
///  ImGuiCond cond
/// );
///```
void igSetNextWindowSize(ImVec2 size, int cond) =>
    _igSetNextWindowSize(size, cond);

late final _igSetNextWindowSize = _cimgui.lookupFunction<
    Void Function(ImVec2 size, Uint32 cond),
    void Function(ImVec2 size, int cond)>('igSetNextWindowSize');

///```c
/// void igSetNextWindowSizeConstraints(
///  ImVec2 size_min ,
///  ImVec2 size_max ,
///  ImGuiSizeCallback custom_callback ,
///  void* custom_callback_data
/// );
///```
void igSetNextWindowSizeConstraints(ImVec2 size_min, ImVec2 size_max,
        Pointer custom_callback, Pointer<Void> custom_callback_data) =>
    _igSetNextWindowSizeConstraints(
        size_min, size_max, custom_callback, custom_callback_data);

late final _igSetNextWindowSizeConstraints = _cimgui.lookupFunction<
    Void Function(ImVec2 size_min, ImVec2 size_max, Pointer custom_callback,
        Pointer<Void> custom_callback_data),
    void Function(ImVec2 size_min, ImVec2 size_max, Pointer custom_callback,
        Pointer<Void> custom_callback_data)>('igSetNextWindowSizeConstraints');

///```c
/// void igSetNextWindowViewport(
///  uint viewport_id
/// );
///```
void igSetNextWindowViewport(int viewport_id) =>
    _igSetNextWindowViewport(viewport_id);

late final _igSetNextWindowViewport = _cimgui.lookupFunction<
    Void Function(Uint32 viewport_id),
    void Function(int viewport_id)>('igSetNextWindowViewport');

///```c
/// void igSetScrollFromPosX_Float(
///  float local_x ,
///  float center_x_ratio
/// );
///```
void igSetScrollFromPosX_Float(double local_x, double center_x_ratio) =>
    _igSetScrollFromPosX_Float(local_x, center_x_ratio);

late final _igSetScrollFromPosX_Float = _cimgui.lookupFunction<
    Void Function(Float local_x, Float center_x_ratio),
    void Function(
        double local_x, double center_x_ratio)>('igSetScrollFromPosX_Float');

///```c
/// void igSetScrollFromPosY_Float(
///  float local_y ,
///  float center_y_ratio
/// );
///```
void igSetScrollFromPosY_Float(double local_y, double center_y_ratio) =>
    _igSetScrollFromPosY_Float(local_y, center_y_ratio);

late final _igSetScrollFromPosY_Float = _cimgui.lookupFunction<
    Void Function(Float local_y, Float center_y_ratio),
    void Function(
        double local_y, double center_y_ratio)>('igSetScrollFromPosY_Float');

///```c
/// void igSetScrollHereX(
///  float center_x_ratio
/// );
///```
void igSetScrollHereX(double center_x_ratio) =>
    _igSetScrollHereX(center_x_ratio);

late final _igSetScrollHereX = _cimgui.lookupFunction<
    Void Function(Float center_x_ratio),
    void Function(double center_x_ratio)>('igSetScrollHereX');

///```c
/// void igSetScrollHereY(
///  float center_y_ratio
/// );
///```
void igSetScrollHereY(double center_y_ratio) =>
    _igSetScrollHereY(center_y_ratio);

late final _igSetScrollHereY = _cimgui.lookupFunction<
    Void Function(Float center_y_ratio),
    void Function(double center_y_ratio)>('igSetScrollHereY');

///```c
/// void igSetScrollX_Float(
///  float scroll_x
/// );
///```
void igSetScrollX_Float(double scroll_x) => _igSetScrollX_Float(scroll_x);

late final _igSetScrollX_Float = _cimgui.lookupFunction<
    Void Function(Float scroll_x),
    void Function(double scroll_x)>('igSetScrollX_Float');

///```c
/// void igSetScrollY_Float(
///  float scroll_y
/// );
///```
void igSetScrollY_Float(double scroll_y) => _igSetScrollY_Float(scroll_y);

late final _igSetScrollY_Float = _cimgui.lookupFunction<
    Void Function(Float scroll_y),
    void Function(double scroll_y)>('igSetScrollY_Float');

///```c
/// void igSetStateStorage(
///  ImGuiStorage* storage
/// );
///```
void igSetStateStorage(Pointer<ImGuiStorage> storage) =>
    _igSetStateStorage(storage);

late final _igSetStateStorage = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> storage),
    void Function(Pointer<ImGuiStorage> storage)>('igSetStateStorage');

///```c
/// void igSetTabItemClosed(
///  byte* tab_or_docked_window_label
/// );
///```
void igSetTabItemClosed(Pointer<Uint8> tab_or_docked_window_label) =>
    _igSetTabItemClosed(tab_or_docked_window_label);

late final _igSetTabItemClosed = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> tab_or_docked_window_label),
    void Function(
        Pointer<Uint8> tab_or_docked_window_label)>('igSetTabItemClosed');

///```c
/// void igSetTooltip(
///  byte* fmt ,
///  ... ...
/// );
///```
void igSetTooltip(Pointer<Uint8> fmt) => _igSetTooltip(fmt);

late final _igSetTooltip = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> fmt)>('igSetTooltip');

///```c
/// void igSetWindowCollapsed_Bool(
///  byte collapsed ,
///  ImGuiCond cond
/// );
///```
void igSetWindowCollapsed_Bool(int collapsed, int cond) =>
    _igSetWindowCollapsed_Bool(collapsed, cond);

late final _igSetWindowCollapsed_Bool = _cimgui.lookupFunction<
    Void Function(Uint8 collapsed, Uint32 cond),
    void Function(int collapsed, int cond)>('igSetWindowCollapsed_Bool');

///```c
/// void igSetWindowCollapsed_Str(
///  byte* name ,
///  byte collapsed ,
///  ImGuiCond cond
/// );
///```
void igSetWindowCollapsed_Str(Pointer<Uint8> name, int collapsed, int cond) =>
    _igSetWindowCollapsed_Str(name, collapsed, cond);

late final _igSetWindowCollapsed_Str = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> name, Uint8 collapsed, Uint32 cond),
    void Function(Pointer<Uint8> name, int collapsed,
        int cond)>('igSetWindowCollapsed_Str');

///```c
/// void igSetWindowFocus_Nil(
/// );
///```
void igSetWindowFocus_Nil() => _igSetWindowFocus_Nil();

late final _igSetWindowFocus_Nil = _cimgui
    .lookupFunction<Void Function(), void Function()>('igSetWindowFocus_Nil');

///```c
/// void igSetWindowFocus_Str(
///  byte* name
/// );
///```
void igSetWindowFocus_Str(Pointer<Uint8> name) => _igSetWindowFocus_Str(name);

late final _igSetWindowFocus_Str = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> name),
    void Function(Pointer<Uint8> name)>('igSetWindowFocus_Str');

///```c
/// void igSetWindowFontScale(
///  float scale
/// );
///```
void igSetWindowFontScale(double scale) => _igSetWindowFontScale(scale);

late final _igSetWindowFontScale = _cimgui.lookupFunction<
    Void Function(Float scale),
    void Function(double scale)>('igSetWindowFontScale');

///```c
/// void igSetWindowPos_Vec2(
///  ImVec2 pos ,
///  ImGuiCond cond
/// );
///```
void igSetWindowPos_Vec2(ImVec2 pos, int cond) =>
    _igSetWindowPos_Vec2(pos, cond);

late final _igSetWindowPos_Vec2 = _cimgui.lookupFunction<
    Void Function(ImVec2 pos, Uint32 cond),
    void Function(ImVec2 pos, int cond)>('igSetWindowPos_Vec2');

///```c
/// void igSetWindowPos_Str(
///  byte* name ,
///  ImVec2 pos ,
///  ImGuiCond cond
/// );
///```
void igSetWindowPos_Str(Pointer<Uint8> name, ImVec2 pos, int cond) =>
    _igSetWindowPos_Str(name, pos, cond);

late final _igSetWindowPos_Str = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> name, ImVec2 pos, Uint32 cond),
    void Function(
        Pointer<Uint8> name, ImVec2 pos, int cond)>('igSetWindowPos_Str');

///```c
/// void igSetWindowSize_Vec2(
///  ImVec2 size ,
///  ImGuiCond cond
/// );
///```
void igSetWindowSize_Vec2(ImVec2 size, int cond) =>
    _igSetWindowSize_Vec2(size, cond);

late final _igSetWindowSize_Vec2 = _cimgui.lookupFunction<
    Void Function(ImVec2 size, Uint32 cond),
    void Function(ImVec2 size, int cond)>('igSetWindowSize_Vec2');

///```c
/// void igSetWindowSize_Str(
///  byte* name ,
///  ImVec2 size ,
///  ImGuiCond cond
/// );
///```
void igSetWindowSize_Str(Pointer<Uint8> name, ImVec2 size, int cond) =>
    _igSetWindowSize_Str(name, size, cond);

late final _igSetWindowSize_Str = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> name, ImVec2 size, Uint32 cond),
    void Function(
        Pointer<Uint8> name, ImVec2 size, int cond)>('igSetWindowSize_Str');

///```c
/// void igShowAboutWindow(
///  byte* p_open
/// );
///```
void igShowAboutWindow(Pointer<Uint8> p_open) => _igShowAboutWindow(p_open);

late final _igShowAboutWindow = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> p_open),
    void Function(Pointer<Uint8> p_open)>('igShowAboutWindow');

///```c
/// void igShowDebugLogWindow(
///  byte* p_open
/// );
///```
void igShowDebugLogWindow(Pointer<Uint8> p_open) =>
    _igShowDebugLogWindow(p_open);

late final _igShowDebugLogWindow = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> p_open),
    void Function(Pointer<Uint8> p_open)>('igShowDebugLogWindow');

///```c
/// void igShowDemoWindow(
///  byte* p_open
/// );
///```
void igShowDemoWindow(Pointer<Uint8> p_open) => _igShowDemoWindow(p_open);

late final _igShowDemoWindow = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> p_open),
    void Function(Pointer<Uint8> p_open)>('igShowDemoWindow');

///```c
/// void igShowFontSelector(
///  byte* label
/// );
///```
void igShowFontSelector(Pointer<Uint8> label) => _igShowFontSelector(label);

late final _igShowFontSelector = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> label),
    void Function(Pointer<Uint8> label)>('igShowFontSelector');

///```c
/// void igShowIDStackToolWindow(
///  byte* p_open
/// );
///```
void igShowIDStackToolWindow(Pointer<Uint8> p_open) =>
    _igShowIDStackToolWindow(p_open);

late final _igShowIDStackToolWindow = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> p_open),
    void Function(Pointer<Uint8> p_open)>('igShowIDStackToolWindow');

///```c
/// void igShowMetricsWindow(
///  byte* p_open
/// );
///```
void igShowMetricsWindow(Pointer<Uint8> p_open) => _igShowMetricsWindow(p_open);

late final _igShowMetricsWindow = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> p_open),
    void Function(Pointer<Uint8> p_open)>('igShowMetricsWindow');

///```c
/// void igShowStyleEditor(
///  ImGuiStyle* _ref
/// );
///```
void igShowStyleEditor(Pointer<ImGuiStyle> _ref) => _igShowStyleEditor(_ref);

late final _igShowStyleEditor = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStyle> _ref),
    void Function(Pointer<ImGuiStyle> _ref)>('igShowStyleEditor');

///```c
/// byte igShowStyleSelector(
///  byte* label
/// );
///```
int igShowStyleSelector(Pointer<Uint8> label) => _igShowStyleSelector(label);

late final _igShowStyleSelector = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label),
    int Function(Pointer<Uint8> label)>('igShowStyleSelector');

///```c
/// void igShowUserGuide(
/// );
///```
void igShowUserGuide() => _igShowUserGuide();

late final _igShowUserGuide =
    _cimgui.lookupFunction<Void Function(), void Function()>('igShowUserGuide');

///```c
/// byte igSliderAngle(
///  byte* label ,
///  float* v_rad ,
///  float v_degrees_min ,
///  float v_degrees_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderAngle(
        Pointer<Uint8> label,
        Pointer<Float> v_rad,
        double v_degrees_min,
        double v_degrees_max,
        Pointer<Uint8> format,
        int flags) =>
    _igSliderAngle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);

late final _igSliderAngle = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Pointer<Float> v_rad,
        Float v_degrees_min,
        Float v_degrees_max,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        Pointer<Float> v_rad,
        double v_degrees_min,
        double v_degrees_max,
        Pointer<Uint8> format,
        int flags)>('igSliderAngle');

///```c
/// byte igSliderFloat(
///  byte* label ,
///  float* v ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderFloat(Pointer<Uint8> label, Pointer<Float> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags) =>
    _igSliderFloat(label, v, v_min, v_max, format, flags);

late final _igSliderFloat = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Float> v, Float v_min,
        Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Float> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags)>('igSliderFloat');

///```c
/// byte igSliderFloat2(
///  byte* label ,
///  Vector2* v ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderFloat2(Pointer<Uint8> label, Pointer<ImVector2> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags) =>
    _igSliderFloat2(label, v, v_min, v_max, format, flags);

late final _igSliderFloat2 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector2> v, Float v_min,
        Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<ImVector2> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags)>('igSliderFloat2');

///```c
/// byte igSliderFloat3(
///  byte* label ,
///  Vector3* v ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderFloat3(Pointer<Uint8> label, Pointer<ImVector3> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags) =>
    _igSliderFloat3(label, v, v_min, v_max, format, flags);

late final _igSliderFloat3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<ImVector3> v, Float v_min,
        Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<ImVector3> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags)>('igSliderFloat3');

///```c
/// byte igSliderFloat4(
///  byte* label ,
///  Vector4* v ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderFloat4(Pointer<Uint8> label, Pointer<Vector4> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags) =>
    _igSliderFloat4(label, v, v_min, v_max, format, flags);

late final _igSliderFloat4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Vector4> v, Float v_min,
        Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Vector4> v, double v_min,
        double v_max, Pointer<Uint8> format, int flags)>('igSliderFloat4');

///```c
/// byte igSliderInt(
///  byte* label ,
///  int* v ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderInt(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags) =>
    _igSliderInt(label, v, v_min, v_max, format, flags);

late final _igSliderInt = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Int32 v_min,
        Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags)>('igSliderInt');

///```c
/// byte igSliderInt2(
///  byte* label ,
///  int* v ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderInt2(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags) =>
    _igSliderInt2(label, v, v_min, v_max, format, flags);

late final _igSliderInt2 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Int32 v_min,
        Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags)>('igSliderInt2');

///```c
/// byte igSliderInt3(
///  byte* label ,
///  int* v ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderInt3(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags) =>
    _igSliderInt3(label, v, v_min, v_max, format, flags);

late final _igSliderInt3 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Int32 v_min,
        Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags)>('igSliderInt3');

///```c
/// byte igSliderInt4(
///  byte* label ,
///  int* v ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderInt4(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags) =>
    _igSliderInt4(label, v, v_min, v_max, format, flags);

late final _igSliderInt4 = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Pointer<Int32> v, Int32 v_min,
        Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, Pointer<Int32> v, int v_min, int v_max,
        Pointer<Uint8> format, int flags)>('igSliderInt4');

///```c
/// byte igSliderScalar(
///  byte* label ,
///  ImGuiDataType data_type ,
///  void* p_data ,
///  void* p_min ,
///  void* p_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderScalar(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags) =>
    _igSliderScalar(label, data_type, p_data, p_min, p_max, format, flags);

late final _igSliderScalar = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Uint32 data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags)>('igSliderScalar');

///```c
/// byte igSliderScalarN(
///  byte* label ,
///  ImGuiDataType data_type ,
///  void* p_data ,
///  int components ,
///  void* p_min ,
///  void* p_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igSliderScalarN(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        int components,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags) =>
    _igSliderScalarN(
        label, data_type, p_data, components, p_min, p_max, format, flags);

late final _igSliderScalarN = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        Uint32 data_type,
        Pointer<Void> p_data,
        Int32 components,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        int data_type,
        Pointer<Void> p_data,
        int components,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags)>('igSliderScalarN');

///```c
/// byte igSmallButton(
///  byte* label
/// );
///```
int igSmallButton(Pointer<Uint8> label) => _igSmallButton(label);

late final _igSmallButton = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label),
    int Function(Pointer<Uint8> label)>('igSmallButton');

///```c
/// void igSpacing(
/// );
///```
void igSpacing() => _igSpacing();

late final _igSpacing =
    _cimgui.lookupFunction<Void Function(), void Function()>('igSpacing');

///```c
/// void igStyleColorsClassic(
///  ImGuiStyle* dst
/// );
///```
void igStyleColorsClassic(Pointer<ImGuiStyle> dst) =>
    _igStyleColorsClassic(dst);

late final _igStyleColorsClassic = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStyle> dst),
    void Function(Pointer<ImGuiStyle> dst)>('igStyleColorsClassic');

///```c
/// void igStyleColorsDark(
///  ImGuiStyle* dst
/// );
///```
void igStyleColorsDark(Pointer<ImGuiStyle> dst) => _igStyleColorsDark(dst);

late final _igStyleColorsDark = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStyle> dst),
    void Function(Pointer<ImGuiStyle> dst)>('igStyleColorsDark');

///```c
/// void igStyleColorsLight(
///  ImGuiStyle* dst
/// );
///```
void igStyleColorsLight(Pointer<ImGuiStyle> dst) => _igStyleColorsLight(dst);

late final _igStyleColorsLight = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStyle> dst),
    void Function(Pointer<ImGuiStyle> dst)>('igStyleColorsLight');

///```c
/// byte igTabItemButton(
///  byte* label ,
///  ImGuiTabItemFlags flags
/// );
///```
int igTabItemButton(Pointer<Uint8> label, int flags) =>
    _igTabItemButton(label, flags);

late final _igTabItemButton = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Uint32 flags),
    int Function(Pointer<Uint8> label, int flags)>('igTabItemButton');

///```c
/// void igTableAngledHeadersRow(
/// );
///```
void igTableAngledHeadersRow() => _igTableAngledHeadersRow();

late final _igTableAngledHeadersRow =
    _cimgui.lookupFunction<Void Function(), void Function()>(
        'igTableAngledHeadersRow');

///```c
/// int igTableGetColumnCount(
/// );
///```
int igTableGetColumnCount() => _igTableGetColumnCount();

late final _igTableGetColumnCount = _cimgui
    .lookupFunction<Int32 Function(), int Function()>('igTableGetColumnCount');

///```c
/// ImGuiTableColumnFlags igTableGetColumnFlags(
///  int column_n
/// );
///```
int igTableGetColumnFlags(int column_n) => _igTableGetColumnFlags(column_n);

late final _igTableGetColumnFlags = _cimgui.lookupFunction<
    Uint32 Function(Int32 column_n),
    int Function(int column_n)>('igTableGetColumnFlags');

///```c
/// int igTableGetColumnIndex(
/// );
///```
int igTableGetColumnIndex() => _igTableGetColumnIndex();

late final _igTableGetColumnIndex = _cimgui
    .lookupFunction<Int32 Function(), int Function()>('igTableGetColumnIndex');

///```c
/// byte* igTableGetColumnName_Int(
///  int column_n
/// );
///```
Pointer<Uint8> igTableGetColumnName_Int(int column_n) =>
    _igTableGetColumnName_Int(column_n);

late final _igTableGetColumnName_Int = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Int32 column_n),
    Pointer<Uint8> Function(int column_n)>('igTableGetColumnName_Int');

///```c
/// int igTableGetRowIndex(
/// );
///```
int igTableGetRowIndex() => _igTableGetRowIndex();

late final _igTableGetRowIndex = _cimgui
    .lookupFunction<Int32 Function(), int Function()>('igTableGetRowIndex');

///```c
/// ImGuiTableSortSpecs* igTableGetSortSpecs(
/// );
///```
Pointer<ImGuiTableSortSpecs> igTableGetSortSpecs() => _igTableGetSortSpecs();

late final _igTableGetSortSpecs = _cimgui.lookupFunction<
    Pointer<ImGuiTableSortSpecs> Function(),
    Pointer<ImGuiTableSortSpecs> Function()>('igTableGetSortSpecs');

///```c
/// void igTableHeader(
///  byte* label
/// );
///```
void igTableHeader(Pointer<Uint8> label) => _igTableHeader(label);

late final _igTableHeader = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> label),
    void Function(Pointer<Uint8> label)>('igTableHeader');

///```c
/// void igTableHeadersRow(
/// );
///```
void igTableHeadersRow() => _igTableHeadersRow();

late final _igTableHeadersRow = _cimgui
    .lookupFunction<Void Function(), void Function()>('igTableHeadersRow');

///```c
/// byte igTableNextColumn(
/// );
///```
int igTableNextColumn() => _igTableNextColumn();

late final _igTableNextColumn = _cimgui
    .lookupFunction<Uint8 Function(), int Function()>('igTableNextColumn');

///```c
/// void igTableNextRow(
///  ImGuiTableRowFlags row_flags ,
///  float min_row_height
/// );
///```
void igTableNextRow(int row_flags, double min_row_height) =>
    _igTableNextRow(row_flags, min_row_height);

late final _igTableNextRow = _cimgui.lookupFunction<
    Void Function(Uint32 row_flags, Float min_row_height),
    void Function(int row_flags, double min_row_height)>('igTableNextRow');

///```c
/// void igTableSetBgColor(
///  ImGuiTableBgTarget target ,
///  uint color ,
///  int column_n
/// );
///```
void igTableSetBgColor(int target, int color, int column_n) =>
    _igTableSetBgColor(target, color, column_n);

late final _igTableSetBgColor = _cimgui.lookupFunction<
    Void Function(Uint32 target, Uint32 color, Int32 column_n),
    void Function(int target, int color, int column_n)>('igTableSetBgColor');

///```c
/// void igTableSetColumnEnabled(
///  int column_n ,
///  byte v
/// );
///```
void igTableSetColumnEnabled(int column_n, int v) =>
    _igTableSetColumnEnabled(column_n, v);

late final _igTableSetColumnEnabled = _cimgui.lookupFunction<
    Void Function(Int32 column_n, Uint8 v),
    void Function(int column_n, int v)>('igTableSetColumnEnabled');

///```c
/// byte igTableSetColumnIndex(
///  int column_n
/// );
///```
int igTableSetColumnIndex(int column_n) => _igTableSetColumnIndex(column_n);

late final _igTableSetColumnIndex = _cimgui.lookupFunction<
    Uint8 Function(Int32 column_n),
    int Function(int column_n)>('igTableSetColumnIndex');

///```c
/// void igTableSetupColumn(
///  byte* label ,
///  ImGuiTableColumnFlags flags ,
///  float init_width_or_weight ,
///  uint user_id
/// );
///```
void igTableSetupColumn(Pointer<Uint8> label, int flags,
        double init_width_or_weight, int user_id) =>
    _igTableSetupColumn(label, flags, init_width_or_weight, user_id);

late final _igTableSetupColumn = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> label, Uint32 flags,
        Float init_width_or_weight, Uint32 user_id),
    void Function(Pointer<Uint8> label, int flags, double init_width_or_weight,
        int user_id)>('igTableSetupColumn');

///```c
/// void igTableSetupScrollFreeze(
///  int cols ,
///  int rows
/// );
///```
void igTableSetupScrollFreeze(int cols, int rows) =>
    _igTableSetupScrollFreeze(cols, rows);

late final _igTableSetupScrollFreeze = _cimgui.lookupFunction<
    Void Function(Int32 cols, Int32 rows),
    void Function(int cols, int rows)>('igTableSetupScrollFreeze');

///```c
/// void igText(
///  byte* fmt ,
///  ... ...
/// );
///```
void igText(Pointer<Uint8> fmt) => _igText(fmt);

late final _igText = _cimgui.lookupFunction<Void Function(Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> fmt)>('igText');

///```c
/// void igTextColored(
///  ImVec4 col ,
///  byte* fmt ,
///  ... ...
/// );
///```
void igTextColored(ImVec4 col, Pointer<Uint8> fmt) => _igTextColored(col, fmt);

late final _igTextColored = _cimgui.lookupFunction<
    Void Function(ImVec4 col, Pointer<Uint8> fmt),
    void Function(ImVec4 col, Pointer<Uint8> fmt)>('igTextColored');

///```c
/// void igTextDisabled(
///  byte* fmt ,
///  ... ...
/// );
///```
void igTextDisabled(Pointer<Uint8> fmt) => _igTextDisabled(fmt);

late final _igTextDisabled = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> fmt)>('igTextDisabled');

///```c
/// void igTextUnformatted(
///  byte* text ,
///  byte* text_end
/// );
///```
void igTextUnformatted(Pointer<Uint8> text, Pointer<Uint8> text_end) =>
    _igTextUnformatted(text, text_end);

late final _igTextUnformatted = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> text, Pointer<Uint8> text_end),
    void Function(
        Pointer<Uint8> text, Pointer<Uint8> text_end)>('igTextUnformatted');

///```c
/// void igTextWrapped(
///  byte* fmt ,
///  ... ...
/// );
///```
void igTextWrapped(Pointer<Uint8> fmt) => _igTextWrapped(fmt);

late final _igTextWrapped = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> fmt),
    void Function(Pointer<Uint8> fmt)>('igTextWrapped');

///```c
/// byte igTreeNode_Str(
///  byte* label
/// );
///```
int igTreeNode_Str(Pointer<Uint8> label) => _igTreeNode_Str(label);

late final _igTreeNode_Str = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label),
    int Function(Pointer<Uint8> label)>('igTreeNode_Str');

///```c
/// byte igTreeNode_StrStr(
///  byte* str_id ,
///  byte* fmt ,
///  ... ...
/// );
///```
int igTreeNode_StrStr(Pointer<Uint8> str_id, Pointer<Uint8> fmt) =>
    _igTreeNode_StrStr(str_id, fmt);

late final _igTreeNode_StrStr = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Pointer<Uint8> fmt),
    int Function(
        Pointer<Uint8> str_id, Pointer<Uint8> fmt)>('igTreeNode_StrStr');

///```c
/// byte igTreeNode_Ptr(
///  void* ptr_id ,
///  byte* fmt ,
///  ... ...
/// );
///```
int igTreeNode_Ptr(Pointer<Void> ptr_id, Pointer<Uint8> fmt) =>
    _igTreeNode_Ptr(ptr_id, fmt);

late final _igTreeNode_Ptr = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Void> ptr_id, Pointer<Uint8> fmt),
    int Function(Pointer<Void> ptr_id, Pointer<Uint8> fmt)>('igTreeNode_Ptr');

///```c
/// byte igTreeNodeEx_Str(
///  byte* label ,
///  ImGuiTreeNodeFlags flags
/// );
///```
int igTreeNodeEx_Str(Pointer<Uint8> label, int flags) =>
    _igTreeNodeEx_Str(label, flags);

late final _igTreeNodeEx_Str = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, Uint32 flags),
    int Function(Pointer<Uint8> label, int flags)>('igTreeNodeEx_Str');

///```c
/// byte igTreeNodeEx_StrStr(
///  byte* str_id ,
///  ImGuiTreeNodeFlags flags ,
///  byte* fmt ,
///  ... ...
/// );
///```
int igTreeNodeEx_StrStr(Pointer<Uint8> str_id, int flags, Pointer<Uint8> fmt) =>
    _igTreeNodeEx_StrStr(str_id, flags, fmt);

late final _igTreeNodeEx_StrStr = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> str_id, Uint32 flags, Pointer<Uint8> fmt),
    int Function(Pointer<Uint8> str_id, int flags,
        Pointer<Uint8> fmt)>('igTreeNodeEx_StrStr');

///```c
/// byte igTreeNodeEx_Ptr(
///  void* ptr_id ,
///  ImGuiTreeNodeFlags flags ,
///  byte* fmt ,
///  ... ...
/// );
///```
int igTreeNodeEx_Ptr(Pointer<Void> ptr_id, int flags, Pointer<Uint8> fmt) =>
    _igTreeNodeEx_Ptr(ptr_id, flags, fmt);

late final _igTreeNodeEx_Ptr = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Void> ptr_id, Uint32 flags, Pointer<Uint8> fmt),
    int Function(Pointer<Void> ptr_id, int flags,
        Pointer<Uint8> fmt)>('igTreeNodeEx_Ptr');

///```c
/// void igTreePop(
/// );
///```
void igTreePop() => _igTreePop();

late final _igTreePop =
    _cimgui.lookupFunction<Void Function(), void Function()>('igTreePop');

///```c
/// void igTreePush_Str(
///  byte* str_id
/// );
///```
void igTreePush_Str(Pointer<Uint8> str_id) => _igTreePush_Str(str_id);

late final _igTreePush_Str = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> str_id),
    void Function(Pointer<Uint8> str_id)>('igTreePush_Str');

///```c
/// void igTreePush_Ptr(
///  void* ptr_id
/// );
///```
void igTreePush_Ptr(Pointer<Void> ptr_id) => _igTreePush_Ptr(ptr_id);

late final _igTreePush_Ptr = _cimgui.lookupFunction<
    Void Function(Pointer<Void> ptr_id),
    void Function(Pointer<Void> ptr_id)>('igTreePush_Ptr');

///```c
/// void igUnindent(
///  float indent_w
/// );
///```
void igUnindent(double indent_w) => _igUnindent(indent_w);

late final _igUnindent = _cimgui.lookupFunction<Void Function(Float indent_w),
    void Function(double indent_w)>('igUnindent');

///```c
/// void igUpdatePlatformWindows(
/// );
///```
void igUpdatePlatformWindows() => _igUpdatePlatformWindows();

late final _igUpdatePlatformWindows =
    _cimgui.lookupFunction<Void Function(), void Function()>(
        'igUpdatePlatformWindows');

///```c
/// void igValue_Bool(
///  byte* prefix ,
///  byte b
/// );
///```
void igValue_Bool(Pointer<Uint8> prefix, int b) => _igValue_Bool(prefix, b);

late final _igValue_Bool = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> prefix, Uint8 b),
    void Function(Pointer<Uint8> prefix, int b)>('igValue_Bool');

///```c
/// void igValue_Int(
///  byte* prefix ,
///  int v
/// );
///```
void igValue_Int(Pointer<Uint8> prefix, int v) => _igValue_Int(prefix, v);

late final _igValue_Int = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> prefix, Int32 v),
    void Function(Pointer<Uint8> prefix, int v)>('igValue_Int');

///```c
/// void igValue_Uint(
///  byte* prefix ,
///  uint v
/// );
///```
void igValue_Uint(Pointer<Uint8> prefix, int v) => _igValue_Uint(prefix, v);

late final _igValue_Uint = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> prefix, Uint32 v),
    void Function(Pointer<Uint8> prefix, int v)>('igValue_Uint');

///```c
/// void igValue_Float(
///  byte* prefix ,
///  float v ,
///  byte* float_format
/// );
///```
void igValue_Float(
        Pointer<Uint8> prefix, double v, Pointer<Uint8> float_format) =>
    _igValue_Float(prefix, v, float_format);

late final _igValue_Float = _cimgui.lookupFunction<
    Void Function(Pointer<Uint8> prefix, Float v, Pointer<Uint8> float_format),
    void Function(Pointer<Uint8> prefix, double v,
        Pointer<Uint8> float_format)>('igValue_Float');

///```c
/// byte igVSliderFloat(
///  byte* label ,
///  ImVec2 size ,
///  float* v ,
///  float v_min ,
///  float v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igVSliderFloat(Pointer<Uint8> label, ImVec2 size, Pointer<Float> v,
        double v_min, double v_max, Pointer<Uint8> format, int flags) =>
    _igVSliderFloat(label, size, v, v_min, v_max, format, flags);

late final _igVSliderFloat = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, ImVec2 size, Pointer<Float> v,
        Float v_min, Float v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        ImVec2 size,
        Pointer<Float> v,
        double v_min,
        double v_max,
        Pointer<Uint8> format,
        int flags)>('igVSliderFloat');

///```c
/// byte igVSliderInt(
///  byte* label ,
///  ImVec2 size ,
///  int* v ,
///  int v_min ,
///  int v_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igVSliderInt(Pointer<Uint8> label, ImVec2 size, Pointer<Int32> v, int v_min,
        int v_max, Pointer<Uint8> format, int flags) =>
    _igVSliderInt(label, size, v, v_min, v_max, format, flags);

late final _igVSliderInt = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Uint8> label, ImVec2 size, Pointer<Int32> v,
        Int32 v_min, Int32 v_max, Pointer<Uint8> format, Uint32 flags),
    int Function(Pointer<Uint8> label, ImVec2 size, Pointer<Int32> v, int v_min,
        int v_max, Pointer<Uint8> format, int flags)>('igVSliderInt');

///```c
/// byte igVSliderScalar(
///  byte* label ,
///  ImVec2 size ,
///  ImGuiDataType data_type ,
///  void* p_data ,
///  void* p_min ,
///  void* p_max ,
///  byte* format ,
///  ImGuiSliderFlags flags
/// );
///```
int igVSliderScalar(
        Pointer<Uint8> label,
        ImVec2 size,
        int data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags) =>
    _igVSliderScalar(
        label, size, data_type, p_data, p_min, p_max, format, flags);

late final _igVSliderScalar = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<Uint8> label,
        ImVec2 size,
        Uint32 data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        Uint32 flags),
    int Function(
        Pointer<Uint8> label,
        ImVec2 size,
        int data_type,
        Pointer<Void> p_data,
        Pointer<Void> p_min,
        Pointer<Void> p_max,
        Pointer<Uint8> format,
        int flags)>('igVSliderScalar');

///```c
/// void ImColor_destroy(
///  ImColor* self
/// );
///```
void ImColor_destroy(Pointer<ImColor> self) => _ImColor_destroy(self);

late final _ImColor_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImColor> self),
    void Function(Pointer<ImColor> self)>('ImColor_destroy');

///```c
/// void ImColor_HSV(
///  ImColor* pOut ,
///  float h ,
///  float s ,
///  float v ,
///  float a
/// );
///```
void ImColor_HSV(
        Pointer<ImColor> pOut, double h, double s, double v, double a) =>
    _ImColor_HSV(pOut, h, s, v, a);

late final _ImColor_HSV = _cimgui.lookupFunction<
    Void Function(Pointer<ImColor> pOut, Float h, Float s, Float v, Float a),
    void Function(Pointer<ImColor> pOut, double h, double s, double v,
        double a)>('ImColor_HSV');

///```c
/// ImColor* ImColor_ImColor_Nil(
/// );
///```
Pointer<ImColor> ImColor_ImColor_Nil() => _ImColor_ImColor_Nil();

late final _ImColor_ImColor_Nil = _cimgui.lookupFunction<
    Pointer<ImColor> Function(),
    Pointer<ImColor> Function()>('ImColor_ImColor_Nil');

///```c
/// ImColor* ImColor_ImColor_Float(
///  float r ,
///  float g ,
///  float b ,
///  float a
/// );
///```
Pointer<ImColor> ImColor_ImColor_Float(
        double r, double g, double b, double a) =>
    _ImColor_ImColor_Float(r, g, b, a);

late final _ImColor_ImColor_Float = _cimgui.lookupFunction<
    Pointer<ImColor> Function(Float r, Float g, Float b, Float a),
    Pointer<ImColor> Function(
        double r, double g, double b, double a)>('ImColor_ImColor_Float');

///```c
/// ImColor* ImColor_ImColor_Vec4(
///  ImVec4 col
/// );
///```
Pointer<ImColor> ImColor_ImColor_Vec4(ImVec4 col) => _ImColor_ImColor_Vec4(col);

late final _ImColor_ImColor_Vec4 = _cimgui.lookupFunction<
    Pointer<ImColor> Function(ImVec4 col),
    Pointer<ImColor> Function(ImVec4 col)>('ImColor_ImColor_Vec4');

///```c
/// ImColor* ImColor_ImColor_Int(
///  int r ,
///  int g ,
///  int b ,
///  int a
/// );
///```
Pointer<ImColor> ImColor_ImColor_Int(int r, int g, int b, int a) =>
    _ImColor_ImColor_Int(r, g, b, a);

late final _ImColor_ImColor_Int = _cimgui.lookupFunction<
    Pointer<ImColor> Function(Int32 r, Int32 g, Int32 b, Int32 a),
    Pointer<ImColor> Function(
        int r, int g, int b, int a)>('ImColor_ImColor_Int');

///```c
/// ImColor* ImColor_ImColor_U32(
///  uint rgba
/// );
///```
Pointer<ImColor> ImColor_ImColor_U32(int rgba) => _ImColor_ImColor_U32(rgba);

late final _ImColor_ImColor_U32 = _cimgui.lookupFunction<
    Pointer<ImColor> Function(Uint32 rgba),
    Pointer<ImColor> Function(int rgba)>('ImColor_ImColor_U32');

///```c
/// void ImColor_SetHSV(
///  ImColor* self ,
///  float h ,
///  float s ,
///  float v ,
///  float a
/// );
///```
void ImColor_SetHSV(
        Pointer<ImColor> self, double h, double s, double v, double a) =>
    _ImColor_SetHSV(self, h, s, v, a);

late final _ImColor_SetHSV = _cimgui.lookupFunction<
    Void Function(Pointer<ImColor> self, Float h, Float s, Float v, Float a),
    void Function(Pointer<ImColor> self, double h, double s, double v,
        double a)>('ImColor_SetHSV');

///```c
/// void ImDrawCmd_destroy(
///  ImDrawCmd* self
/// );
///```
void ImDrawCmd_destroy(Pointer<ImDrawCmd> self) => _ImDrawCmd_destroy(self);

late final _ImDrawCmd_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawCmd> self),
    void Function(Pointer<ImDrawCmd> self)>('ImDrawCmd_destroy');

///```c
/// IntPtr ImDrawCmd_GetTexID(
///  ImDrawCmd* self
/// );
///```
int ImDrawCmd_GetTexID(Pointer<ImDrawCmd> self) => _ImDrawCmd_GetTexID(self);

late final _ImDrawCmd_GetTexID = _cimgui.lookupFunction<
    IntPtr Function(Pointer<ImDrawCmd> self),
    int Function(Pointer<ImDrawCmd> self)>('ImDrawCmd_GetTexID');

///```c
/// ImDrawCmd* ImDrawCmd_ImDrawCmd(
/// );
///```
Pointer<ImDrawCmd> ImDrawCmd_ImDrawCmd() => _ImDrawCmd_ImDrawCmd();

late final _ImDrawCmd_ImDrawCmd = _cimgui.lookupFunction<
    Pointer<ImDrawCmd> Function(),
    Pointer<ImDrawCmd> Function()>('ImDrawCmd_ImDrawCmd');

///```c
/// void ImDrawData_AddDrawList(
///  ImDrawData* self ,
///  ImDrawList* draw_list
/// );
///```
void ImDrawData_AddDrawList(
        Pointer<ImDrawData> self, Pointer<ImDrawList> draw_list) =>
    _ImDrawData_AddDrawList(self, draw_list);

late final _ImDrawData_AddDrawList = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawData> self, Pointer<ImDrawList> draw_list),
    void Function(Pointer<ImDrawData> self,
        Pointer<ImDrawList> draw_list)>('ImDrawData_AddDrawList');

///```c
/// void ImDrawData_Clear(
///  ImDrawData* self
/// );
///```
void ImDrawData_Clear(Pointer<ImDrawData> self) => _ImDrawData_Clear(self);

late final _ImDrawData_Clear = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawData> self),
    void Function(Pointer<ImDrawData> self)>('ImDrawData_Clear');

///```c
/// void ImDrawData_DeIndexAllBuffers(
///  ImDrawData* self
/// );
///```
void ImDrawData_DeIndexAllBuffers(Pointer<ImDrawData> self) =>
    _ImDrawData_DeIndexAllBuffers(self);

late final _ImDrawData_DeIndexAllBuffers = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawData> self),
    void Function(Pointer<ImDrawData> self)>('ImDrawData_DeIndexAllBuffers');

///```c
/// void ImDrawData_destroy(
///  ImDrawData* self
/// );
///```
void ImDrawData_destroy(Pointer<ImDrawData> self) => _ImDrawData_destroy(self);

late final _ImDrawData_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawData> self),
    void Function(Pointer<ImDrawData> self)>('ImDrawData_destroy');

///```c
/// ImDrawData* ImDrawData_ImDrawData(
/// );
///```
Pointer<ImDrawData> ImDrawData_ImDrawData() => _ImDrawData_ImDrawData();

late final _ImDrawData_ImDrawData = _cimgui.lookupFunction<
    Pointer<ImDrawData> Function(),
    Pointer<ImDrawData> Function()>('ImDrawData_ImDrawData');

///```c
/// void ImDrawData_ScaleClipRects(
///  ImDrawData* self ,
///  ImVec2 fb_scale
/// );
///```
void ImDrawData_ScaleClipRects(Pointer<ImDrawData> self, ImVec2 fb_scale) =>
    _ImDrawData_ScaleClipRects(self, fb_scale);

late final _ImDrawData_ScaleClipRects = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawData> self, ImVec2 fb_scale),
    void Function(Pointer<ImDrawData> self,
        ImVec2 fb_scale)>('ImDrawData_ScaleClipRects');

///```c
/// int ImDrawList__CalcCircleAutoSegmentCount(
///  ImDrawList* self ,
///  float radius
/// );
///```
int ImDrawList__CalcCircleAutoSegmentCount(
        Pointer<ImDrawList> self, double radius) =>
    _ImDrawList__CalcCircleAutoSegmentCount(self, radius);

late final _ImDrawList__CalcCircleAutoSegmentCount = _cimgui.lookupFunction<
    Int32 Function(Pointer<ImDrawList> self, Float radius),
    int Function(Pointer<ImDrawList> self,
        double radius)>('ImDrawList__CalcCircleAutoSegmentCount');

///```c
/// void ImDrawList__ClearFreeMemory(
///  ImDrawList* self
/// );
///```
void ImDrawList__ClearFreeMemory(Pointer<ImDrawList> self) =>
    _ImDrawList__ClearFreeMemory(self);

late final _ImDrawList__ClearFreeMemory = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList__ClearFreeMemory');

///```c
/// void ImDrawList__OnChangedClipRect(
///  ImDrawList* self
/// );
///```
void ImDrawList__OnChangedClipRect(Pointer<ImDrawList> self) =>
    _ImDrawList__OnChangedClipRect(self);

late final _ImDrawList__OnChangedClipRect = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList__OnChangedClipRect');

///```c
/// void ImDrawList__OnChangedTextureID(
///  ImDrawList* self
/// );
///```
void ImDrawList__OnChangedTextureID(Pointer<ImDrawList> self) =>
    _ImDrawList__OnChangedTextureID(self);

late final _ImDrawList__OnChangedTextureID = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList__OnChangedTextureID');

///```c
/// void ImDrawList__OnChangedVtxOffset(
///  ImDrawList* self
/// );
///```
void ImDrawList__OnChangedVtxOffset(Pointer<ImDrawList> self) =>
    _ImDrawList__OnChangedVtxOffset(self);

late final _ImDrawList__OnChangedVtxOffset = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList__OnChangedVtxOffset');

///```c
/// void ImDrawList__PathArcToFastEx(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  int a_min_sample ,
///  int a_max_sample ,
///  int a_step
/// );
///```
void ImDrawList__PathArcToFastEx(Pointer<ImDrawList> self, ImVec2 center,
        double radius, int a_min_sample, int a_max_sample, int a_step) =>
    _ImDrawList__PathArcToFastEx(
        self, center, radius, a_min_sample, a_max_sample, a_step);

late final _ImDrawList__PathArcToFastEx = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Int32 a_min_sample, Int32 a_max_sample, Int32 a_step),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius,
        int a_min_sample,
        int a_max_sample,
        int a_step)>('ImDrawList__PathArcToFastEx');

///```c
/// void ImDrawList__PathArcToN(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  float a_min ,
///  float a_max ,
///  int num_segments
/// );
///```
void ImDrawList__PathArcToN(Pointer<ImDrawList> self, ImVec2 center,
        double radius, double a_min, double a_max, int num_segments) =>
    _ImDrawList__PathArcToN(self, center, radius, a_min, a_max, num_segments);

late final _ImDrawList__PathArcToN = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Float a_min, Float a_max, Int32 num_segments),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius,
        double a_min,
        double a_max,
        int num_segments)>('ImDrawList__PathArcToN');

///```c
/// void ImDrawList__PopUnusedDrawCmd(
///  ImDrawList* self
/// );
///```
void ImDrawList__PopUnusedDrawCmd(Pointer<ImDrawList> self) =>
    _ImDrawList__PopUnusedDrawCmd(self);

late final _ImDrawList__PopUnusedDrawCmd = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList__PopUnusedDrawCmd');

///```c
/// void ImDrawList__ResetForNewFrame(
///  ImDrawList* self
/// );
///```
void ImDrawList__ResetForNewFrame(Pointer<ImDrawList> self) =>
    _ImDrawList__ResetForNewFrame(self);

late final _ImDrawList__ResetForNewFrame = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList__ResetForNewFrame');

///```c
/// void ImDrawList__TryMergeDrawCmds(
///  ImDrawList* self
/// );
///```
void ImDrawList__TryMergeDrawCmds(Pointer<ImDrawList> self) =>
    _ImDrawList__TryMergeDrawCmds(self);

late final _ImDrawList__TryMergeDrawCmds = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList__TryMergeDrawCmds');

///```c
/// void ImDrawList_AddBezierCubic(
///  ImDrawList* self ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  ImVec2 p4 ,
///  uint col ,
///  float thickness ,
///  int num_segments
/// );
///```
void ImDrawList_AddBezierCubic(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2,
        ImVec2 p3, ImVec2 p4, int col, double thickness, int num_segments) =>
    _ImDrawList_AddBezierCubic(
        self, p1, p2, p3, p4, col, thickness, num_segments);

late final _ImDrawList_AddBezierCubic = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        ImVec2 p4, Uint32 col, Float thickness, Int32 num_segments),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 p1,
        ImVec2 p2,
        ImVec2 p3,
        ImVec2 p4,
        int col,
        double thickness,
        int num_segments)>('ImDrawList_AddBezierCubic');

///```c
/// void ImDrawList_AddBezierQuadratic(
///  ImDrawList* self ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  uint col ,
///  float thickness ,
///  int num_segments
/// );
///```
void ImDrawList_AddBezierQuadratic(Pointer<ImDrawList> self, ImVec2 p1,
        ImVec2 p2, ImVec2 p3, int col, double thickness, int num_segments) =>
    _ImDrawList_AddBezierQuadratic(
        self, p1, p2, p3, col, thickness, num_segments);

late final _ImDrawList_AddBezierQuadratic = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        Uint32 col, Float thickness, Int32 num_segments),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 p1,
        ImVec2 p2,
        ImVec2 p3,
        int col,
        double thickness,
        int num_segments)>('ImDrawList_AddBezierQuadratic');

///```c
/// void ImDrawList_AddCallback(
///  ImDrawList* self ,
///  IntPtr callback ,
///  void* callback_data
/// );
///```
void ImDrawList_AddCallback(
        Pointer<ImDrawList> self, int callback, Pointer<Void> callback_data) =>
    _ImDrawList_AddCallback(self, callback, callback_data);

late final _ImDrawList_AddCallback = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self, IntPtr callback, Pointer<Void> callback_data),
    void Function(Pointer<ImDrawList> self, int callback,
        Pointer<Void> callback_data)>('ImDrawList_AddCallback');

///```c
/// void ImDrawList_AddCircle(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  uint col ,
///  int num_segments ,
///  float thickness
/// );
///```
void ImDrawList_AddCircle(Pointer<ImDrawList> self, ImVec2 center,
        double radius, int col, int num_segments, double thickness) =>
    _ImDrawList_AddCircle(self, center, radius, col, num_segments, thickness);

late final _ImDrawList_AddCircle = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Uint32 col, Int32 num_segments, Float thickness),
    void Function(Pointer<ImDrawList> self, ImVec2 center, double radius,
        int col, int num_segments, double thickness)>('ImDrawList_AddCircle');

///```c
/// void ImDrawList_AddCircleFilled(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  uint col ,
///  int num_segments
/// );
///```
void ImDrawList_AddCircleFilled(Pointer<ImDrawList> self, ImVec2 center,
        double radius, int col, int num_segments) =>
    _ImDrawList_AddCircleFilled(self, center, radius, col, num_segments);

late final _ImDrawList_AddCircleFilled = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Uint32 col, Int32 num_segments),
    void Function(Pointer<ImDrawList> self, ImVec2 center, double radius,
        int col, int num_segments)>('ImDrawList_AddCircleFilled');

///```c
/// void ImDrawList_AddConvexPolyFilled(
///  ImDrawList* self ,
///  ImVec2* points ,
///  int num_points ,
///  uint col
/// );
///```
void ImDrawList_AddConvexPolyFilled(Pointer<ImDrawList> self,
        Pointer<ImVec2> points, int num_points, int col) =>
    _ImDrawList_AddConvexPolyFilled(self, points, num_points, col);

late final _ImDrawList_AddConvexPolyFilled = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Pointer<ImVec2> points,
        Int32 num_points, Uint32 col),
    void Function(Pointer<ImDrawList> self, Pointer<ImVec2> points,
        int num_points, int col)>('ImDrawList_AddConvexPolyFilled');

///```c
/// void ImDrawList_AddDrawCmd(
///  ImDrawList* self
/// );
///```
void ImDrawList_AddDrawCmd(Pointer<ImDrawList> self) =>
    _ImDrawList_AddDrawCmd(self);

late final _ImDrawList_AddDrawCmd = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList_AddDrawCmd');

///```c
/// void ImDrawList_AddEllipse(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius_x ,
///  float radius_y ,
///  uint col ,
///  float rot ,
///  int num_segments ,
///  float thickness
/// );
///```
void ImDrawList_AddEllipse(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius_x,
        double radius_y,
        int col,
        double rot,
        int num_segments,
        double thickness) =>
    _ImDrawList_AddEllipse(
        self, center, radius_x, radius_y, col, rot, num_segments, thickness);

late final _ImDrawList_AddEllipse = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self,
        ImVec2 center,
        Float radius_x,
        Float radius_y,
        Uint32 col,
        Float rot,
        Int32 num_segments,
        Float thickness),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius_x,
        double radius_y,
        int col,
        double rot,
        int num_segments,
        double thickness)>('ImDrawList_AddEllipse');

///```c
/// void ImDrawList_AddEllipseFilled(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius_x ,
///  float radius_y ,
///  uint col ,
///  float rot ,
///  int num_segments
/// );
///```
void ImDrawList_AddEllipseFilled(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius_x,
        double radius_y,
        int col,
        double rot,
        int num_segments) =>
    _ImDrawList_AddEllipseFilled(
        self, center, radius_x, radius_y, col, rot, num_segments);

late final _ImDrawList_AddEllipseFilled = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius_x,
        Float radius_y, Uint32 col, Float rot, Int32 num_segments),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius_x,
        double radius_y,
        int col,
        double rot,
        int num_segments)>('ImDrawList_AddEllipseFilled');

///```c
/// void ImDrawList_AddImage(
///  ImDrawList* self ,
///  IntPtr user_texture_id ,
///  ImVec2 p_min ,
///  ImVec2 p_max ,
///  ImVec2 uv_min ,
///  ImVec2 uv_max ,
///  uint col
/// );
///```
void ImDrawList_AddImage(Pointer<ImDrawList> self, int user_texture_id,
        ImVec2 p_min, ImVec2 p_max, ImVec2 uv_min, ImVec2 uv_max, int col) =>
    _ImDrawList_AddImage(
        self, user_texture_id, p_min, p_max, uv_min, uv_max, col);

late final _ImDrawList_AddImage = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, IntPtr user_texture_id,
        ImVec2 p_min, ImVec2 p_max, ImVec2 uv_min, ImVec2 uv_max, Uint32 col),
    void Function(
        Pointer<ImDrawList> self,
        int user_texture_id,
        ImVec2 p_min,
        ImVec2 p_max,
        ImVec2 uv_min,
        ImVec2 uv_max,
        int col)>('ImDrawList_AddImage');

///```c
/// void ImDrawList_AddImageQuad(
///  ImDrawList* self ,
///  IntPtr user_texture_id ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  ImVec2 p4 ,
///  ImVec2 uv1 ,
///  ImVec2 uv2 ,
///  ImVec2 uv3 ,
///  ImVec2 uv4 ,
///  uint col
/// );
///```
void ImDrawList_AddImageQuad(
        Pointer<ImDrawList> self,
        int user_texture_id,
        ImVec2 p1,
        ImVec2 p2,
        ImVec2 p3,
        ImVec2 p4,
        ImVec2 uv1,
        ImVec2 uv2,
        ImVec2 uv3,
        ImVec2 uv4,
        int col) =>
    _ImDrawList_AddImageQuad(
        self, user_texture_id, p1, p2, p3, p4, uv1, uv2, uv3, uv4, col);

late final _ImDrawList_AddImageQuad = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self,
        IntPtr user_texture_id,
        ImVec2 p1,
        ImVec2 p2,
        ImVec2 p3,
        ImVec2 p4,
        ImVec2 uv1,
        ImVec2 uv2,
        ImVec2 uv3,
        ImVec2 uv4,
        Uint32 col),
    void Function(
        Pointer<ImDrawList> self,
        int user_texture_id,
        ImVec2 p1,
        ImVec2 p2,
        ImVec2 p3,
        ImVec2 p4,
        ImVec2 uv1,
        ImVec2 uv2,
        ImVec2 uv3,
        ImVec2 uv4,
        int col)>('ImDrawList_AddImageQuad');

///```c
/// void ImDrawList_AddImageRounded(
///  ImDrawList* self ,
///  IntPtr user_texture_id ,
///  ImVec2 p_min ,
///  ImVec2 p_max ,
///  ImVec2 uv_min ,
///  ImVec2 uv_max ,
///  uint col ,
///  float rounding ,
///  ImDrawFlags flags
/// );
///```
void ImDrawList_AddImageRounded(
        Pointer<ImDrawList> self,
        int user_texture_id,
        ImVec2 p_min,
        ImVec2 p_max,
        ImVec2 uv_min,
        ImVec2 uv_max,
        int col,
        double rounding,
        int flags) =>
    _ImDrawList_AddImageRounded(self, user_texture_id, p_min, p_max, uv_min,
        uv_max, col, rounding, flags);

late final _ImDrawList_AddImageRounded = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self,
        IntPtr user_texture_id,
        ImVec2 p_min,
        ImVec2 p_max,
        ImVec2 uv_min,
        ImVec2 uv_max,
        Uint32 col,
        Float rounding,
        Uint32 flags),
    void Function(
        Pointer<ImDrawList> self,
        int user_texture_id,
        ImVec2 p_min,
        ImVec2 p_max,
        ImVec2 uv_min,
        ImVec2 uv_max,
        int col,
        double rounding,
        int flags)>('ImDrawList_AddImageRounded');

///```c
/// void ImDrawList_AddLine(
///  ImDrawList* self ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  uint col ,
///  float thickness
/// );
///```
void ImDrawList_AddLine(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, int col,
        double thickness) =>
    _ImDrawList_AddLine(self, p1, p2, col, thickness);

late final _ImDrawList_AddLine = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, Uint32 col,
        Float thickness),
    void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, int col,
        double thickness)>('ImDrawList_AddLine');

///```c
/// void ImDrawList_AddNgon(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  uint col ,
///  int num_segments ,
///  float thickness
/// );
///```
void ImDrawList_AddNgon(Pointer<ImDrawList> self, ImVec2 center, double radius,
        int col, int num_segments, double thickness) =>
    _ImDrawList_AddNgon(self, center, radius, col, num_segments, thickness);

late final _ImDrawList_AddNgon = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Uint32 col, Int32 num_segments, Float thickness),
    void Function(Pointer<ImDrawList> self, ImVec2 center, double radius,
        int col, int num_segments, double thickness)>('ImDrawList_AddNgon');

///```c
/// void ImDrawList_AddNgonFilled(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  uint col ,
///  int num_segments
/// );
///```
void ImDrawList_AddNgonFilled(Pointer<ImDrawList> self, ImVec2 center,
        double radius, int col, int num_segments) =>
    _ImDrawList_AddNgonFilled(self, center, radius, col, num_segments);

late final _ImDrawList_AddNgonFilled = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Uint32 col, Int32 num_segments),
    void Function(Pointer<ImDrawList> self, ImVec2 center, double radius,
        int col, int num_segments)>('ImDrawList_AddNgonFilled');

///```c
/// void ImDrawList_AddPolyline(
///  ImDrawList* self ,
///  ImVec2* points ,
///  int num_points ,
///  uint col ,
///  ImDrawFlags flags ,
///  float thickness
/// );
///```
void ImDrawList_AddPolyline(Pointer<ImDrawList> self, Pointer<ImVec2> points,
        int num_points, int col, int flags, double thickness) =>
    _ImDrawList_AddPolyline(self, points, num_points, col, flags, thickness);

late final _ImDrawList_AddPolyline = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Pointer<ImVec2> points,
        Int32 num_points, Uint32 col, Uint32 flags, Float thickness),
    void Function(
        Pointer<ImDrawList> self,
        Pointer<ImVec2> points,
        int num_points,
        int col,
        int flags,
        double thickness)>('ImDrawList_AddPolyline');

///```c
/// void ImDrawList_AddQuad(
///  ImDrawList* self ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  ImVec2 p4 ,
///  uint col ,
///  float thickness
/// );
///```
void ImDrawList_AddQuad(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2,
        ImVec2 p3, ImVec2 p4, int col, double thickness) =>
    _ImDrawList_AddQuad(self, p1, p2, p3, p4, col, thickness);

late final _ImDrawList_AddQuad = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        ImVec2 p4, Uint32 col, Float thickness),
    void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        ImVec2 p4, int col, double thickness)>('ImDrawList_AddQuad');

///```c
/// void ImDrawList_AddQuadFilled(
///  ImDrawList* self ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  ImVec2 p4 ,
///  uint col
/// );
///```
void ImDrawList_AddQuadFilled(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2,
        ImVec2 p3, ImVec2 p4, int col) =>
    _ImDrawList_AddQuadFilled(self, p1, p2, p3, p4, col);

late final _ImDrawList_AddQuadFilled = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        ImVec2 p4, Uint32 col),
    void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        ImVec2 p4, int col)>('ImDrawList_AddQuadFilled');

///```c
/// void ImDrawList_AddRect(
///  ImDrawList* self ,
///  ImVec2 p_min ,
///  ImVec2 p_max ,
///  uint col ,
///  float rounding ,
///  ImDrawFlags flags ,
///  float thickness
/// );
///```
void ImDrawList_AddRect(Pointer<ImDrawList> self, ImVec2 p_min, ImVec2 p_max,
        int col, double rounding, int flags, double thickness) =>
    _ImDrawList_AddRect(self, p_min, p_max, col, rounding, flags, thickness);

late final _ImDrawList_AddRect = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p_min, ImVec2 p_max,
        Uint32 col, Float rounding, Uint32 flags, Float thickness),
    void Function(Pointer<ImDrawList> self, ImVec2 p_min, ImVec2 p_max, int col,
        double rounding, int flags, double thickness)>('ImDrawList_AddRect');

///```c
/// void ImDrawList_AddRectFilled(
///  ImDrawList* self ,
///  ImVec2 p_min ,
///  ImVec2 p_max ,
///  uint col ,
///  float rounding ,
///  ImDrawFlags flags
/// );
///```
void ImDrawList_AddRectFilled(Pointer<ImDrawList> self, ImVec2 p_min,
        ImVec2 p_max, int col, double rounding, int flags) =>
    _ImDrawList_AddRectFilled(self, p_min, p_max, col, rounding, flags);

late final _ImDrawList_AddRectFilled = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p_min, ImVec2 p_max,
        Uint32 col, Float rounding, Uint32 flags),
    void Function(Pointer<ImDrawList> self, ImVec2 p_min, ImVec2 p_max, int col,
        double rounding, int flags)>('ImDrawList_AddRectFilled');

///```c
/// void ImDrawList_AddRectFilledMultiColor(
///  ImDrawList* self ,
///  ImVec2 p_min ,
///  ImVec2 p_max ,
///  uint col_upr_left ,
///  uint col_upr_right ,
///  uint col_bot_right ,
///  uint col_bot_left
/// );
///```
void ImDrawList_AddRectFilledMultiColor(
        Pointer<ImDrawList> self,
        ImVec2 p_min,
        ImVec2 p_max,
        int col_upr_left,
        int col_upr_right,
        int col_bot_right,
        int col_bot_left) =>
    _ImDrawList_AddRectFilledMultiColor(self, p_min, p_max, col_upr_left,
        col_upr_right, col_bot_right, col_bot_left);

late final _ImDrawList_AddRectFilledMultiColor = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self,
        ImVec2 p_min,
        ImVec2 p_max,
        Uint32 col_upr_left,
        Uint32 col_upr_right,
        Uint32 col_bot_right,
        Uint32 col_bot_left),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 p_min,
        ImVec2 p_max,
        int col_upr_left,
        int col_upr_right,
        int col_bot_right,
        int col_bot_left)>('ImDrawList_AddRectFilledMultiColor');

///```c
/// void ImDrawList_AddText_Vec2(
///  ImDrawList* self ,
///  ImVec2 pos ,
///  uint col ,
///  byte* text_begin ,
///  byte* text_end
/// );
///```
void ImDrawList_AddText_Vec2(Pointer<ImDrawList> self, ImVec2 pos, int col,
        Pointer<Uint8> text_begin, Pointer<Uint8> text_end) =>
    _ImDrawList_AddText_Vec2(self, pos, col, text_begin, text_end);

late final _ImDrawList_AddText_Vec2 = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 pos, Uint32 col,
        Pointer<Uint8> text_begin, Pointer<Uint8> text_end),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 pos,
        int col,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end)>('ImDrawList_AddText_Vec2');

///```c
/// void ImDrawList_AddText_FontPtr(
///  ImDrawList* self ,
///  ImFont* font ,
///  float font_size ,
///  ImVec2 pos ,
///  uint col ,
///  byte* text_begin ,
///  byte* text_end ,
///  float wrap_width ,
///  ImVec4* cpu_fine_clip_rect
/// );
///```
void ImDrawList_AddText_FontPtr(
        Pointer<ImDrawList> self,
        Pointer<ImFont> font,
        double font_size,
        ImVec2 pos,
        int col,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        double wrap_width,
        Pointer<ImVec4> cpu_fine_clip_rect) =>
    _ImDrawList_AddText_FontPtr(self, font, font_size, pos, col, text_begin,
        text_end, wrap_width, cpu_fine_clip_rect);

late final _ImDrawList_AddText_FontPtr = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self,
        Pointer<ImFont> font,
        Float font_size,
        ImVec2 pos,
        Uint32 col,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        Float wrap_width,
        Pointer<ImVec4> cpu_fine_clip_rect),
    void Function(
        Pointer<ImDrawList> self,
        Pointer<ImFont> font,
        double font_size,
        ImVec2 pos,
        int col,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        double wrap_width,
        Pointer<ImVec4> cpu_fine_clip_rect)>('ImDrawList_AddText_FontPtr');

///```c
/// void ImDrawList_AddTriangle(
///  ImDrawList* self ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  uint col ,
///  float thickness
/// );
///```
void ImDrawList_AddTriangle(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2,
        ImVec2 p3, int col, double thickness) =>
    _ImDrawList_AddTriangle(self, p1, p2, p3, col, thickness);

late final _ImDrawList_AddTriangle = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        Uint32 col, Float thickness),
    void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        int col, double thickness)>('ImDrawList_AddTriangle');

///```c
/// void ImDrawList_AddTriangleFilled(
///  ImDrawList* self ,
///  ImVec2 p1 ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  uint col
/// );
///```
void ImDrawList_AddTriangleFilled(
        Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3, int col) =>
    _ImDrawList_AddTriangleFilled(self, p1, p2, p3, col);

late final _ImDrawList_AddTriangleFilled = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3, Uint32 col),
    void Function(Pointer<ImDrawList> self, ImVec2 p1, ImVec2 p2, ImVec2 p3,
        int col)>('ImDrawList_AddTriangleFilled');

///```c
/// void ImDrawList_ChannelsMerge(
///  ImDrawList* self
/// );
///```
void ImDrawList_ChannelsMerge(Pointer<ImDrawList> self) =>
    _ImDrawList_ChannelsMerge(self);

late final _ImDrawList_ChannelsMerge = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList_ChannelsMerge');

///```c
/// void ImDrawList_ChannelsSetCurrent(
///  ImDrawList* self ,
///  int n
/// );
///```
void ImDrawList_ChannelsSetCurrent(Pointer<ImDrawList> self, int n) =>
    _ImDrawList_ChannelsSetCurrent(self, n);

late final _ImDrawList_ChannelsSetCurrent = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Int32 n),
    void Function(
        Pointer<ImDrawList> self, int n)>('ImDrawList_ChannelsSetCurrent');

///```c
/// void ImDrawList_ChannelsSplit(
///  ImDrawList* self ,
///  int count
/// );
///```
void ImDrawList_ChannelsSplit(Pointer<ImDrawList> self, int count) =>
    _ImDrawList_ChannelsSplit(self, count);

late final _ImDrawList_ChannelsSplit = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Int32 count),
    void Function(
        Pointer<ImDrawList> self, int count)>('ImDrawList_ChannelsSplit');

///```c
/// ImDrawList* ImDrawList_CloneOutput(
///  ImDrawList* self
/// );
///```
Pointer<ImDrawList> ImDrawList_CloneOutput(Pointer<ImDrawList> self) =>
    _ImDrawList_CloneOutput(self);

late final _ImDrawList_CloneOutput = _cimgui.lookupFunction<
    Pointer<ImDrawList> Function(Pointer<ImDrawList> self),
    Pointer<ImDrawList> Function(
        Pointer<ImDrawList> self)>('ImDrawList_CloneOutput');

///```c
/// void ImDrawList_destroy(
///  ImDrawList* self
/// );
///```
void ImDrawList_destroy(Pointer<ImDrawList> self) => _ImDrawList_destroy(self);

late final _ImDrawList_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList_destroy');

///```c
/// void ImDrawList_GetClipRectMax(
///  ImVec2* pOut ,
///  ImDrawList* self
/// );
///```
void ImDrawList_GetClipRectMax(
        Pointer<ImVec2> pOut, Pointer<ImDrawList> self) =>
    _ImDrawList_GetClipRectMax(pOut, self);

late final _ImDrawList_GetClipRectMax = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut, Pointer<ImDrawList> self),
    void Function(Pointer<ImVec2> pOut,
        Pointer<ImDrawList> self)>('ImDrawList_GetClipRectMax');

///```c
/// void ImDrawList_GetClipRectMin(
///  ImVec2* pOut ,
///  ImDrawList* self
/// );
///```
void ImDrawList_GetClipRectMin(
        Pointer<ImVec2> pOut, Pointer<ImDrawList> self) =>
    _ImDrawList_GetClipRectMin(pOut, self);

late final _ImDrawList_GetClipRectMin = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut, Pointer<ImDrawList> self),
    void Function(Pointer<ImVec2> pOut,
        Pointer<ImDrawList> self)>('ImDrawList_GetClipRectMin');

///```c
/// ImDrawList* ImDrawList_ImDrawList(
///  IntPtr shared_data
/// );
///```
Pointer<ImDrawList> ImDrawList_ImDrawList(int shared_data) =>
    _ImDrawList_ImDrawList(shared_data);

late final _ImDrawList_ImDrawList = _cimgui.lookupFunction<
    Pointer<ImDrawList> Function(IntPtr shared_data),
    Pointer<ImDrawList> Function(int shared_data)>('ImDrawList_ImDrawList');

///```c
/// void ImDrawList_PathArcTo(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  float a_min ,
///  float a_max ,
///  int num_segments
/// );
///```
void ImDrawList_PathArcTo(Pointer<ImDrawList> self, ImVec2 center,
        double radius, double a_min, double a_max, int num_segments) =>
    _ImDrawList_PathArcTo(self, center, radius, a_min, a_max, num_segments);

late final _ImDrawList_PathArcTo = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Float a_min, Float a_max, Int32 num_segments),
    void Function(Pointer<ImDrawList> self, ImVec2 center, double radius,
        double a_min, double a_max, int num_segments)>('ImDrawList_PathArcTo');

///```c
/// void ImDrawList_PathArcToFast(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius ,
///  int a_min_of_12 ,
///  int a_max_of_12
/// );
///```
void ImDrawList_PathArcToFast(Pointer<ImDrawList> self, ImVec2 center,
        double radius, int a_min_of_12, int a_max_of_12) =>
    _ImDrawList_PathArcToFast(self, center, radius, a_min_of_12, a_max_of_12);

late final _ImDrawList_PathArcToFast = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 center, Float radius,
        Int32 a_min_of_12, Int32 a_max_of_12),
    void Function(Pointer<ImDrawList> self, ImVec2 center, double radius,
        int a_min_of_12, int a_max_of_12)>('ImDrawList_PathArcToFast');

///```c
/// void ImDrawList_PathBezierCubicCurveTo(
///  ImDrawList* self ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  ImVec2 p4 ,
///  int num_segments
/// );
///```
void ImDrawList_PathBezierCubicCurveTo(Pointer<ImDrawList> self, ImVec2 p2,
        ImVec2 p3, ImVec2 p4, int num_segments) =>
    _ImDrawList_PathBezierCubicCurveTo(self, p2, p3, p4, num_segments);

late final _ImDrawList_PathBezierCubicCurveTo = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 p2, ImVec2 p3, ImVec2 p4,
        Int32 num_segments),
    void Function(Pointer<ImDrawList> self, ImVec2 p2, ImVec2 p3, ImVec2 p4,
        int num_segments)>('ImDrawList_PathBezierCubicCurveTo');

///```c
/// void ImDrawList_PathBezierQuadraticCurveTo(
///  ImDrawList* self ,
///  ImVec2 p2 ,
///  ImVec2 p3 ,
///  int num_segments
/// );
///```
void ImDrawList_PathBezierQuadraticCurveTo(
        Pointer<ImDrawList> self, ImVec2 p2, ImVec2 p3, int num_segments) =>
    _ImDrawList_PathBezierQuadraticCurveTo(self, p2, p3, num_segments);

late final _ImDrawList_PathBezierQuadraticCurveTo = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self, ImVec2 p2, ImVec2 p3, Int32 num_segments),
    void Function(Pointer<ImDrawList> self, ImVec2 p2, ImVec2 p3,
        int num_segments)>('ImDrawList_PathBezierQuadraticCurveTo');

///```c
/// void ImDrawList_PathClear(
///  ImDrawList* self
/// );
///```
void ImDrawList_PathClear(Pointer<ImDrawList> self) =>
    _ImDrawList_PathClear(self);

late final _ImDrawList_PathClear = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList_PathClear');

///```c
/// void ImDrawList_PathEllipticalArcTo(
///  ImDrawList* self ,
///  ImVec2 center ,
///  float radius_x ,
///  float radius_y ,
///  float rot ,
///  float a_min ,
///  float a_max ,
///  int num_segments
/// );
///```
void ImDrawList_PathEllipticalArcTo(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius_x,
        double radius_y,
        double rot,
        double a_min,
        double a_max,
        int num_segments) =>
    _ImDrawList_PathEllipticalArcTo(
        self, center, radius_x, radius_y, rot, a_min, a_max, num_segments);

late final _ImDrawList_PathEllipticalArcTo = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self,
        ImVec2 center,
        Float radius_x,
        Float radius_y,
        Float rot,
        Float a_min,
        Float a_max,
        Int32 num_segments),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 center,
        double radius_x,
        double radius_y,
        double rot,
        double a_min,
        double a_max,
        int num_segments)>('ImDrawList_PathEllipticalArcTo');

///```c
/// void ImDrawList_PathFillConvex(
///  ImDrawList* self ,
///  uint col
/// );
///```
void ImDrawList_PathFillConvex(Pointer<ImDrawList> self, int col) =>
    _ImDrawList_PathFillConvex(self, col);

late final _ImDrawList_PathFillConvex = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Uint32 col),
    void Function(
        Pointer<ImDrawList> self, int col)>('ImDrawList_PathFillConvex');

///```c
/// void ImDrawList_PathLineTo(
///  ImDrawList* self ,
///  ImVec2 pos
/// );
///```
void ImDrawList_PathLineTo(Pointer<ImDrawList> self, ImVec2 pos) =>
    _ImDrawList_PathLineTo(self, pos);

late final _ImDrawList_PathLineTo = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 pos),
    void Function(
        Pointer<ImDrawList> self, ImVec2 pos)>('ImDrawList_PathLineTo');

///```c
/// void ImDrawList_PathLineToMergeDuplicate(
///  ImDrawList* self ,
///  ImVec2 pos
/// );
///```
void ImDrawList_PathLineToMergeDuplicate(
        Pointer<ImDrawList> self, ImVec2 pos) =>
    _ImDrawList_PathLineToMergeDuplicate(self, pos);

late final _ImDrawList_PathLineToMergeDuplicate = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 pos),
    void Function(Pointer<ImDrawList> self,
        ImVec2 pos)>('ImDrawList_PathLineToMergeDuplicate');

///```c
/// void ImDrawList_PathRect(
///  ImDrawList* self ,
///  ImVec2 rect_min ,
///  ImVec2 rect_max ,
///  float rounding ,
///  ImDrawFlags flags
/// );
///```
void ImDrawList_PathRect(Pointer<ImDrawList> self, ImVec2 rect_min,
        ImVec2 rect_max, double rounding, int flags) =>
    _ImDrawList_PathRect(self, rect_min, rect_max, rounding, flags);

late final _ImDrawList_PathRect = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 rect_min, ImVec2 rect_max,
        Float rounding, Uint32 flags),
    void Function(Pointer<ImDrawList> self, ImVec2 rect_min, ImVec2 rect_max,
        double rounding, int flags)>('ImDrawList_PathRect');

///```c
/// void ImDrawList_PathStroke(
///  ImDrawList* self ,
///  uint col ,
///  ImDrawFlags flags ,
///  float thickness
/// );
///```
void ImDrawList_PathStroke(
        Pointer<ImDrawList> self, int col, int flags, double thickness) =>
    _ImDrawList_PathStroke(self, col, flags, thickness);

late final _ImDrawList_PathStroke = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self, Uint32 col, Uint32 flags, Float thickness),
    void Function(Pointer<ImDrawList> self, int col, int flags,
        double thickness)>('ImDrawList_PathStroke');

///```c
/// void ImDrawList_PopClipRect(
///  ImDrawList* self
/// );
///```
void ImDrawList_PopClipRect(Pointer<ImDrawList> self) =>
    _ImDrawList_PopClipRect(self);

late final _ImDrawList_PopClipRect = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList_PopClipRect');

///```c
/// void ImDrawList_PopTextureID(
///  ImDrawList* self
/// );
///```
void ImDrawList_PopTextureID(Pointer<ImDrawList> self) =>
    _ImDrawList_PopTextureID(self);

late final _ImDrawList_PopTextureID = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(Pointer<ImDrawList> self)>('ImDrawList_PopTextureID');

///```c
/// void ImDrawList_PrimQuadUV(
///  ImDrawList* self ,
///  ImVec2 a ,
///  ImVec2 b ,
///  ImVec2 c ,
///  ImVec2 d ,
///  ImVec2 uv_a ,
///  ImVec2 uv_b ,
///  ImVec2 uv_c ,
///  ImVec2 uv_d ,
///  uint col
/// );
///```
void ImDrawList_PrimQuadUV(
        Pointer<ImDrawList> self,
        ImVec2 a,
        ImVec2 b,
        ImVec2 c,
        ImVec2 d,
        ImVec2 uv_a,
        ImVec2 uv_b,
        ImVec2 uv_c,
        ImVec2 uv_d,
        int col) =>
    _ImDrawList_PrimQuadUV(self, a, b, c, d, uv_a, uv_b, uv_c, uv_d, col);

late final _ImDrawList_PrimQuadUV = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawList> self,
        ImVec2 a,
        ImVec2 b,
        ImVec2 c,
        ImVec2 d,
        ImVec2 uv_a,
        ImVec2 uv_b,
        ImVec2 uv_c,
        ImVec2 uv_d,
        Uint32 col),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 a,
        ImVec2 b,
        ImVec2 c,
        ImVec2 d,
        ImVec2 uv_a,
        ImVec2 uv_b,
        ImVec2 uv_c,
        ImVec2 uv_d,
        int col)>('ImDrawList_PrimQuadUV');

///```c
/// void ImDrawList_PrimRect(
///  ImDrawList* self ,
///  ImVec2 a ,
///  ImVec2 b ,
///  uint col
/// );
///```
void ImDrawList_PrimRect(
        Pointer<ImDrawList> self, ImVec2 a, ImVec2 b, int col) =>
    _ImDrawList_PrimRect(self, a, b, col);

late final _ImDrawList_PrimRect = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 a, ImVec2 b, Uint32 col),
    void Function(Pointer<ImDrawList> self, ImVec2 a, ImVec2 b,
        int col)>('ImDrawList_PrimRect');

///```c
/// void ImDrawList_PrimRectUV(
///  ImDrawList* self ,
///  ImVec2 a ,
///  ImVec2 b ,
///  ImVec2 uv_a ,
///  ImVec2 uv_b ,
///  uint col
/// );
///```
void ImDrawList_PrimRectUV(Pointer<ImDrawList> self, ImVec2 a, ImVec2 b,
        ImVec2 uv_a, ImVec2 uv_b, int col) =>
    _ImDrawList_PrimRectUV(self, a, b, uv_a, uv_b, col);

late final _ImDrawList_PrimRectUV = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 a, ImVec2 b, ImVec2 uv_a,
        ImVec2 uv_b, Uint32 col),
    void Function(Pointer<ImDrawList> self, ImVec2 a, ImVec2 b, ImVec2 uv_a,
        ImVec2 uv_b, int col)>('ImDrawList_PrimRectUV');

///```c
/// void ImDrawList_PrimReserve(
///  ImDrawList* self ,
///  int idx_count ,
///  int vtx_count
/// );
///```
void ImDrawList_PrimReserve(
        Pointer<ImDrawList> self, int idx_count, int vtx_count) =>
    _ImDrawList_PrimReserve(self, idx_count, vtx_count);

late final _ImDrawList_PrimReserve = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Int32 idx_count, Int32 vtx_count),
    void Function(Pointer<ImDrawList> self, int idx_count,
        int vtx_count)>('ImDrawList_PrimReserve');

///```c
/// void ImDrawList_PrimUnreserve(
///  ImDrawList* self ,
///  int idx_count ,
///  int vtx_count
/// );
///```
void ImDrawList_PrimUnreserve(
        Pointer<ImDrawList> self, int idx_count, int vtx_count) =>
    _ImDrawList_PrimUnreserve(self, idx_count, vtx_count);

late final _ImDrawList_PrimUnreserve = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Int32 idx_count, Int32 vtx_count),
    void Function(Pointer<ImDrawList> self, int idx_count,
        int vtx_count)>('ImDrawList_PrimUnreserve');

///```c
/// void ImDrawList_PrimVtx(
///  ImDrawList* self ,
///  ImVec2 pos ,
///  ImVec2 uv ,
///  uint col
/// );
///```
void ImDrawList_PrimVtx(
        Pointer<ImDrawList> self, ImVec2 pos, ImVec2 uv, int col) =>
    _ImDrawList_PrimVtx(self, pos, uv, col);

late final _ImDrawList_PrimVtx = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 pos, ImVec2 uv, Uint32 col),
    void Function(Pointer<ImDrawList> self, ImVec2 pos, ImVec2 uv,
        int col)>('ImDrawList_PrimVtx');

///```c
/// void ImDrawList_PrimWriteIdx(
///  ImDrawList* self ,
///  ushort idx
/// );
///```
void ImDrawList_PrimWriteIdx(Pointer<ImDrawList> self, int idx) =>
    _ImDrawList_PrimWriteIdx(self, idx);

late final _ImDrawList_PrimWriteIdx = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, Uint16 idx),
    void Function(
        Pointer<ImDrawList> self, int idx)>('ImDrawList_PrimWriteIdx');

///```c
/// void ImDrawList_PrimWriteVtx(
///  ImDrawList* self ,
///  ImVec2 pos ,
///  ImVec2 uv ,
///  uint col
/// );
///```
void ImDrawList_PrimWriteVtx(
        Pointer<ImDrawList> self, ImVec2 pos, ImVec2 uv, int col) =>
    _ImDrawList_PrimWriteVtx(self, pos, uv, col);

late final _ImDrawList_PrimWriteVtx = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 pos, ImVec2 uv, Uint32 col),
    void Function(Pointer<ImDrawList> self, ImVec2 pos, ImVec2 uv,
        int col)>('ImDrawList_PrimWriteVtx');

///```c
/// void ImDrawList_PushClipRect(
///  ImDrawList* self ,
///  ImVec2 clip_rect_min ,
///  ImVec2 clip_rect_max ,
///  byte intersect_with_current_clip_rect
/// );
///```
void ImDrawList_PushClipRect(Pointer<ImDrawList> self, ImVec2 clip_rect_min,
        ImVec2 clip_rect_max, int intersect_with_current_clip_rect) =>
    _ImDrawList_PushClipRect(
        self, clip_rect_min, clip_rect_max, intersect_with_current_clip_rect);

late final _ImDrawList_PushClipRect = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, ImVec2 clip_rect_min,
        ImVec2 clip_rect_max, Uint8 intersect_with_current_clip_rect),
    void Function(
        Pointer<ImDrawList> self,
        ImVec2 clip_rect_min,
        ImVec2 clip_rect_max,
        int intersect_with_current_clip_rect)>('ImDrawList_PushClipRect');

///```c
/// void ImDrawList_PushClipRectFullScreen(
///  ImDrawList* self
/// );
///```
void ImDrawList_PushClipRectFullScreen(Pointer<ImDrawList> self) =>
    _ImDrawList_PushClipRectFullScreen(self);

late final _ImDrawList_PushClipRectFullScreen = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self),
    void Function(
        Pointer<ImDrawList> self)>('ImDrawList_PushClipRectFullScreen');

///```c
/// void ImDrawList_PushTextureID(
///  ImDrawList* self ,
///  IntPtr texture_id
/// );
///```
void ImDrawList_PushTextureID(Pointer<ImDrawList> self, int texture_id) =>
    _ImDrawList_PushTextureID(self, texture_id);

late final _ImDrawList_PushTextureID = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawList> self, IntPtr texture_id),
    void Function(
        Pointer<ImDrawList> self, int texture_id)>('ImDrawList_PushTextureID');

///```c
/// void ImDrawListSplitter_Clear(
///  ImDrawListSplitter* self
/// );
///```
void ImDrawListSplitter_Clear(Pointer<ImDrawListSplitter> self) =>
    _ImDrawListSplitter_Clear(self);

late final _ImDrawListSplitter_Clear = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawListSplitter> self),
    void Function(
        Pointer<ImDrawListSplitter> self)>('ImDrawListSplitter_Clear');

///```c
/// void ImDrawListSplitter_ClearFreeMemory(
///  ImDrawListSplitter* self
/// );
///```
void ImDrawListSplitter_ClearFreeMemory(Pointer<ImDrawListSplitter> self) =>
    _ImDrawListSplitter_ClearFreeMemory(self);

late final _ImDrawListSplitter_ClearFreeMemory = _cimgui.lookupFunction<
        Void Function(Pointer<ImDrawListSplitter> self),
        void Function(Pointer<ImDrawListSplitter> self)>(
    'ImDrawListSplitter_ClearFreeMemory');

///```c
/// void ImDrawListSplitter_destroy(
///  ImDrawListSplitter* self
/// );
///```
void ImDrawListSplitter_destroy(Pointer<ImDrawListSplitter> self) =>
    _ImDrawListSplitter_destroy(self);

late final _ImDrawListSplitter_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawListSplitter> self),
    void Function(
        Pointer<ImDrawListSplitter> self)>('ImDrawListSplitter_destroy');

///```c
/// ImDrawListSplitter* ImDrawListSplitter_ImDrawListSplitter(
/// );
///```
Pointer<ImDrawListSplitter> ImDrawListSplitter_ImDrawListSplitter() =>
    _ImDrawListSplitter_ImDrawListSplitter();

late final _ImDrawListSplitter_ImDrawListSplitter = _cimgui.lookupFunction<
    Pointer<ImDrawListSplitter> Function(),
    Pointer<ImDrawListSplitter>
        Function()>('ImDrawListSplitter_ImDrawListSplitter');

///```c
/// void ImDrawListSplitter_Merge(
///  ImDrawListSplitter* self ,
///  ImDrawList* draw_list
/// );
///```
void ImDrawListSplitter_Merge(
        Pointer<ImDrawListSplitter> self, Pointer<ImDrawList> draw_list) =>
    _ImDrawListSplitter_Merge(self, draw_list);

late final _ImDrawListSplitter_Merge = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImDrawListSplitter> self, Pointer<ImDrawList> draw_list),
    void Function(Pointer<ImDrawListSplitter> self,
        Pointer<ImDrawList> draw_list)>('ImDrawListSplitter_Merge');

///```c
/// void ImDrawListSplitter_SetCurrentChannel(
///  ImDrawListSplitter* self ,
///  ImDrawList* draw_list ,
///  int channel_idx
/// );
///```
void ImDrawListSplitter_SetCurrentChannel(Pointer<ImDrawListSplitter> self,
        Pointer<ImDrawList> draw_list, int channel_idx) =>
    _ImDrawListSplitter_SetCurrentChannel(self, draw_list, channel_idx);

late final _ImDrawListSplitter_SetCurrentChannel = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawListSplitter> self,
        Pointer<ImDrawList> draw_list, Int32 channel_idx),
    void Function(
        Pointer<ImDrawListSplitter> self,
        Pointer<ImDrawList> draw_list,
        int channel_idx)>('ImDrawListSplitter_SetCurrentChannel');

///```c
/// void ImDrawListSplitter_Split(
///  ImDrawListSplitter* self ,
///  ImDrawList* draw_list ,
///  int count
/// );
///```
void ImDrawListSplitter_Split(Pointer<ImDrawListSplitter> self,
        Pointer<ImDrawList> draw_list, int count) =>
    _ImDrawListSplitter_Split(self, draw_list, count);

late final _ImDrawListSplitter_Split = _cimgui.lookupFunction<
    Void Function(Pointer<ImDrawListSplitter> self,
        Pointer<ImDrawList> draw_list, Int32 count),
    void Function(Pointer<ImDrawListSplitter> self,
        Pointer<ImDrawList> draw_list, int count)>('ImDrawListSplitter_Split');

///```c
/// void ImFont_AddGlyph(
///  ImFont* self ,
///  ImFontConfig* src_cfg ,
///  ushort c ,
///  float x0 ,
///  float y0 ,
///  float x1 ,
///  float y1 ,
///  float u0 ,
///  float v0 ,
///  float u1 ,
///  float v1 ,
///  float advance_x
/// );
///```
void ImFont_AddGlyph(
        Pointer<ImFont> self,
        Pointer<ImFontConfig> src_cfg,
        int c,
        double x0,
        double y0,
        double x1,
        double y1,
        double u0,
        double v0,
        double u1,
        double v1,
        double advance_x) =>
    _ImFont_AddGlyph(
        self, src_cfg, c, x0, y0, x1, y1, u0, v0, u1, v1, advance_x);

late final _ImFont_AddGlyph = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFont> self,
        Pointer<ImFontConfig> src_cfg,
        Uint16 c,
        Float x0,
        Float y0,
        Float x1,
        Float y1,
        Float u0,
        Float v0,
        Float u1,
        Float v1,
        Float advance_x),
    void Function(
        Pointer<ImFont> self,
        Pointer<ImFontConfig> src_cfg,
        int c,
        double x0,
        double y0,
        double x1,
        double y1,
        double u0,
        double v0,
        double u1,
        double v1,
        double advance_x)>('ImFont_AddGlyph');

///```c
/// void ImFont_AddRemapChar(
///  ImFont* self ,
///  ushort dst ,
///  ushort src ,
///  byte overwrite_dst
/// );
///```
void ImFont_AddRemapChar(
        Pointer<ImFont> self, int dst, int src, int overwrite_dst) =>
    _ImFont_AddRemapChar(self, dst, src, overwrite_dst);

late final _ImFont_AddRemapChar = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFont> self, Uint16 dst, Uint16 src, Uint8 overwrite_dst),
    void Function(Pointer<ImFont> self, int dst, int src,
        int overwrite_dst)>('ImFont_AddRemapChar');

///```c
/// void ImFont_BuildLookupTable(
///  ImFont* self
/// );
///```
void ImFont_BuildLookupTable(Pointer<ImFont> self) =>
    _ImFont_BuildLookupTable(self);

late final _ImFont_BuildLookupTable = _cimgui.lookupFunction<
    Void Function(Pointer<ImFont> self),
    void Function(Pointer<ImFont> self)>('ImFont_BuildLookupTable');

///```c
/// void ImFont_CalcTextSizeA(
///  ImVec2* pOut ,
///  ImFont* self ,
///  float size ,
///  float max_width ,
///  float wrap_width ,
///  byte* text_begin ,
///  byte* text_end ,
///  byte** remaining
/// );
///```
void ImFont_CalcTextSizeA(
        Pointer<ImVec2> pOut,
        Pointer<ImFont> self,
        double size,
        double max_width,
        double wrap_width,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        Pointer<Pointer<Uint8>> remaining) =>
    _ImFont_CalcTextSizeA(pOut, self, size, max_width, wrap_width, text_begin,
        text_end, remaining);

late final _ImFont_CalcTextSizeA = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImVec2> pOut,
        Pointer<ImFont> self,
        Float size,
        Float max_width,
        Float wrap_width,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        Pointer<Pointer<Uint8>> remaining),
    void Function(
        Pointer<ImVec2> pOut,
        Pointer<ImFont> self,
        double size,
        double max_width,
        double wrap_width,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        Pointer<Pointer<Uint8>> remaining)>('ImFont_CalcTextSizeA');

///```c
/// byte* ImFont_CalcWordWrapPositionA(
///  ImFont* self ,
///  float scale ,
///  byte* text ,
///  byte* text_end ,
///  float wrap_width
/// );
///```
Pointer<Uint8> ImFont_CalcWordWrapPositionA(Pointer<ImFont> self, double scale,
        Pointer<Uint8> text, Pointer<Uint8> text_end, double wrap_width) =>
    _ImFont_CalcWordWrapPositionA(self, scale, text, text_end, wrap_width);

late final _ImFont_CalcWordWrapPositionA = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Pointer<ImFont> self, Float scale,
        Pointer<Uint8> text, Pointer<Uint8> text_end, Float wrap_width),
    Pointer<Uint8> Function(
        Pointer<ImFont> self,
        double scale,
        Pointer<Uint8> text,
        Pointer<Uint8> text_end,
        double wrap_width)>('ImFont_CalcWordWrapPositionA');

///```c
/// void ImFont_ClearOutputData(
///  ImFont* self
/// );
///```
void ImFont_ClearOutputData(Pointer<ImFont> self) =>
    _ImFont_ClearOutputData(self);

late final _ImFont_ClearOutputData = _cimgui.lookupFunction<
    Void Function(Pointer<ImFont> self),
    void Function(Pointer<ImFont> self)>('ImFont_ClearOutputData');

///```c
/// void ImFont_destroy(
///  ImFont* self
/// );
///```
void ImFont_destroy(Pointer<ImFont> self) => _ImFont_destroy(self);

late final _ImFont_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImFont> self),
    void Function(Pointer<ImFont> self)>('ImFont_destroy');

///```c
/// ImFontGlyph* ImFont_FindGlyph(
///  ImFont* self ,
///  ushort c
/// );
///```
Pointer<ImFontGlyph> ImFont_FindGlyph(Pointer<ImFont> self, int c) =>
    _ImFont_FindGlyph(self, c);

late final _ImFont_FindGlyph = _cimgui.lookupFunction<
    Pointer<ImFontGlyph> Function(Pointer<ImFont> self, Uint16 c),
    Pointer<ImFontGlyph> Function(
        Pointer<ImFont> self, int c)>('ImFont_FindGlyph');

///```c
/// ImFontGlyph* ImFont_FindGlyphNoFallback(
///  ImFont* self ,
///  ushort c
/// );
///```
Pointer<ImFontGlyph> ImFont_FindGlyphNoFallback(Pointer<ImFont> self, int c) =>
    _ImFont_FindGlyphNoFallback(self, c);

late final _ImFont_FindGlyphNoFallback = _cimgui.lookupFunction<
    Pointer<ImFontGlyph> Function(Pointer<ImFont> self, Uint16 c),
    Pointer<ImFontGlyph> Function(
        Pointer<ImFont> self, int c)>('ImFont_FindGlyphNoFallback');

///```c
/// float ImFont_GetCharAdvance(
///  ImFont* self ,
///  ushort c
/// );
///```
double ImFont_GetCharAdvance(Pointer<ImFont> self, int c) =>
    _ImFont_GetCharAdvance(self, c);

late final _ImFont_GetCharAdvance = _cimgui.lookupFunction<
    Float Function(Pointer<ImFont> self, Uint16 c),
    double Function(Pointer<ImFont> self, int c)>('ImFont_GetCharAdvance');

///```c
/// byte* ImFont_GetDebugName(
///  ImFont* self
/// );
///```
Pointer<Uint8> ImFont_GetDebugName(Pointer<ImFont> self) =>
    _ImFont_GetDebugName(self);

late final _ImFont_GetDebugName = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Pointer<ImFont> self),
    Pointer<Uint8> Function(Pointer<ImFont> self)>('ImFont_GetDebugName');

///```c
/// void ImFont_GrowIndex(
///  ImFont* self ,
///  int new_size
/// );
///```
void ImFont_GrowIndex(Pointer<ImFont> self, int new_size) =>
    _ImFont_GrowIndex(self, new_size);

late final _ImFont_GrowIndex = _cimgui.lookupFunction<
    Void Function(Pointer<ImFont> self, Int32 new_size),
    void Function(Pointer<ImFont> self, int new_size)>('ImFont_GrowIndex');

///```c
/// ImFont* ImFont_ImFont(
/// );
///```
Pointer<ImFont> ImFont_ImFont() => _ImFont_ImFont();

late final _ImFont_ImFont = _cimgui.lookupFunction<Pointer<ImFont> Function(),
    Pointer<ImFont> Function()>('ImFont_ImFont');

///```c
/// byte ImFont_IsGlyphRangeUnused(
///  ImFont* self ,
///  uint c_begin ,
///  uint c_last
/// );
///```
int ImFont_IsGlyphRangeUnused(Pointer<ImFont> self, int c_begin, int c_last) =>
    _ImFont_IsGlyphRangeUnused(self, c_begin, c_last);

late final _ImFont_IsGlyphRangeUnused = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImFont> self, Uint32 c_begin, Uint32 c_last),
    int Function(Pointer<ImFont> self, int c_begin,
        int c_last)>('ImFont_IsGlyphRangeUnused');

///```c
/// byte ImFont_IsLoaded(
///  ImFont* self
/// );
///```
int ImFont_IsLoaded(Pointer<ImFont> self) => _ImFont_IsLoaded(self);

late final _ImFont_IsLoaded = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImFont> self),
    int Function(Pointer<ImFont> self)>('ImFont_IsLoaded');

///```c
/// void ImFont_RenderChar(
///  ImFont* self ,
///  ImDrawList* draw_list ,
///  float size ,
///  ImVec2 pos ,
///  uint col ,
///  ushort c
/// );
///```
void ImFont_RenderChar(Pointer<ImFont> self, Pointer<ImDrawList> draw_list,
        double size, ImVec2 pos, int col, int c) =>
    _ImFont_RenderChar(self, draw_list, size, pos, col, c);

late final _ImFont_RenderChar = _cimgui.lookupFunction<
    Void Function(Pointer<ImFont> self, Pointer<ImDrawList> draw_list,
        Float size, ImVec2 pos, Uint32 col, Uint16 c),
    void Function(Pointer<ImFont> self, Pointer<ImDrawList> draw_list,
        double size, ImVec2 pos, int col, int c)>('ImFont_RenderChar');

///```c
/// void ImFont_RenderText(
///  ImFont* self ,
///  ImDrawList* draw_list ,
///  float size ,
///  ImVec2 pos ,
///  uint col ,
///  ImVec4 clip_rect ,
///  byte* text_begin ,
///  byte* text_end ,
///  float wrap_width ,
///  byte cpu_fine_clip
/// );
///```
void ImFont_RenderText(
        Pointer<ImFont> self,
        Pointer<ImDrawList> draw_list,
        double size,
        ImVec2 pos,
        int col,
        ImVec4 clip_rect,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        double wrap_width,
        int cpu_fine_clip) =>
    _ImFont_RenderText(self, draw_list, size, pos, col, clip_rect, text_begin,
        text_end, wrap_width, cpu_fine_clip);

late final _ImFont_RenderText = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFont> self,
        Pointer<ImDrawList> draw_list,
        Float size,
        ImVec2 pos,
        Uint32 col,
        ImVec4 clip_rect,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        Float wrap_width,
        Uint8 cpu_fine_clip),
    void Function(
        Pointer<ImFont> self,
        Pointer<ImDrawList> draw_list,
        double size,
        ImVec2 pos,
        int col,
        ImVec4 clip_rect,
        Pointer<Uint8> text_begin,
        Pointer<Uint8> text_end,
        double wrap_width,
        int cpu_fine_clip)>('ImFont_RenderText');

///```c
/// void ImFont_SetGlyphVisible(
///  ImFont* self ,
///  ushort c ,
///  byte visible
/// );
///```
void ImFont_SetGlyphVisible(Pointer<ImFont> self, int c, int visible) =>
    _ImFont_SetGlyphVisible(self, c, visible);

late final _ImFont_SetGlyphVisible = _cimgui.lookupFunction<
    Void Function(Pointer<ImFont> self, Uint16 c, Uint8 visible),
    void Function(
        Pointer<ImFont> self, int c, int visible)>('ImFont_SetGlyphVisible');

///```c
/// int ImFontAtlas_AddCustomRectFontGlyph(
///  ImFontAtlas* self ,
///  ImFont* font ,
///  ushort id ,
///  int width ,
///  int height ,
///  float advance_x ,
///  ImVec2 offset
/// );
///```
int ImFontAtlas_AddCustomRectFontGlyph(
        Pointer<ImFontAtlas> self,
        Pointer<ImFont> font,
        int id,
        int width,
        int height,
        double advance_x,
        ImVec2 offset) =>
    _ImFontAtlas_AddCustomRectFontGlyph(
        self, font, id, width, height, advance_x, offset);

late final _ImFontAtlas_AddCustomRectFontGlyph = _cimgui.lookupFunction<
    Int32 Function(Pointer<ImFontAtlas> self, Pointer<ImFont> font, Uint16 id,
        Int32 width, Int32 height, Float advance_x, ImVec2 offset),
    int Function(
        Pointer<ImFontAtlas> self,
        Pointer<ImFont> font,
        int id,
        int width,
        int height,
        double advance_x,
        ImVec2 offset)>('ImFontAtlas_AddCustomRectFontGlyph');

///```c
/// int ImFontAtlas_AddCustomRectRegular(
///  ImFontAtlas* self ,
///  int width ,
///  int height
/// );
///```
int ImFontAtlas_AddCustomRectRegular(
        Pointer<ImFontAtlas> self, int width, int height) =>
    _ImFontAtlas_AddCustomRectRegular(self, width, height);

late final _ImFontAtlas_AddCustomRectRegular = _cimgui.lookupFunction<
    Int32 Function(Pointer<ImFontAtlas> self, Int32 width, Int32 height),
    int Function(Pointer<ImFontAtlas> self, int width,
        int height)>('ImFontAtlas_AddCustomRectRegular');

///```c
/// ImFont* ImFontAtlas_AddFont(
///  ImFontAtlas* self ,
///  ImFontConfig* font_cfg
/// );
///```
Pointer<ImFont> ImFontAtlas_AddFont(
        Pointer<ImFontAtlas> self, Pointer<ImFontConfig> font_cfg) =>
    _ImFontAtlas_AddFont(self, font_cfg);

late final _ImFontAtlas_AddFont = _cimgui.lookupFunction<
    Pointer<ImFont> Function(
        Pointer<ImFontAtlas> self, Pointer<ImFontConfig> font_cfg),
    Pointer<ImFont> Function(Pointer<ImFontAtlas> self,
        Pointer<ImFontConfig> font_cfg)>('ImFontAtlas_AddFont');

///```c
/// ImFont* ImFontAtlas_AddFontDefault(
///  ImFontAtlas* self ,
///  ImFontConfig* font_cfg
/// );
///```
Pointer<ImFont> ImFontAtlas_AddFontDefault(
        Pointer<ImFontAtlas> self, Pointer<ImFontConfig> font_cfg) =>
    _ImFontAtlas_AddFontDefault(self, font_cfg);

late final _ImFontAtlas_AddFontDefault = _cimgui.lookupFunction<
    Pointer<ImFont> Function(
        Pointer<ImFontAtlas> self, Pointer<ImFontConfig> font_cfg),
    Pointer<ImFont> Function(Pointer<ImFontAtlas> self,
        Pointer<ImFontConfig> font_cfg)>('ImFontAtlas_AddFontDefault');

///```c
/// ImFont* ImFontAtlas_AddFontFromFileTTF(
///  ImFontAtlas* self ,
///  byte* filename ,
///  float size_pixels ,
///  ImFontConfig* font_cfg ,
///  ushort* glyph_ranges
/// );
///```
Pointer<ImFont> ImFontAtlas_AddFontFromFileTTF(
        Pointer<ImFontAtlas> self,
        Pointer<Uint8> filename,
        double size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges) =>
    _ImFontAtlas_AddFontFromFileTTF(
        self, filename, size_pixels, font_cfg, glyph_ranges);

late final _ImFontAtlas_AddFontFromFileTTF = _cimgui.lookupFunction<
    Pointer<ImFont> Function(
        Pointer<ImFontAtlas> self,
        Pointer<Uint8> filename,
        Float size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges),
    Pointer<ImFont> Function(
        Pointer<ImFontAtlas> self,
        Pointer<Uint8> filename,
        double size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges)>('ImFontAtlas_AddFontFromFileTTF');

///```c
/// ImFont* ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(
///  ImFontAtlas* self ,
///  byte* compressed_font_data_base85 ,
///  float size_pixels ,
///  ImFontConfig* font_cfg ,
///  ushort* glyph_ranges
/// );
///```
Pointer<ImFont> ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(
        Pointer<ImFontAtlas> self,
        Pointer<Uint8> compressed_font_data_base85,
        double size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges) =>
    _ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(
        self, compressed_font_data_base85, size_pixels, font_cfg, glyph_ranges);

late final _ImFontAtlas_AddFontFromMemoryCompressedBase85TTF =
    _cimgui.lookupFunction<
            Pointer<ImFont> Function(
                Pointer<ImFontAtlas> self,
                Pointer<Uint8> compressed_font_data_base85,
                Float size_pixels,
                Pointer<ImFontConfig> font_cfg,
                Pointer<Uint16> glyph_ranges),
            Pointer<ImFont> Function(
                Pointer<ImFontAtlas> self,
                Pointer<Uint8> compressed_font_data_base85,
                double size_pixels,
                Pointer<ImFontConfig> font_cfg,
                Pointer<Uint16> glyph_ranges)>(
        'ImFontAtlas_AddFontFromMemoryCompressedBase85TTF');

///```c
/// ImFont* ImFontAtlas_AddFontFromMemoryCompressedTTF(
///  ImFontAtlas* self ,
///  void* compressed_font_data ,
///  int compressed_font_data_size ,
///  float size_pixels ,
///  ImFontConfig* font_cfg ,
///  ushort* glyph_ranges
/// );
///```
Pointer<ImFont> ImFontAtlas_AddFontFromMemoryCompressedTTF(
        Pointer<ImFontAtlas> self,
        Pointer<Void> compressed_font_data,
        int compressed_font_data_size,
        double size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges) =>
    _ImFontAtlas_AddFontFromMemoryCompressedTTF(self, compressed_font_data,
        compressed_font_data_size, size_pixels, font_cfg, glyph_ranges);

late final _ImFontAtlas_AddFontFromMemoryCompressedTTF = _cimgui.lookupFunction<
        Pointer<ImFont> Function(
            Pointer<ImFontAtlas> self,
            Pointer<Void> compressed_font_data,
            Int32 compressed_font_data_size,
            Float size_pixels,
            Pointer<ImFontConfig> font_cfg,
            Pointer<Uint16> glyph_ranges),
        Pointer<ImFont> Function(
            Pointer<ImFontAtlas> self,
            Pointer<Void> compressed_font_data,
            int compressed_font_data_size,
            double size_pixels,
            Pointer<ImFontConfig> font_cfg,
            Pointer<Uint16> glyph_ranges)>(
    'ImFontAtlas_AddFontFromMemoryCompressedTTF');

///```c
/// ImFont* ImFontAtlas_AddFontFromMemoryTTF(
///  ImFontAtlas* self ,
///  void* font_data ,
///  int font_data_size ,
///  float size_pixels ,
///  ImFontConfig* font_cfg ,
///  ushort* glyph_ranges
/// );
///```
Pointer<ImFont> ImFontAtlas_AddFontFromMemoryTTF(
        Pointer<ImFontAtlas> self,
        Pointer<Void> font_data,
        int font_data_size,
        double size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges) =>
    _ImFontAtlas_AddFontFromMemoryTTF(
        self, font_data, font_data_size, size_pixels, font_cfg, glyph_ranges);

late final _ImFontAtlas_AddFontFromMemoryTTF = _cimgui.lookupFunction<
    Pointer<ImFont> Function(
        Pointer<ImFontAtlas> self,
        Pointer<Void> font_data,
        Int32 font_data_size,
        Float size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges),
    Pointer<ImFont> Function(
        Pointer<ImFontAtlas> self,
        Pointer<Void> font_data,
        int font_data_size,
        double size_pixels,
        Pointer<ImFontConfig> font_cfg,
        Pointer<Uint16> glyph_ranges)>('ImFontAtlas_AddFontFromMemoryTTF');

///```c
/// byte ImFontAtlas_Build(
///  ImFontAtlas* self
/// );
///```
int ImFontAtlas_Build(Pointer<ImFontAtlas> self) => _ImFontAtlas_Build(self);

late final _ImFontAtlas_Build = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImFontAtlas> self),
    int Function(Pointer<ImFontAtlas> self)>('ImFontAtlas_Build');

///```c
/// void ImFontAtlas_CalcCustomRectUV(
///  ImFontAtlas* self ,
///  ImFontAtlasCustomRect* rect ,
///  ImVec2* out_uv_min ,
///  ImVec2* out_uv_max
/// );
///```
void ImFontAtlas_CalcCustomRectUV(
        Pointer<ImFontAtlas> self,
        Pointer<ImFontAtlasCustomRect> rect,
        Pointer<ImVec2> out_uv_min,
        Pointer<ImVec2> out_uv_max) =>
    _ImFontAtlas_CalcCustomRectUV(self, rect, out_uv_min, out_uv_max);

late final _ImFontAtlas_CalcCustomRectUV = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFontAtlas> self,
        Pointer<ImFontAtlasCustomRect> rect,
        Pointer<ImVec2> out_uv_min,
        Pointer<ImVec2> out_uv_max),
    void Function(
        Pointer<ImFontAtlas> self,
        Pointer<ImFontAtlasCustomRect> rect,
        Pointer<ImVec2> out_uv_min,
        Pointer<ImVec2> out_uv_max)>('ImFontAtlas_CalcCustomRectUV');

///```c
/// void ImFontAtlas_Clear(
///  ImFontAtlas* self
/// );
///```
void ImFontAtlas_Clear(Pointer<ImFontAtlas> self) => _ImFontAtlas_Clear(self);

late final _ImFontAtlas_Clear = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontAtlas> self),
    void Function(Pointer<ImFontAtlas> self)>('ImFontAtlas_Clear');

///```c
/// void ImFontAtlas_ClearFonts(
///  ImFontAtlas* self
/// );
///```
void ImFontAtlas_ClearFonts(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_ClearFonts(self);

late final _ImFontAtlas_ClearFonts = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontAtlas> self),
    void Function(Pointer<ImFontAtlas> self)>('ImFontAtlas_ClearFonts');

///```c
/// void ImFontAtlas_ClearInputData(
///  ImFontAtlas* self
/// );
///```
void ImFontAtlas_ClearInputData(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_ClearInputData(self);

late final _ImFontAtlas_ClearInputData = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontAtlas> self),
    void Function(Pointer<ImFontAtlas> self)>('ImFontAtlas_ClearInputData');

///```c
/// void ImFontAtlas_ClearTexData(
///  ImFontAtlas* self
/// );
///```
void ImFontAtlas_ClearTexData(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_ClearTexData(self);

late final _ImFontAtlas_ClearTexData = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontAtlas> self),
    void Function(Pointer<ImFontAtlas> self)>('ImFontAtlas_ClearTexData');

///```c
/// void ImFontAtlas_destroy(
///  ImFontAtlas* self
/// );
///```
void ImFontAtlas_destroy(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_destroy(self);

late final _ImFontAtlas_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontAtlas> self),
    void Function(Pointer<ImFontAtlas> self)>('ImFontAtlas_destroy');

///```c
/// ImFontAtlasCustomRect* ImFontAtlas_GetCustomRectByIndex(
///  ImFontAtlas* self ,
///  int index
/// );
///```
Pointer<ImFontAtlasCustomRect> ImFontAtlas_GetCustomRectByIndex(
        Pointer<ImFontAtlas> self, int index) =>
    _ImFontAtlas_GetCustomRectByIndex(self, index);

late final _ImFontAtlas_GetCustomRectByIndex = _cimgui.lookupFunction<
    Pointer<ImFontAtlasCustomRect> Function(
        Pointer<ImFontAtlas> self, Int32 index),
    Pointer<ImFontAtlasCustomRect> Function(Pointer<ImFontAtlas> self,
        int index)>('ImFontAtlas_GetCustomRectByIndex');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesChineseFull(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesChineseFull(
        Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesChineseFull(self);

late final _ImFontAtlas_GetGlyphRangesChineseFull = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesChineseFull');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(
        Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self);

late final _ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon =
    _cimgui.lookupFunction<Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
            Pointer<Uint16> Function(Pointer<ImFontAtlas> self)>(
        'ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesCyrillic(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesCyrillic(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesCyrillic(self);

late final _ImFontAtlas_GetGlyphRangesCyrillic = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesCyrillic');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesDefault(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesDefault(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesDefault(self);

late final _ImFontAtlas_GetGlyphRangesDefault = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesDefault');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesGreek(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesGreek(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesGreek(self);

late final _ImFontAtlas_GetGlyphRangesGreek = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesGreek');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesJapanese(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesJapanese(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesJapanese(self);

late final _ImFontAtlas_GetGlyphRangesJapanese = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesJapanese');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesKorean(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesKorean(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesKorean(self);

late final _ImFontAtlas_GetGlyphRangesKorean = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesKorean');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesThai(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesThai(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesThai(self);

late final _ImFontAtlas_GetGlyphRangesThai = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesThai');

///```c
/// ushort* ImFontAtlas_GetGlyphRangesVietnamese(
///  ImFontAtlas* self
/// );
///```
Pointer<Uint16> ImFontAtlas_GetGlyphRangesVietnamese(
        Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_GetGlyphRangesVietnamese(self);

late final _ImFontAtlas_GetGlyphRangesVietnamese = _cimgui.lookupFunction<
    Pointer<Uint16> Function(Pointer<ImFontAtlas> self),
    Pointer<Uint16> Function(
        Pointer<ImFontAtlas> self)>('ImFontAtlas_GetGlyphRangesVietnamese');

///```c
/// byte ImFontAtlas_GetMouseCursorTexData(
///  ImFontAtlas* self ,
///  ImGuiMouseCursor cursor ,
///  ImVec2* out_offset ,
///  ImVec2* out_size ,
///  Vector2* out_uv_border ,
///  Vector2* out_uv_fill
/// );
///```
int ImFontAtlas_GetMouseCursorTexData(
        Pointer<ImFontAtlas> self,
        int cursor,
        Pointer<ImVec2> out_offset,
        Pointer<ImVec2> out_size,
        Pointer<ImVector2> out_uv_border,
        Pointer<ImVector2> out_uv_fill) =>
    _ImFontAtlas_GetMouseCursorTexData(
        self, cursor, out_offset, out_size, out_uv_border, out_uv_fill);

late final _ImFontAtlas_GetMouseCursorTexData = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<ImFontAtlas> self,
        Uint32 cursor,
        Pointer<ImVec2> out_offset,
        Pointer<ImVec2> out_size,
        Pointer<ImVector2> out_uv_border,
        Pointer<ImVector2> out_uv_fill),
    int Function(
        Pointer<ImFontAtlas> self,
        int cursor,
        Pointer<ImVec2> out_offset,
        Pointer<ImVec2> out_size,
        Pointer<ImVector2> out_uv_border,
        Pointer<ImVector2> out_uv_fill)>('ImFontAtlas_GetMouseCursorTexData');

///```c
/// void ImFontAtlas_GetTexDataAsAlpha8(
///  ImFontAtlas* self ,
///  byte** out_pixels ,
///  int* out_width ,
///  int* out_height ,
///  int* out_bytes_per_pixel
/// );
///```
void ImFontAtlas_GetTexDataAsAlpha8(
        Pointer<ImFontAtlas> self,
        Pointer<Pointer<Uint8>> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel) =>
    _ImFontAtlas_GetTexDataAsAlpha8(
        self, out_pixels, out_width, out_height, out_bytes_per_pixel);

late final _ImFontAtlas_GetTexDataAsAlpha8 = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFontAtlas> self,
        Pointer<Pointer<Uint8>> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel),
    void Function(
        Pointer<ImFontAtlas> self,
        Pointer<Pointer<Uint8>> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel)>('ImFontAtlas_GetTexDataAsAlpha8');

///```c
/// void ImFontAtlas_GetTexDataAsAlpha8(
///  ImFontAtlas* self ,
///  IntPtr* out_pixels ,
///  int* out_width ,
///  int* out_height ,
///  int* out_bytes_per_pixel
/// );
///```
void ImFontAtlas_GetTexDataAsAlpha8_0(
        Pointer<ImFontAtlas> self,
        Pointer<IntPtr> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel) =>
    _ImFontAtlas_GetTexDataAsAlpha8_0(
        self, out_pixels, out_width, out_height, out_bytes_per_pixel);

late final _ImFontAtlas_GetTexDataAsAlpha8_0 = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFontAtlas> self,
        Pointer<IntPtr> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel),
    void Function(
        Pointer<ImFontAtlas> self,
        Pointer<IntPtr> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel)>('ImFontAtlas_GetTexDataAsAlpha8');

///```c
/// void ImFontAtlas_GetTexDataAsRGBA32(
///  ImFontAtlas* self ,
///  byte** out_pixels ,
///  int* out_width ,
///  int* out_height ,
///  int* out_bytes_per_pixel
/// );
///```
void ImFontAtlas_GetTexDataAsRGBA32(
        Pointer<ImFontAtlas> self,
        Pointer<Pointer<Uint8>> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel) =>
    _ImFontAtlas_GetTexDataAsRGBA32(
        self, out_pixels, out_width, out_height, out_bytes_per_pixel);

late final _ImFontAtlas_GetTexDataAsRGBA32 = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFontAtlas> self,
        Pointer<Pointer<Uint8>> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel),
    void Function(
        Pointer<ImFontAtlas> self,
        Pointer<Pointer<Uint8>> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel)>('ImFontAtlas_GetTexDataAsRGBA32');

///```c
/// void ImFontAtlas_GetTexDataAsRGBA32(
///  ImFontAtlas* self ,
///  IntPtr* out_pixels ,
///  int* out_width ,
///  int* out_height ,
///  int* out_bytes_per_pixel
/// );
///```
void ImFontAtlas_GetTexDataAsRGBA32_0(
        Pointer<ImFontAtlas> self,
        Pointer<IntPtr> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel) =>
    _ImFontAtlas_GetTexDataAsRGBA32_0(
        self, out_pixels, out_width, out_height, out_bytes_per_pixel);

late final _ImFontAtlas_GetTexDataAsRGBA32_0 = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFontAtlas> self,
        Pointer<IntPtr> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel),
    void Function(
        Pointer<ImFontAtlas> self,
        Pointer<IntPtr> out_pixels,
        Pointer<Int32> out_width,
        Pointer<Int32> out_height,
        Pointer<Int32> out_bytes_per_pixel)>('ImFontAtlas_GetTexDataAsRGBA32');

///```c
/// ImFontAtlas* ImFontAtlas_ImFontAtlas(
/// );
///```
Pointer<ImFontAtlas> ImFontAtlas_ImFontAtlas() => _ImFontAtlas_ImFontAtlas();

late final _ImFontAtlas_ImFontAtlas = _cimgui.lookupFunction<
    Pointer<ImFontAtlas> Function(),
    Pointer<ImFontAtlas> Function()>('ImFontAtlas_ImFontAtlas');

///```c
/// byte ImFontAtlas_IsBuilt(
///  ImFontAtlas* self
/// );
///```
int ImFontAtlas_IsBuilt(Pointer<ImFontAtlas> self) =>
    _ImFontAtlas_IsBuilt(self);

late final _ImFontAtlas_IsBuilt = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImFontAtlas> self),
    int Function(Pointer<ImFontAtlas> self)>('ImFontAtlas_IsBuilt');

///```c
/// void ImFontAtlas_SetTexID(
///  ImFontAtlas* self ,
///  IntPtr id
/// );
///```
void ImFontAtlas_SetTexID(Pointer<ImFontAtlas> self, int id) =>
    _ImFontAtlas_SetTexID(self, id);

late final _ImFontAtlas_SetTexID = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontAtlas> self, IntPtr id),
    void Function(Pointer<ImFontAtlas> self, int id)>('ImFontAtlas_SetTexID');

///```c
/// void ImFontAtlasCustomRect_destroy(
///  ImFontAtlasCustomRect* self
/// );
///```
void ImFontAtlasCustomRect_destroy(Pointer<ImFontAtlasCustomRect> self) =>
    _ImFontAtlasCustomRect_destroy(self);

late final _ImFontAtlasCustomRect_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontAtlasCustomRect> self),
    void Function(
        Pointer<ImFontAtlasCustomRect> self)>('ImFontAtlasCustomRect_destroy');

///```c
/// ImFontAtlasCustomRect* ImFontAtlasCustomRect_ImFontAtlasCustomRect(
/// );
///```
Pointer<ImFontAtlasCustomRect> ImFontAtlasCustomRect_ImFontAtlasCustomRect() =>
    _ImFontAtlasCustomRect_ImFontAtlasCustomRect();

late final _ImFontAtlasCustomRect_ImFontAtlasCustomRect =
    _cimgui.lookupFunction<
        Pointer<ImFontAtlasCustomRect> Function(),
        Pointer<ImFontAtlasCustomRect>
            Function()>('ImFontAtlasCustomRect_ImFontAtlasCustomRect');

///```c
/// byte ImFontAtlasCustomRect_IsPacked(
///  ImFontAtlasCustomRect* self
/// );
///```
int ImFontAtlasCustomRect_IsPacked(Pointer<ImFontAtlasCustomRect> self) =>
    _ImFontAtlasCustomRect_IsPacked(self);

late final _ImFontAtlasCustomRect_IsPacked = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImFontAtlasCustomRect> self),
    int Function(
        Pointer<ImFontAtlasCustomRect> self)>('ImFontAtlasCustomRect_IsPacked');

///```c
/// void ImFontConfig_destroy(
///  ImFontConfig* self
/// );
///```
void ImFontConfig_destroy(Pointer<ImFontConfig> self) =>
    _ImFontConfig_destroy(self);

late final _ImFontConfig_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontConfig> self),
    void Function(Pointer<ImFontConfig> self)>('ImFontConfig_destroy');

///```c
/// ImFontConfig* ImFontConfig_ImFontConfig(
/// );
///```
Pointer<ImFontConfig> ImFontConfig_ImFontConfig() =>
    _ImFontConfig_ImFontConfig();

late final _ImFontConfig_ImFontConfig = _cimgui.lookupFunction<
    Pointer<ImFontConfig> Function(),
    Pointer<ImFontConfig> Function()>('ImFontConfig_ImFontConfig');

///```c
/// void ImFontGlyphRangesBuilder_AddChar(
///  ImFontGlyphRangesBuilder* self ,
///  ushort c
/// );
///```
void ImFontGlyphRangesBuilder_AddChar(
        Pointer<ImFontGlyphRangesBuilder> self, int c) =>
    _ImFontGlyphRangesBuilder_AddChar(self, c);

late final _ImFontGlyphRangesBuilder_AddChar = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontGlyphRangesBuilder> self, Uint16 c),
    void Function(Pointer<ImFontGlyphRangesBuilder> self,
        int c)>('ImFontGlyphRangesBuilder_AddChar');

///```c
/// void ImFontGlyphRangesBuilder_AddRanges(
///  ImFontGlyphRangesBuilder* self ,
///  ushort* ranges
/// );
///```
void ImFontGlyphRangesBuilder_AddRanges(
        Pointer<ImFontGlyphRangesBuilder> self, Pointer<Uint16> ranges) =>
    _ImFontGlyphRangesBuilder_AddRanges(self, ranges);

late final _ImFontGlyphRangesBuilder_AddRanges = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFontGlyphRangesBuilder> self, Pointer<Uint16> ranges),
    void Function(Pointer<ImFontGlyphRangesBuilder> self,
        Pointer<Uint16> ranges)>('ImFontGlyphRangesBuilder_AddRanges');

///```c
/// void ImFontGlyphRangesBuilder_AddText(
///  ImFontGlyphRangesBuilder* self ,
///  byte* text ,
///  byte* text_end
/// );
///```
void ImFontGlyphRangesBuilder_AddText(Pointer<ImFontGlyphRangesBuilder> self,
        Pointer<Uint8> text, Pointer<Uint8> text_end) =>
    _ImFontGlyphRangesBuilder_AddText(self, text, text_end);

late final _ImFontGlyphRangesBuilder_AddText = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontGlyphRangesBuilder> self, Pointer<Uint8> text,
        Pointer<Uint8> text_end),
    void Function(Pointer<ImFontGlyphRangesBuilder> self, Pointer<Uint8> text,
        Pointer<Uint8> text_end)>('ImFontGlyphRangesBuilder_AddText');

///```c
/// void ImFontGlyphRangesBuilder_BuildRanges(
///  ImFontGlyphRangesBuilder* self ,
///  ImVector* out_ranges
/// );
///```
void ImFontGlyphRangesBuilder_BuildRanges(
        Pointer<ImFontGlyphRangesBuilder> self, Pointer<ImVector> out_ranges) =>
    _ImFontGlyphRangesBuilder_BuildRanges(self, out_ranges);

late final _ImFontGlyphRangesBuilder_BuildRanges = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImFontGlyphRangesBuilder> self, Pointer<ImVector> out_ranges),
    void Function(Pointer<ImFontGlyphRangesBuilder> self,
        Pointer<ImVector> out_ranges)>('ImFontGlyphRangesBuilder_BuildRanges');

///```c
/// void ImFontGlyphRangesBuilder_Clear(
///  ImFontGlyphRangesBuilder* self
/// );
///```
void ImFontGlyphRangesBuilder_Clear(Pointer<ImFontGlyphRangesBuilder> self) =>
    _ImFontGlyphRangesBuilder_Clear(self);

late final _ImFontGlyphRangesBuilder_Clear = _cimgui.lookupFunction<
        Void Function(Pointer<ImFontGlyphRangesBuilder> self),
        void Function(Pointer<ImFontGlyphRangesBuilder> self)>(
    'ImFontGlyphRangesBuilder_Clear');

///```c
/// void ImFontGlyphRangesBuilder_destroy(
///  ImFontGlyphRangesBuilder* self
/// );
///```
void ImFontGlyphRangesBuilder_destroy(Pointer<ImFontGlyphRangesBuilder> self) =>
    _ImFontGlyphRangesBuilder_destroy(self);

late final _ImFontGlyphRangesBuilder_destroy = _cimgui.lookupFunction<
        Void Function(Pointer<ImFontGlyphRangesBuilder> self),
        void Function(Pointer<ImFontGlyphRangesBuilder> self)>(
    'ImFontGlyphRangesBuilder_destroy');

///```c
/// byte ImFontGlyphRangesBuilder_GetBit(
///  ImFontGlyphRangesBuilder* self ,
///  uint n
/// );
///```
int ImFontGlyphRangesBuilder_GetBit(
        Pointer<ImFontGlyphRangesBuilder> self, int n) =>
    _ImFontGlyphRangesBuilder_GetBit(self, n);

late final _ImFontGlyphRangesBuilder_GetBit = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImFontGlyphRangesBuilder> self, Uint32 n),
    int Function(Pointer<ImFontGlyphRangesBuilder> self,
        int n)>('ImFontGlyphRangesBuilder_GetBit');

///```c
/// ImFontGlyphRangesBuilder* ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder(
/// );
///```
Pointer<ImFontGlyphRangesBuilder>
    ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder() =>
        _ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder();

late final _ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder =
    _cimgui.lookupFunction<
        Pointer<ImFontGlyphRangesBuilder> Function(),
        Pointer<ImFontGlyphRangesBuilder>
            Function()>('ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder');

///```c
/// void ImFontGlyphRangesBuilder_SetBit(
///  ImFontGlyphRangesBuilder* self ,
///  uint n
/// );
///```
void ImFontGlyphRangesBuilder_SetBit(
        Pointer<ImFontGlyphRangesBuilder> self, int n) =>
    _ImFontGlyphRangesBuilder_SetBit(self, n);

late final _ImFontGlyphRangesBuilder_SetBit = _cimgui.lookupFunction<
    Void Function(Pointer<ImFontGlyphRangesBuilder> self, Uint32 n),
    void Function(Pointer<ImFontGlyphRangesBuilder> self,
        int n)>('ImFontGlyphRangesBuilder_SetBit');

///```c
/// void ImGuiInputTextCallbackData_ClearSelection(
///  ImGuiInputTextCallbackData* self
/// );
///```
void ImGuiInputTextCallbackData_ClearSelection(Pointer<Pointer> self) =>
    _ImGuiInputTextCallbackData_ClearSelection(self);

late final _ImGuiInputTextCallbackData_ClearSelection = _cimgui.lookupFunction<
    Void Function(Pointer<Pointer> self),
    void Function(
        Pointer<Pointer> self)>('ImGuiInputTextCallbackData_ClearSelection');

///```c
/// void ImGuiInputTextCallbackData_DeleteChars(
///  ImGuiInputTextCallbackData* self ,
///  int pos ,
///  int bytes_count
/// );
///```
void ImGuiInputTextCallbackData_DeleteChars(
        Pointer<Pointer> self, int pos, int bytes_count) =>
    _ImGuiInputTextCallbackData_DeleteChars(self, pos, bytes_count);

late final _ImGuiInputTextCallbackData_DeleteChars = _cimgui.lookupFunction<
    Void Function(Pointer<Pointer> self, Int32 pos, Int32 bytes_count),
    void Function(Pointer<Pointer> self, int pos,
        int bytes_count)>('ImGuiInputTextCallbackData_DeleteChars');

///```c
/// void ImGuiInputTextCallbackData_destroy(
///  ImGuiInputTextCallbackData* self
/// );
///```
void ImGuiInputTextCallbackData_destroy(Pointer<Pointer> self) =>
    _ImGuiInputTextCallbackData_destroy(self);

late final _ImGuiInputTextCallbackData_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<Pointer> self),
    void Function(Pointer<Pointer> self)>('ImGuiInputTextCallbackData_destroy');

///```c
/// byte ImGuiInputTextCallbackData_HasSelection(
///  ImGuiInputTextCallbackData* self
/// );
///```
int ImGuiInputTextCallbackData_HasSelection(Pointer<Pointer> self) =>
    _ImGuiInputTextCallbackData_HasSelection(self);

late final _ImGuiInputTextCallbackData_HasSelection = _cimgui.lookupFunction<
    Uint8 Function(Pointer<Pointer> self),
    int Function(
        Pointer<Pointer> self)>('ImGuiInputTextCallbackData_HasSelection');

///```c
/// ImGuiInputTextCallbackData* ImGuiInputTextCallbackData_ImGuiInputTextCallbackData(
/// );
///```
Pointer<Pointer> ImGuiInputTextCallbackData_ImGuiInputTextCallbackData() =>
    _ImGuiInputTextCallbackData_ImGuiInputTextCallbackData();

late final _ImGuiInputTextCallbackData_ImGuiInputTextCallbackData = _cimgui
    .lookupFunction<Pointer<Pointer> Function(), Pointer<Pointer> Function()>(
        'ImGuiInputTextCallbackData_ImGuiInputTextCallbackData');

///```c
/// void ImGuiInputTextCallbackData_InsertChars(
///  ImGuiInputTextCallbackData* self ,
///  int pos ,
///  byte* text ,
///  byte* text_end
/// );
///```
void ImGuiInputTextCallbackData_InsertChars(Pointer<Pointer> self, int pos,
        Pointer<Uint8> text, Pointer<Uint8> text_end) =>
    _ImGuiInputTextCallbackData_InsertChars(self, pos, text, text_end);

late final _ImGuiInputTextCallbackData_InsertChars = _cimgui.lookupFunction<
    Void Function(Pointer<Pointer> self, Int32 pos, Pointer<Uint8> text,
        Pointer<Uint8> text_end),
    void Function(Pointer<Pointer> self, int pos, Pointer<Uint8> text,
        Pointer<Uint8> text_end)>('ImGuiInputTextCallbackData_InsertChars');

///```c
/// void ImGuiInputTextCallbackData_SelectAll(
///  ImGuiInputTextCallbackData* self
/// );
///```
void ImGuiInputTextCallbackData_SelectAll(Pointer<Pointer> self) =>
    _ImGuiInputTextCallbackData_SelectAll(self);

late final _ImGuiInputTextCallbackData_SelectAll = _cimgui.lookupFunction<
    Void Function(Pointer<Pointer> self),
    void Function(
        Pointer<Pointer> self)>('ImGuiInputTextCallbackData_SelectAll');

///```c
/// void ImGuiIO_AddFocusEvent(
///  ImGuiIO* self ,
///  byte focused
/// );
///```
void ImGuiIO_AddFocusEvent(Pointer<ImGuiIO> self, int focused) =>
    _ImGuiIO_AddFocusEvent(self, focused);

late final _ImGuiIO_AddFocusEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint8 focused),
    void Function(Pointer<ImGuiIO> self, int focused)>('ImGuiIO_AddFocusEvent');

///```c
/// void ImGuiIO_AddInputCharacter(
///  ImGuiIO* self ,
///  uint c
/// );
///```
void ImGuiIO_AddInputCharacter(Pointer<ImGuiIO> self, int c) =>
    _ImGuiIO_AddInputCharacter(self, c);

late final _ImGuiIO_AddInputCharacter = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint32 c),
    void Function(Pointer<ImGuiIO> self, int c)>('ImGuiIO_AddInputCharacter');

///```c
/// void ImGuiIO_AddInputCharactersUTF8(
///  ImGuiIO* self ,
///  byte* str
/// );
///```
void ImGuiIO_AddInputCharactersUTF8(
        Pointer<ImGuiIO> self, Pointer<Uint8> str) =>
    _ImGuiIO_AddInputCharactersUTF8(self, str);

late final _ImGuiIO_AddInputCharactersUTF8 = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Pointer<Uint8> str),
    void Function(Pointer<ImGuiIO> self,
        Pointer<Uint8> str)>('ImGuiIO_AddInputCharactersUTF8');

///```c
/// void ImGuiIO_AddInputCharacterUTF16(
///  ImGuiIO* self ,
///  ushort c
/// );
///```
void ImGuiIO_AddInputCharacterUTF16(Pointer<ImGuiIO> self, int c) =>
    _ImGuiIO_AddInputCharacterUTF16(self, c);

late final _ImGuiIO_AddInputCharacterUTF16 = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint16 c),
    void Function(
        Pointer<ImGuiIO> self, int c)>('ImGuiIO_AddInputCharacterUTF16');

///```c
/// void ImGuiIO_AddKeyAnalogEvent(
///  ImGuiIO* self ,
///  ImGuiKey key ,
///  byte down ,
///  float v
/// );
///```
void ImGuiIO_AddKeyAnalogEvent(
        Pointer<ImGuiIO> self, int key, int down, double v) =>
    _ImGuiIO_AddKeyAnalogEvent(self, key, down, v);

late final _ImGuiIO_AddKeyAnalogEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint32 key, Uint8 down, Float v),
    void Function(Pointer<ImGuiIO> self, int key, int down,
        double v)>('ImGuiIO_AddKeyAnalogEvent');

///```c
/// void ImGuiIO_AddKeyEvent(
///  ImGuiIO* self ,
///  ImGuiKey key ,
///  byte down
/// );
///```
void ImGuiIO_AddKeyEvent(Pointer<ImGuiIO> self, int key, int down) =>
    _ImGuiIO_AddKeyEvent(self, key, down);

late final _ImGuiIO_AddKeyEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint32 key, Uint8 down),
    void Function(
        Pointer<ImGuiIO> self, int key, int down)>('ImGuiIO_AddKeyEvent');

///```c
/// void ImGuiIO_AddMouseButtonEvent(
///  ImGuiIO* self ,
///  int button ,
///  byte down
/// );
///```
void ImGuiIO_AddMouseButtonEvent(Pointer<ImGuiIO> self, int button, int down) =>
    _ImGuiIO_AddMouseButtonEvent(self, button, down);

late final _ImGuiIO_AddMouseButtonEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Int32 button, Uint8 down),
    void Function(Pointer<ImGuiIO> self, int button,
        int down)>('ImGuiIO_AddMouseButtonEvent');

///```c
/// void ImGuiIO_AddMousePosEvent(
///  ImGuiIO* self ,
///  float x ,
///  float y
/// );
///```
void ImGuiIO_AddMousePosEvent(Pointer<ImGuiIO> self, double x, double y) =>
    _ImGuiIO_AddMousePosEvent(self, x, y);

late final _ImGuiIO_AddMousePosEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Float x, Float y),
    void Function(
        Pointer<ImGuiIO> self, double x, double y)>('ImGuiIO_AddMousePosEvent');

///```c
/// void ImGuiIO_AddMouseSourceEvent(
///  ImGuiIO* self ,
///  ImGuiMouseSource source
/// );
///```
void ImGuiIO_AddMouseSourceEvent(Pointer<ImGuiIO> self, int source) =>
    _ImGuiIO_AddMouseSourceEvent(self, source);

late final _ImGuiIO_AddMouseSourceEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint32 source),
    void Function(
        Pointer<ImGuiIO> self, int source)>('ImGuiIO_AddMouseSourceEvent');

///```c
/// void ImGuiIO_AddMouseViewportEvent(
///  ImGuiIO* self ,
///  uint id
/// );
///```
void ImGuiIO_AddMouseViewportEvent(Pointer<ImGuiIO> self, int id) =>
    _ImGuiIO_AddMouseViewportEvent(self, id);

late final _ImGuiIO_AddMouseViewportEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint32 id),
    void Function(
        Pointer<ImGuiIO> self, int id)>('ImGuiIO_AddMouseViewportEvent');

///```c
/// void ImGuiIO_AddMouseWheelEvent(
///  ImGuiIO* self ,
///  float wheel_x ,
///  float wheel_y
/// );
///```
void ImGuiIO_AddMouseWheelEvent(
        Pointer<ImGuiIO> self, double wheel_x, double wheel_y) =>
    _ImGuiIO_AddMouseWheelEvent(self, wheel_x, wheel_y);

late final _ImGuiIO_AddMouseWheelEvent = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Float wheel_x, Float wheel_y),
    void Function(Pointer<ImGuiIO> self, double wheel_x,
        double wheel_y)>('ImGuiIO_AddMouseWheelEvent');

///```c
/// void ImGuiIO_ClearEventsQueue(
///  ImGuiIO* self
/// );
///```
void ImGuiIO_ClearEventsQueue(Pointer<ImGuiIO> self) =>
    _ImGuiIO_ClearEventsQueue(self);

late final _ImGuiIO_ClearEventsQueue = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self),
    void Function(Pointer<ImGuiIO> self)>('ImGuiIO_ClearEventsQueue');

///```c
/// void ImGuiIO_ClearInputKeys(
///  ImGuiIO* self
/// );
///```
void ImGuiIO_ClearInputKeys(Pointer<ImGuiIO> self) =>
    _ImGuiIO_ClearInputKeys(self);

late final _ImGuiIO_ClearInputKeys = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self),
    void Function(Pointer<ImGuiIO> self)>('ImGuiIO_ClearInputKeys');

///```c
/// void ImGuiIO_destroy(
///  ImGuiIO* self
/// );
///```
void ImGuiIO_destroy(Pointer<ImGuiIO> self) => _ImGuiIO_destroy(self);

late final _ImGuiIO_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self),
    void Function(Pointer<ImGuiIO> self)>('ImGuiIO_destroy');

///```c
/// ImGuiIO* ImGuiIO_ImGuiIO(
/// );
///```
Pointer<ImGuiIO> ImGuiIO_ImGuiIO() => _ImGuiIO_ImGuiIO();

late final _ImGuiIO_ImGuiIO = _cimgui.lookupFunction<
    Pointer<ImGuiIO> Function(),
    Pointer<ImGuiIO> Function()>('ImGuiIO_ImGuiIO');

///```c
/// void ImGuiIO_SetAppAcceptingEvents(
///  ImGuiIO* self ,
///  byte accepting_events
/// );
///```
void ImGuiIO_SetAppAcceptingEvents(
        Pointer<ImGuiIO> self, int accepting_events) =>
    _ImGuiIO_SetAppAcceptingEvents(self, accepting_events);

late final _ImGuiIO_SetAppAcceptingEvents = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint8 accepting_events),
    void Function(Pointer<ImGuiIO> self,
        int accepting_events)>('ImGuiIO_SetAppAcceptingEvents');

///```c
/// void ImGuiIO_SetKeyEventNativeData(
///  ImGuiIO* self ,
///  ImGuiKey key ,
///  int native_keycode ,
///  int native_scancode ,
///  int native_legacy_index
/// );
///```
void ImGuiIO_SetKeyEventNativeData(Pointer<ImGuiIO> self, int key,
        int native_keycode, int native_scancode, int native_legacy_index) =>
    _ImGuiIO_SetKeyEventNativeData(
        self, key, native_keycode, native_scancode, native_legacy_index);

late final _ImGuiIO_SetKeyEventNativeData = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiIO> self, Uint32 key, Int32 native_keycode,
        Int32 native_scancode, Int32 native_legacy_index),
    void Function(
        Pointer<ImGuiIO> self,
        int key,
        int native_keycode,
        int native_scancode,
        int native_legacy_index)>('ImGuiIO_SetKeyEventNativeData');

///```c
/// void ImGuiListClipper_Begin(
///  ImGuiListClipper* self ,
///  int items_count ,
///  float items_height
/// );
///```
void ImGuiListClipper_Begin(
        Pointer<ImGuiListClipper> self, int items_count, double items_height) =>
    _ImGuiListClipper_Begin(self, items_count, items_height);

late final _ImGuiListClipper_Begin = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImGuiListClipper> self, Int32 items_count, Float items_height),
    void Function(Pointer<ImGuiListClipper> self, int items_count,
        double items_height)>('ImGuiListClipper_Begin');

///```c
/// void ImGuiListClipper_destroy(
///  ImGuiListClipper* self
/// );
///```
void ImGuiListClipper_destroy(Pointer<ImGuiListClipper> self) =>
    _ImGuiListClipper_destroy(self);

late final _ImGuiListClipper_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiListClipper> self),
    void Function(Pointer<ImGuiListClipper> self)>('ImGuiListClipper_destroy');

///```c
/// void ImGuiListClipper_End(
///  ImGuiListClipper* self
/// );
///```
void ImGuiListClipper_End(Pointer<ImGuiListClipper> self) =>
    _ImGuiListClipper_End(self);

late final _ImGuiListClipper_End = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiListClipper> self),
    void Function(Pointer<ImGuiListClipper> self)>('ImGuiListClipper_End');

///```c
/// ImGuiListClipper* ImGuiListClipper_ImGuiListClipper(
/// );
///```
Pointer<ImGuiListClipper> ImGuiListClipper_ImGuiListClipper() =>
    _ImGuiListClipper_ImGuiListClipper();

late final _ImGuiListClipper_ImGuiListClipper = _cimgui.lookupFunction<
    Pointer<ImGuiListClipper> Function(),
    Pointer<ImGuiListClipper> Function()>('ImGuiListClipper_ImGuiListClipper');

///```c
/// void ImGuiListClipper_IncludeItemByIndex(
///  ImGuiListClipper* self ,
///  int item_index
/// );
///```
void ImGuiListClipper_IncludeItemByIndex(
        Pointer<ImGuiListClipper> self, int item_index) =>
    _ImGuiListClipper_IncludeItemByIndex(self, item_index);

late final _ImGuiListClipper_IncludeItemByIndex = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiListClipper> self, Int32 item_index),
    void Function(Pointer<ImGuiListClipper> self,
        int item_index)>('ImGuiListClipper_IncludeItemByIndex');

///```c
/// void ImGuiListClipper_IncludeItemsByIndex(
///  ImGuiListClipper* self ,
///  int item_begin ,
///  int item_end
/// );
///```
void ImGuiListClipper_IncludeItemsByIndex(
        Pointer<ImGuiListClipper> self, int item_begin, int item_end) =>
    _ImGuiListClipper_IncludeItemsByIndex(self, item_begin, item_end);

late final _ImGuiListClipper_IncludeItemsByIndex = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImGuiListClipper> self, Int32 item_begin, Int32 item_end),
    void Function(Pointer<ImGuiListClipper> self, int item_begin,
        int item_end)>('ImGuiListClipper_IncludeItemsByIndex');

///```c
/// byte ImGuiListClipper_Step(
///  ImGuiListClipper* self
/// );
///```
int ImGuiListClipper_Step(Pointer<ImGuiListClipper> self) =>
    _ImGuiListClipper_Step(self);

late final _ImGuiListClipper_Step = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiListClipper> self),
    int Function(Pointer<ImGuiListClipper> self)>('ImGuiListClipper_Step');

///```c
/// void ImGuiOnceUponAFrame_destroy(
///  ImGuiOnceUponAFrame* self
/// );
///```
void ImGuiOnceUponAFrame_destroy(Pointer<ImGuiOnceUponAFrame> self) =>
    _ImGuiOnceUponAFrame_destroy(self);

late final _ImGuiOnceUponAFrame_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiOnceUponAFrame> self),
    void Function(
        Pointer<ImGuiOnceUponAFrame> self)>('ImGuiOnceUponAFrame_destroy');

///```c
/// ImGuiOnceUponAFrame* ImGuiOnceUponAFrame_ImGuiOnceUponAFrame(
/// );
///```
Pointer<ImGuiOnceUponAFrame> ImGuiOnceUponAFrame_ImGuiOnceUponAFrame() =>
    _ImGuiOnceUponAFrame_ImGuiOnceUponAFrame();

late final _ImGuiOnceUponAFrame_ImGuiOnceUponAFrame = _cimgui.lookupFunction<
    Pointer<ImGuiOnceUponAFrame> Function(),
    Pointer<ImGuiOnceUponAFrame>
        Function()>('ImGuiOnceUponAFrame_ImGuiOnceUponAFrame');

///```c
/// void ImGuiPayload_Clear(
///  ImGuiPayload* self
/// );
///```
void ImGuiPayload_Clear(Pointer<ImGuiPayload> self) =>
    _ImGuiPayload_Clear(self);

late final _ImGuiPayload_Clear = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiPayload> self),
    void Function(Pointer<ImGuiPayload> self)>('ImGuiPayload_Clear');

///```c
/// void ImGuiPayload_destroy(
///  ImGuiPayload* self
/// );
///```
void ImGuiPayload_destroy(Pointer<ImGuiPayload> self) =>
    _ImGuiPayload_destroy(self);

late final _ImGuiPayload_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiPayload> self),
    void Function(Pointer<ImGuiPayload> self)>('ImGuiPayload_destroy');

///```c
/// ImGuiPayload* ImGuiPayload_ImGuiPayload(
/// );
///```
Pointer<ImGuiPayload> ImGuiPayload_ImGuiPayload() =>
    _ImGuiPayload_ImGuiPayload();

late final _ImGuiPayload_ImGuiPayload = _cimgui.lookupFunction<
    Pointer<ImGuiPayload> Function(),
    Pointer<ImGuiPayload> Function()>('ImGuiPayload_ImGuiPayload');

///```c
/// byte ImGuiPayload_IsDataType(
///  ImGuiPayload* self ,
///  byte* type
/// );
///```
int ImGuiPayload_IsDataType(Pointer<ImGuiPayload> self, Pointer<Uint8> type) =>
    _ImGuiPayload_IsDataType(self, type);

late final _ImGuiPayload_IsDataType = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiPayload> self, Pointer<Uint8> type),
    int Function(Pointer<ImGuiPayload> self,
        Pointer<Uint8> type)>('ImGuiPayload_IsDataType');

///```c
/// byte ImGuiPayload_IsDelivery(
///  ImGuiPayload* self
/// );
///```
int ImGuiPayload_IsDelivery(Pointer<ImGuiPayload> self) =>
    _ImGuiPayload_IsDelivery(self);

late final _ImGuiPayload_IsDelivery = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiPayload> self),
    int Function(Pointer<ImGuiPayload> self)>('ImGuiPayload_IsDelivery');

///```c
/// byte ImGuiPayload_IsPreview(
///  ImGuiPayload* self
/// );
///```
int ImGuiPayload_IsPreview(Pointer<ImGuiPayload> self) =>
    _ImGuiPayload_IsPreview(self);

late final _ImGuiPayload_IsPreview = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiPayload> self),
    int Function(Pointer<ImGuiPayload> self)>('ImGuiPayload_IsPreview');

///```c
/// void ImGuiPlatformImeData_destroy(
///  ImGuiPlatformImeData* self
/// );
///```
void ImGuiPlatformImeData_destroy(Pointer<ImGuiPlatformImeData> self) =>
    _ImGuiPlatformImeData_destroy(self);

late final _ImGuiPlatformImeData_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiPlatformImeData> self),
    void Function(
        Pointer<ImGuiPlatformImeData> self)>('ImGuiPlatformImeData_destroy');

///```c
/// ImGuiPlatformImeData* ImGuiPlatformImeData_ImGuiPlatformImeData(
/// );
///```
Pointer<ImGuiPlatformImeData> ImGuiPlatformImeData_ImGuiPlatformImeData() =>
    _ImGuiPlatformImeData_ImGuiPlatformImeData();

late final _ImGuiPlatformImeData_ImGuiPlatformImeData = _cimgui.lookupFunction<
    Pointer<ImGuiPlatformImeData> Function(),
    Pointer<ImGuiPlatformImeData>
        Function()>('ImGuiPlatformImeData_ImGuiPlatformImeData');

///```c
/// void ImGuiPlatformIO_destroy(
///  ImGuiPlatformIO* self
/// );
///```
void ImGuiPlatformIO_destroy(Pointer<ImGuiPlatformIO> self) =>
    _ImGuiPlatformIO_destroy(self);

late final _ImGuiPlatformIO_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiPlatformIO> self),
    void Function(Pointer<ImGuiPlatformIO> self)>('ImGuiPlatformIO_destroy');

///```c
/// ImGuiPlatformIO* ImGuiPlatformIO_ImGuiPlatformIO(
/// );
///```
Pointer<ImGuiPlatformIO> ImGuiPlatformIO_ImGuiPlatformIO() =>
    _ImGuiPlatformIO_ImGuiPlatformIO();

late final _ImGuiPlatformIO_ImGuiPlatformIO = _cimgui.lookupFunction<
    Pointer<ImGuiPlatformIO> Function(),
    Pointer<ImGuiPlatformIO> Function()>('ImGuiPlatformIO_ImGuiPlatformIO');

///```c
/// void ImGuiPlatformMonitor_destroy(
///  ImGuiPlatformMonitor* self
/// );
///```
void ImGuiPlatformMonitor_destroy(Pointer<ImGuiPlatformMonitor> self) =>
    _ImGuiPlatformMonitor_destroy(self);

late final _ImGuiPlatformMonitor_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiPlatformMonitor> self),
    void Function(
        Pointer<ImGuiPlatformMonitor> self)>('ImGuiPlatformMonitor_destroy');

///```c
/// ImGuiPlatformMonitor* ImGuiPlatformMonitor_ImGuiPlatformMonitor(
/// );
///```
Pointer<ImGuiPlatformMonitor> ImGuiPlatformMonitor_ImGuiPlatformMonitor() =>
    _ImGuiPlatformMonitor_ImGuiPlatformMonitor();

late final _ImGuiPlatformMonitor_ImGuiPlatformMonitor = _cimgui.lookupFunction<
    Pointer<ImGuiPlatformMonitor> Function(),
    Pointer<ImGuiPlatformMonitor>
        Function()>('ImGuiPlatformMonitor_ImGuiPlatformMonitor');

///```c
/// void ImGuiStorage_BuildSortByKey(
///  ImGuiStorage* self
/// );
///```
void ImGuiStorage_BuildSortByKey(Pointer<ImGuiStorage> self) =>
    _ImGuiStorage_BuildSortByKey(self);

late final _ImGuiStorage_BuildSortByKey = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> self),
    void Function(Pointer<ImGuiStorage> self)>('ImGuiStorage_BuildSortByKey');

///```c
/// void ImGuiStorage_Clear(
///  ImGuiStorage* self
/// );
///```
void ImGuiStorage_Clear(Pointer<ImGuiStorage> self) =>
    _ImGuiStorage_Clear(self);

late final _ImGuiStorage_Clear = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> self),
    void Function(Pointer<ImGuiStorage> self)>('ImGuiStorage_Clear');

///```c
/// byte ImGuiStorage_GetBool(
///  ImGuiStorage* self ,
///  uint key ,
///  byte default_val
/// );
///```
int ImGuiStorage_GetBool(
        Pointer<ImGuiStorage> self, int key, int default_val) =>
    _ImGuiStorage_GetBool(self, key, default_val);

late final _ImGuiStorage_GetBool = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiStorage> self, Uint32 key, Uint8 default_val),
    int Function(Pointer<ImGuiStorage> self, int key,
        int default_val)>('ImGuiStorage_GetBool');

///```c
/// byte* ImGuiStorage_GetBoolRef(
///  ImGuiStorage* self ,
///  uint key ,
///  byte default_val
/// );
///```
Pointer<Uint8> ImGuiStorage_GetBoolRef(
        Pointer<ImGuiStorage> self, int key, int default_val) =>
    _ImGuiStorage_GetBoolRef(self, key, default_val);

late final _ImGuiStorage_GetBoolRef = _cimgui.lookupFunction<
    Pointer<Uint8> Function(
        Pointer<ImGuiStorage> self, Uint32 key, Uint8 default_val),
    Pointer<Uint8> Function(Pointer<ImGuiStorage> self, int key,
        int default_val)>('ImGuiStorage_GetBoolRef');

///```c
/// float ImGuiStorage_GetFloat(
///  ImGuiStorage* self ,
///  uint key ,
///  float default_val
/// );
///```
double ImGuiStorage_GetFloat(
        Pointer<ImGuiStorage> self, int key, double default_val) =>
    _ImGuiStorage_GetFloat(self, key, default_val);

late final _ImGuiStorage_GetFloat = _cimgui.lookupFunction<
    Float Function(Pointer<ImGuiStorage> self, Uint32 key, Float default_val),
    double Function(Pointer<ImGuiStorage> self, int key,
        double default_val)>('ImGuiStorage_GetFloat');

///```c
/// float* ImGuiStorage_GetFloatRef(
///  ImGuiStorage* self ,
///  uint key ,
///  float default_val
/// );
///```
Pointer<Float> ImGuiStorage_GetFloatRef(
        Pointer<ImGuiStorage> self, int key, double default_val) =>
    _ImGuiStorage_GetFloatRef(self, key, default_val);

late final _ImGuiStorage_GetFloatRef = _cimgui.lookupFunction<
    Pointer<Float> Function(
        Pointer<ImGuiStorage> self, Uint32 key, Float default_val),
    Pointer<Float> Function(Pointer<ImGuiStorage> self, int key,
        double default_val)>('ImGuiStorage_GetFloatRef');

///```c
/// int ImGuiStorage_GetInt(
///  ImGuiStorage* self ,
///  uint key ,
///  int default_val
/// );
///```
int ImGuiStorage_GetInt(Pointer<ImGuiStorage> self, int key, int default_val) =>
    _ImGuiStorage_GetInt(self, key, default_val);

late final _ImGuiStorage_GetInt = _cimgui.lookupFunction<
    Int32 Function(Pointer<ImGuiStorage> self, Uint32 key, Int32 default_val),
    int Function(Pointer<ImGuiStorage> self, int key,
        int default_val)>('ImGuiStorage_GetInt');

///```c
/// int* ImGuiStorage_GetIntRef(
///  ImGuiStorage* self ,
///  uint key ,
///  int default_val
/// );
///```
Pointer<Int32> ImGuiStorage_GetIntRef(
        Pointer<ImGuiStorage> self, int key, int default_val) =>
    _ImGuiStorage_GetIntRef(self, key, default_val);

late final _ImGuiStorage_GetIntRef = _cimgui.lookupFunction<
    Pointer<Int32> Function(
        Pointer<ImGuiStorage> self, Uint32 key, Int32 default_val),
    Pointer<Int32> Function(Pointer<ImGuiStorage> self, int key,
        int default_val)>('ImGuiStorage_GetIntRef');

///```c
/// void* ImGuiStorage_GetVoidPtr(
///  ImGuiStorage* self ,
///  uint key
/// );
///```
Pointer<Void> ImGuiStorage_GetVoidPtr(Pointer<ImGuiStorage> self, int key) =>
    _ImGuiStorage_GetVoidPtr(self, key);

late final _ImGuiStorage_GetVoidPtr = _cimgui.lookupFunction<
    Pointer<Void> Function(Pointer<ImGuiStorage> self, Uint32 key),
    Pointer<Void> Function(
        Pointer<ImGuiStorage> self, int key)>('ImGuiStorage_GetVoidPtr');

///```c
/// void** ImGuiStorage_GetVoidPtrRef(
///  ImGuiStorage* self ,
///  uint key ,
///  void* default_val
/// );
///```
Pointer<Pointer<Void>> ImGuiStorage_GetVoidPtrRef(
        Pointer<ImGuiStorage> self, int key, Pointer<Void> default_val) =>
    _ImGuiStorage_GetVoidPtrRef(self, key, default_val);

late final _ImGuiStorage_GetVoidPtrRef = _cimgui.lookupFunction<
    Pointer<Pointer<Void>> Function(
        Pointer<ImGuiStorage> self, Uint32 key, Pointer<Void> default_val),
    Pointer<Pointer<Void>> Function(Pointer<ImGuiStorage> self, int key,
        Pointer<Void> default_val)>('ImGuiStorage_GetVoidPtrRef');

///```c
/// void ImGuiStorage_SetAllInt(
///  ImGuiStorage* self ,
///  int val
/// );
///```
void ImGuiStorage_SetAllInt(Pointer<ImGuiStorage> self, int val) =>
    _ImGuiStorage_SetAllInt(self, val);

late final _ImGuiStorage_SetAllInt = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> self, Int32 val),
    void Function(
        Pointer<ImGuiStorage> self, int val)>('ImGuiStorage_SetAllInt');

///```c
/// void ImGuiStorage_SetBool(
///  ImGuiStorage* self ,
///  uint key ,
///  byte val
/// );
///```
void ImGuiStorage_SetBool(Pointer<ImGuiStorage> self, int key, int val) =>
    _ImGuiStorage_SetBool(self, key, val);

late final _ImGuiStorage_SetBool = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> self, Uint32 key, Uint8 val),
    void Function(
        Pointer<ImGuiStorage> self, int key, int val)>('ImGuiStorage_SetBool');

///```c
/// void ImGuiStorage_SetFloat(
///  ImGuiStorage* self ,
///  uint key ,
///  float val
/// );
///```
void ImGuiStorage_SetFloat(Pointer<ImGuiStorage> self, int key, double val) =>
    _ImGuiStorage_SetFloat(self, key, val);

late final _ImGuiStorage_SetFloat = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> self, Uint32 key, Float val),
    void Function(Pointer<ImGuiStorage> self, int key,
        double val)>('ImGuiStorage_SetFloat');

///```c
/// void ImGuiStorage_SetInt(
///  ImGuiStorage* self ,
///  uint key ,
///  int val
/// );
///```
void ImGuiStorage_SetInt(Pointer<ImGuiStorage> self, int key, int val) =>
    _ImGuiStorage_SetInt(self, key, val);

late final _ImGuiStorage_SetInt = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> self, Uint32 key, Int32 val),
    void Function(
        Pointer<ImGuiStorage> self, int key, int val)>('ImGuiStorage_SetInt');

///```c
/// void ImGuiStorage_SetVoidPtr(
///  ImGuiStorage* self ,
///  uint key ,
///  void* val
/// );
///```
void ImGuiStorage_SetVoidPtr(
        Pointer<ImGuiStorage> self, int key, Pointer<Void> val) =>
    _ImGuiStorage_SetVoidPtr(self, key, val);

late final _ImGuiStorage_SetVoidPtr = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStorage> self, Uint32 key, Pointer<Void> val),
    void Function(Pointer<ImGuiStorage> self, int key,
        Pointer<Void> val)>('ImGuiStorage_SetVoidPtr');

///```c
/// void ImGuiStoragePair_destroy(
///  ImGuiStoragePair* self
/// );
///```
void ImGuiStoragePair_destroy(Pointer<ImGuiStoragePair> self) =>
    _ImGuiStoragePair_destroy(self);

late final _ImGuiStoragePair_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStoragePair> self),
    void Function(Pointer<ImGuiStoragePair> self)>('ImGuiStoragePair_destroy');

///```c
/// ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Int(
///  uint _key ,
///  int _val
/// );
///```
Pointer<ImGuiStoragePair> ImGuiStoragePair_ImGuiStoragePair_Int(
        int _key, int _val) =>
    _ImGuiStoragePair_ImGuiStoragePair_Int(_key, _val);

late final _ImGuiStoragePair_ImGuiStoragePair_Int = _cimgui.lookupFunction<
    Pointer<ImGuiStoragePair> Function(Uint32 _key, Int32 _val),
    Pointer<ImGuiStoragePair> Function(
        int _key, int _val)>('ImGuiStoragePair_ImGuiStoragePair_Int');

///```c
/// ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Float(
///  uint _key ,
///  float _val
/// );
///```
Pointer<ImGuiStoragePair> ImGuiStoragePair_ImGuiStoragePair_Float(
        int _key, double _val) =>
    _ImGuiStoragePair_ImGuiStoragePair_Float(_key, _val);

late final _ImGuiStoragePair_ImGuiStoragePair_Float = _cimgui.lookupFunction<
    Pointer<ImGuiStoragePair> Function(Uint32 _key, Float _val),
    Pointer<ImGuiStoragePair> Function(
        int _key, double _val)>('ImGuiStoragePair_ImGuiStoragePair_Float');

///```c
/// ImGuiStoragePair* ImGuiStoragePair_ImGuiStoragePair_Ptr(
///  uint _key ,
///  void* _val
/// );
///```
Pointer<ImGuiStoragePair> ImGuiStoragePair_ImGuiStoragePair_Ptr(
        int _key, Pointer<Void> _val) =>
    _ImGuiStoragePair_ImGuiStoragePair_Ptr(_key, _val);

late final _ImGuiStoragePair_ImGuiStoragePair_Ptr = _cimgui.lookupFunction<
    Pointer<ImGuiStoragePair> Function(Uint32 _key, Pointer<Void> _val),
    Pointer<ImGuiStoragePair> Function(
        int _key, Pointer<Void> _val)>('ImGuiStoragePair_ImGuiStoragePair_Ptr');

///```c
/// void ImGuiStyle_destroy(
///  ImGuiStyle* self
/// );
///```
void ImGuiStyle_destroy(Pointer<ImGuiStyle> self) => _ImGuiStyle_destroy(self);

late final _ImGuiStyle_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStyle> self),
    void Function(Pointer<ImGuiStyle> self)>('ImGuiStyle_destroy');

///```c
/// ImGuiStyle* ImGuiStyle_ImGuiStyle(
/// );
///```
Pointer<ImGuiStyle> ImGuiStyle_ImGuiStyle() => _ImGuiStyle_ImGuiStyle();

late final _ImGuiStyle_ImGuiStyle = _cimgui.lookupFunction<
    Pointer<ImGuiStyle> Function(),
    Pointer<ImGuiStyle> Function()>('ImGuiStyle_ImGuiStyle');

///```c
/// void ImGuiStyle_ScaleAllSizes(
///  ImGuiStyle* self ,
///  float scale_factor
/// );
///```
void ImGuiStyle_ScaleAllSizes(Pointer<ImGuiStyle> self, double scale_factor) =>
    _ImGuiStyle_ScaleAllSizes(self, scale_factor);

late final _ImGuiStyle_ScaleAllSizes = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiStyle> self, Float scale_factor),
    void Function(Pointer<ImGuiStyle> self,
        double scale_factor)>('ImGuiStyle_ScaleAllSizes');

///```c
/// void ImGuiTableColumnSortSpecs_destroy(
///  ImGuiTableColumnSortSpecs* self
/// );
///```
void ImGuiTableColumnSortSpecs_destroy(
        Pointer<ImGuiTableColumnSortSpecs> self) =>
    _ImGuiTableColumnSortSpecs_destroy(self);

late final _ImGuiTableColumnSortSpecs_destroy = _cimgui.lookupFunction<
        Void Function(Pointer<ImGuiTableColumnSortSpecs> self),
        void Function(Pointer<ImGuiTableColumnSortSpecs> self)>(
    'ImGuiTableColumnSortSpecs_destroy');

///```c
/// ImGuiTableColumnSortSpecs* ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs(
/// );
///```
Pointer<ImGuiTableColumnSortSpecs>
    ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs() =>
        _ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs();

late final _ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs =
    _cimgui.lookupFunction<
        Pointer<ImGuiTableColumnSortSpecs> Function(),
        Pointer<ImGuiTableColumnSortSpecs>
            Function()>('ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs');

///```c
/// void ImGuiTableSortSpecs_destroy(
///  ImGuiTableSortSpecs* self
/// );
///```
void ImGuiTableSortSpecs_destroy(Pointer<ImGuiTableSortSpecs> self) =>
    _ImGuiTableSortSpecs_destroy(self);

late final _ImGuiTableSortSpecs_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTableSortSpecs> self),
    void Function(
        Pointer<ImGuiTableSortSpecs> self)>('ImGuiTableSortSpecs_destroy');

///```c
/// ImGuiTableSortSpecs* ImGuiTableSortSpecs_ImGuiTableSortSpecs(
/// );
///```
Pointer<ImGuiTableSortSpecs> ImGuiTableSortSpecs_ImGuiTableSortSpecs() =>
    _ImGuiTableSortSpecs_ImGuiTableSortSpecs();

late final _ImGuiTableSortSpecs_ImGuiTableSortSpecs = _cimgui.lookupFunction<
    Pointer<ImGuiTableSortSpecs> Function(),
    Pointer<ImGuiTableSortSpecs>
        Function()>('ImGuiTableSortSpecs_ImGuiTableSortSpecs');

///```c
/// void ImGuiTextBuffer_append(
///  ImGuiTextBuffer* self ,
///  byte* str ,
///  byte* str_end
/// );
///```
void ImGuiTextBuffer_append(Pointer<ImGuiTextBuffer> self, Pointer<Uint8> str,
        Pointer<Uint8> str_end) =>
    _ImGuiTextBuffer_append(self, str, str_end);

late final _ImGuiTextBuffer_append = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextBuffer> self, Pointer<Uint8> str,
        Pointer<Uint8> str_end),
    void Function(Pointer<ImGuiTextBuffer> self, Pointer<Uint8> str,
        Pointer<Uint8> str_end)>('ImGuiTextBuffer_append');

///```c
/// void ImGuiTextBuffer_appendf(
///  ImGuiTextBuffer* self ,
///  byte* fmt ,
///  ... ...
/// );
///```
void ImGuiTextBuffer_appendf(
        Pointer<ImGuiTextBuffer> self, Pointer<Uint8> fmt) =>
    _ImGuiTextBuffer_appendf(self, fmt);

late final _ImGuiTextBuffer_appendf = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextBuffer> self, Pointer<Uint8> fmt),
    void Function(Pointer<ImGuiTextBuffer> self,
        Pointer<Uint8> fmt)>('ImGuiTextBuffer_appendf');

///```c
/// byte* ImGuiTextBuffer_begin(
///  ImGuiTextBuffer* self
/// );
///```
Pointer<Uint8> ImGuiTextBuffer_begin(Pointer<ImGuiTextBuffer> self) =>
    _ImGuiTextBuffer_begin(self);

late final _ImGuiTextBuffer_begin = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Pointer<ImGuiTextBuffer> self),
    Pointer<Uint8> Function(
        Pointer<ImGuiTextBuffer> self)>('ImGuiTextBuffer_begin');

///```c
/// byte* ImGuiTextBuffer_c_str(
///  ImGuiTextBuffer* self
/// );
///```
Pointer<Uint8> ImGuiTextBuffer_c_str(Pointer<ImGuiTextBuffer> self) =>
    _ImGuiTextBuffer_c_str(self);

late final _ImGuiTextBuffer_c_str = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Pointer<ImGuiTextBuffer> self),
    Pointer<Uint8> Function(
        Pointer<ImGuiTextBuffer> self)>('ImGuiTextBuffer_c_str');

///```c
/// void ImGuiTextBuffer_clear(
///  ImGuiTextBuffer* self
/// );
///```
void ImGuiTextBuffer_clear(Pointer<ImGuiTextBuffer> self) =>
    _ImGuiTextBuffer_clear(self);

late final _ImGuiTextBuffer_clear = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextBuffer> self),
    void Function(Pointer<ImGuiTextBuffer> self)>('ImGuiTextBuffer_clear');

///```c
/// void ImGuiTextBuffer_destroy(
///  ImGuiTextBuffer* self
/// );
///```
void ImGuiTextBuffer_destroy(Pointer<ImGuiTextBuffer> self) =>
    _ImGuiTextBuffer_destroy(self);

late final _ImGuiTextBuffer_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextBuffer> self),
    void Function(Pointer<ImGuiTextBuffer> self)>('ImGuiTextBuffer_destroy');

///```c
/// byte ImGuiTextBuffer_empty(
///  ImGuiTextBuffer* self
/// );
///```
int ImGuiTextBuffer_empty(Pointer<ImGuiTextBuffer> self) =>
    _ImGuiTextBuffer_empty(self);

late final _ImGuiTextBuffer_empty = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiTextBuffer> self),
    int Function(Pointer<ImGuiTextBuffer> self)>('ImGuiTextBuffer_empty');

///```c
/// byte* ImGuiTextBuffer_end(
///  ImGuiTextBuffer* self
/// );
///```
Pointer<Uint8> ImGuiTextBuffer_end(Pointer<ImGuiTextBuffer> self) =>
    _ImGuiTextBuffer_end(self);

late final _ImGuiTextBuffer_end = _cimgui.lookupFunction<
    Pointer<Uint8> Function(Pointer<ImGuiTextBuffer> self),
    Pointer<Uint8> Function(
        Pointer<ImGuiTextBuffer> self)>('ImGuiTextBuffer_end');

///```c
/// ImGuiTextBuffer* ImGuiTextBuffer_ImGuiTextBuffer(
/// );
///```
Pointer<ImGuiTextBuffer> ImGuiTextBuffer_ImGuiTextBuffer() =>
    _ImGuiTextBuffer_ImGuiTextBuffer();

late final _ImGuiTextBuffer_ImGuiTextBuffer = _cimgui.lookupFunction<
    Pointer<ImGuiTextBuffer> Function(),
    Pointer<ImGuiTextBuffer> Function()>('ImGuiTextBuffer_ImGuiTextBuffer');

///```c
/// void ImGuiTextBuffer_reserve(
///  ImGuiTextBuffer* self ,
///  int capacity
/// );
///```
void ImGuiTextBuffer_reserve(Pointer<ImGuiTextBuffer> self, int capacity) =>
    _ImGuiTextBuffer_reserve(self, capacity);

late final _ImGuiTextBuffer_reserve = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextBuffer> self, Int32 capacity),
    void Function(Pointer<ImGuiTextBuffer> self,
        int capacity)>('ImGuiTextBuffer_reserve');

///```c
/// int ImGuiTextBuffer_size(
///  ImGuiTextBuffer* self
/// );
///```
int ImGuiTextBuffer_size(Pointer<ImGuiTextBuffer> self) =>
    _ImGuiTextBuffer_size(self);

late final _ImGuiTextBuffer_size = _cimgui.lookupFunction<
    Int32 Function(Pointer<ImGuiTextBuffer> self),
    int Function(Pointer<ImGuiTextBuffer> self)>('ImGuiTextBuffer_size');

///```c
/// void ImGuiTextFilter_Build(
///  ImGuiTextFilter* self
/// );
///```
void ImGuiTextFilter_Build(Pointer<ImGuiTextFilter> self) =>
    _ImGuiTextFilter_Build(self);

late final _ImGuiTextFilter_Build = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextFilter> self),
    void Function(Pointer<ImGuiTextFilter> self)>('ImGuiTextFilter_Build');

///```c
/// void ImGuiTextFilter_Clear(
///  ImGuiTextFilter* self
/// );
///```
void ImGuiTextFilter_Clear(Pointer<ImGuiTextFilter> self) =>
    _ImGuiTextFilter_Clear(self);

late final _ImGuiTextFilter_Clear = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextFilter> self),
    void Function(Pointer<ImGuiTextFilter> self)>('ImGuiTextFilter_Clear');

///```c
/// void ImGuiTextFilter_destroy(
///  ImGuiTextFilter* self
/// );
///```
void ImGuiTextFilter_destroy(Pointer<ImGuiTextFilter> self) =>
    _ImGuiTextFilter_destroy(self);

late final _ImGuiTextFilter_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextFilter> self),
    void Function(Pointer<ImGuiTextFilter> self)>('ImGuiTextFilter_destroy');

///```c
/// byte ImGuiTextFilter_Draw(
///  ImGuiTextFilter* self ,
///  byte* label ,
///  float width
/// );
///```
int ImGuiTextFilter_Draw(
        Pointer<ImGuiTextFilter> self, Pointer<Uint8> label, double width) =>
    _ImGuiTextFilter_Draw(self, label, width);

late final _ImGuiTextFilter_Draw = _cimgui.lookupFunction<
    Uint8 Function(
        Pointer<ImGuiTextFilter> self, Pointer<Uint8> label, Float width),
    int Function(Pointer<ImGuiTextFilter> self, Pointer<Uint8> label,
        double width)>('ImGuiTextFilter_Draw');

///```c
/// ImGuiTextFilter* ImGuiTextFilter_ImGuiTextFilter(
///  byte* default_filter
/// );
///```
Pointer<ImGuiTextFilter> ImGuiTextFilter_ImGuiTextFilter(
        Pointer<Uint8> default_filter) =>
    _ImGuiTextFilter_ImGuiTextFilter(default_filter);

late final _ImGuiTextFilter_ImGuiTextFilter = _cimgui.lookupFunction<
    Pointer<ImGuiTextFilter> Function(Pointer<Uint8> default_filter),
    Pointer<ImGuiTextFilter> Function(
        Pointer<Uint8> default_filter)>('ImGuiTextFilter_ImGuiTextFilter');

///```c
/// byte ImGuiTextFilter_IsActive(
///  ImGuiTextFilter* self
/// );
///```
int ImGuiTextFilter_IsActive(Pointer<ImGuiTextFilter> self) =>
    _ImGuiTextFilter_IsActive(self);

late final _ImGuiTextFilter_IsActive = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiTextFilter> self),
    int Function(Pointer<ImGuiTextFilter> self)>('ImGuiTextFilter_IsActive');

///```c
/// byte ImGuiTextFilter_PassFilter(
///  ImGuiTextFilter* self ,
///  byte* text ,
///  byte* text_end
/// );
///```
int ImGuiTextFilter_PassFilter(Pointer<ImGuiTextFilter> self,
        Pointer<Uint8> text, Pointer<Uint8> text_end) =>
    _ImGuiTextFilter_PassFilter(self, text, text_end);

late final _ImGuiTextFilter_PassFilter = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiTextFilter> self, Pointer<Uint8> text,
        Pointer<Uint8> text_end),
    int Function(Pointer<ImGuiTextFilter> self, Pointer<Uint8> text,
        Pointer<Uint8> text_end)>('ImGuiTextFilter_PassFilter');

///```c
/// void ImGuiTextRange_destroy(
///  ImGuiTextRange* self
/// );
///```
void ImGuiTextRange_destroy(Pointer<ImGuiTextRange> self) =>
    _ImGuiTextRange_destroy(self);

late final _ImGuiTextRange_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiTextRange> self),
    void Function(Pointer<ImGuiTextRange> self)>('ImGuiTextRange_destroy');

///```c
/// byte ImGuiTextRange_empty(
///  ImGuiTextRange* self
/// );
///```
int ImGuiTextRange_empty(Pointer<ImGuiTextRange> self) =>
    _ImGuiTextRange_empty(self);

late final _ImGuiTextRange_empty = _cimgui.lookupFunction<
    Uint8 Function(Pointer<ImGuiTextRange> self),
    int Function(Pointer<ImGuiTextRange> self)>('ImGuiTextRange_empty');

///```c
/// ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Nil(
/// );
///```
Pointer<ImGuiTextRange> ImGuiTextRange_ImGuiTextRange_Nil() =>
    _ImGuiTextRange_ImGuiTextRange_Nil();

late final _ImGuiTextRange_ImGuiTextRange_Nil = _cimgui.lookupFunction<
    Pointer<ImGuiTextRange> Function(),
    Pointer<ImGuiTextRange> Function()>('ImGuiTextRange_ImGuiTextRange_Nil');

///```c
/// ImGuiTextRange* ImGuiTextRange_ImGuiTextRange_Str(
///  byte* _b ,
///  byte* _e
/// );
///```
Pointer<ImGuiTextRange> ImGuiTextRange_ImGuiTextRange_Str(
        Pointer<Uint8> _b, Pointer<Uint8> _e) =>
    _ImGuiTextRange_ImGuiTextRange_Str(_b, _e);

late final _ImGuiTextRange_ImGuiTextRange_Str = _cimgui.lookupFunction<
    Pointer<ImGuiTextRange> Function(Pointer<Uint8> _b, Pointer<Uint8> _e),
    Pointer<ImGuiTextRange> Function(Pointer<Uint8> _b,
        Pointer<Uint8> _e)>('ImGuiTextRange_ImGuiTextRange_Str');

///```c
/// void ImGuiTextRange_split(
///  ImGuiTextRange* self ,
///  byte separator ,
///  ImVector* _out
/// );
///```
void ImGuiTextRange_split(
        Pointer<ImGuiTextRange> self, int separator, Pointer<ImVector> _out) =>
    _ImGuiTextRange_split(self, separator, _out);

late final _ImGuiTextRange_split = _cimgui.lookupFunction<
    Void Function(
        Pointer<ImGuiTextRange> self, Uint8 separator, Pointer<ImVector> _out),
    void Function(Pointer<ImGuiTextRange> self, int separator,
        Pointer<ImVector> _out)>('ImGuiTextRange_split');

///```c
/// void ImGuiViewport_destroy(
///  ImGuiViewport* self
/// );
///```
void ImGuiViewport_destroy(Pointer<ImGuiViewport> self) =>
    _ImGuiViewport_destroy(self);

late final _ImGuiViewport_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiViewport> self),
    void Function(Pointer<ImGuiViewport> self)>('ImGuiViewport_destroy');

///```c
/// void ImGuiViewport_GetCenter(
///  ImVec2* pOut ,
///  ImGuiViewport* self
/// );
///```
void ImGuiViewport_GetCenter(
        Pointer<ImVec2> pOut, Pointer<ImGuiViewport> self) =>
    _ImGuiViewport_GetCenter(pOut, self);

late final _ImGuiViewport_GetCenter = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut, Pointer<ImGuiViewport> self),
    void Function(Pointer<ImVec2> pOut,
        Pointer<ImGuiViewport> self)>('ImGuiViewport_GetCenter');

///```c
/// void ImGuiViewport_GetWorkCenter(
///  ImVec2* pOut ,
///  ImGuiViewport* self
/// );
///```
void ImGuiViewport_GetWorkCenter(
        Pointer<ImVec2> pOut, Pointer<ImGuiViewport> self) =>
    _ImGuiViewport_GetWorkCenter(pOut, self);

late final _ImGuiViewport_GetWorkCenter = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> pOut, Pointer<ImGuiViewport> self),
    void Function(Pointer<ImVec2> pOut,
        Pointer<ImGuiViewport> self)>('ImGuiViewport_GetWorkCenter');

///```c
/// ImGuiViewport* ImGuiViewport_ImGuiViewport(
/// );
///```
Pointer<ImGuiViewport> ImGuiViewport_ImGuiViewport() =>
    _ImGuiViewport_ImGuiViewport();

late final _ImGuiViewport_ImGuiViewport = _cimgui.lookupFunction<
    Pointer<ImGuiViewport> Function(),
    Pointer<ImGuiViewport> Function()>('ImGuiViewport_ImGuiViewport');

///```c
/// void ImGuiWindowClass_destroy(
///  ImGuiWindowClass* self
/// );
///```
void ImGuiWindowClass_destroy(Pointer<ImGuiWindowClass> self) =>
    _ImGuiWindowClass_destroy(self);

late final _ImGuiWindowClass_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImGuiWindowClass> self),
    void Function(Pointer<ImGuiWindowClass> self)>('ImGuiWindowClass_destroy');

///```c
/// ImGuiWindowClass* ImGuiWindowClass_ImGuiWindowClass(
/// );
///```
Pointer<ImGuiWindowClass> ImGuiWindowClass_ImGuiWindowClass() =>
    _ImGuiWindowClass_ImGuiWindowClass();

late final _ImGuiWindowClass_ImGuiWindowClass = _cimgui.lookupFunction<
    Pointer<ImGuiWindowClass> Function(),
    Pointer<ImGuiWindowClass> Function()>('ImGuiWindowClass_ImGuiWindowClass');

///```c
/// void ImVec2_destroy(
///  ImVec2* self
/// );
///```
void ImVec2_destroy(Pointer<ImVec2> self) => _ImVec2_destroy(self);

late final _ImVec2_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec2> self),
    void Function(Pointer<ImVec2> self)>('ImVec2_destroy');

///```c
/// ImVec2* ImVec2_ImVec2_Nil(
/// );
///```
Pointer<ImVec2> ImVec2_ImVec2_Nil() => _ImVec2_ImVec2_Nil();

late final _ImVec2_ImVec2_Nil = _cimgui.lookupFunction<
    Pointer<ImVec2> Function(),
    Pointer<ImVec2> Function()>('ImVec2_ImVec2_Nil');

///```c
/// ImVec2* ImVec2_ImVec2_Float(
///  float _x ,
///  float _y
/// );
///```
Pointer<ImVec2> ImVec2_ImVec2_Float(double _x, double _y) =>
    _ImVec2_ImVec2_Float(_x, _y);

late final _ImVec2_ImVec2_Float = _cimgui.lookupFunction<
    Pointer<ImVec2> Function(Float _x, Float _y),
    Pointer<ImVec2> Function(double _x, double _y)>('ImVec2_ImVec2_Float');

///```c
/// void ImVec4_destroy(
///  ImVec4* self
/// );
///```
void ImVec4_destroy(Pointer<ImVec4> self) => _ImVec4_destroy(self);

late final _ImVec4_destroy = _cimgui.lookupFunction<
    Void Function(Pointer<ImVec4> self),
    void Function(Pointer<ImVec4> self)>('ImVec4_destroy');

///```c
/// ImVec4* ImVec4_ImVec4_Nil(
/// );
///```
Pointer<ImVec4> ImVec4_ImVec4_Nil() => _ImVec4_ImVec4_Nil();

late final _ImVec4_ImVec4_Nil = _cimgui.lookupFunction<
    Pointer<ImVec4> Function(),
    Pointer<ImVec4> Function()>('ImVec4_ImVec4_Nil');

///```c
/// ImVec4* ImVec4_ImVec4_Float(
///  float _x ,
///  float _y ,
///  float _z ,
///  float _w
/// );
///```
Pointer<ImVec4> ImVec4_ImVec4_Float(
        double _x, double _y, double _z, double _w) =>
    _ImVec4_ImVec4_Float(_x, _y, _z, _w);

late final _ImVec4_ImVec4_Float = _cimgui.lookupFunction<
    Pointer<ImVec4> Function(Float _x, Float _y, Float _z, Float _w),
    Pointer<ImVec4> Function(
        double _x, double _y, double _z, double _w)>('ImVec4_ImVec4_Float');
