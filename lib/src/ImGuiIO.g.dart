import 'dart:ffi';

import 'ImGuiConfigFlags.g.dart';
import 'ImGuiBackendFlags.g.dart';
import 'ImVec2.g.dart';
import 'ImFontAtlas.g.dart';
import 'ImFont.g.dart';
import 'ImGuiMouseSource.g.dart';
import 'ImGuiKeyChord.g.dart';
import 'ImGuiKeyData.g.dart';
import 'ImVector.g.dart';

base class ImGuiIO extends Struct {
  /// Enum ImGuiConfigFlags
  @Uint32()
  external int configFlags;

  /// Enum ImGuiBackendFlags
  @Uint32()
  external int backendFlags;

  external ImVec2 displaySize;

  @Float()
  external double deltaTime;

  @Float()
  external double iniSavingRate;

  external Pointer<Uint8> iniFilename;

  external Pointer<Uint8> logFilename;

  external Pointer<Void> userData;

  external Pointer<ImFontAtlas> fonts;

  @Float()
  external double fontGlobalScale;

  @Uint8()
  external int fontAllowUserScaling;

  external Pointer<ImFont> fontDefault;

  external ImVec2 displayFramebufferScale;

  @Uint8()
  external int configDockingNoSplit;

  @Uint8()
  external int configDockingWithShift;

  @Uint8()
  external int configDockingAlwaysTabBar;

  @Uint8()
  external int configDockingTransparentPayload;

  @Uint8()
  external int configViewportsNoAutoMerge;

  @Uint8()
  external int configViewportsNoTaskBarIcon;

  @Uint8()
  external int configViewportsNoDecoration;

  @Uint8()
  external int configViewportsNoDefaultParent;

  @Uint8()
  external int mouseDrawCursor;

  @Uint8()
  external int configMacOSXBehaviors;

  @Uint8()
  external int configInputTrickleEventQueue;

  @Uint8()
  external int configInputTextCursorBlink;

  @Uint8()
  external int configInputTextEnterKeepActive;

  @Uint8()
  external int configDragClickToInputText;

  @Uint8()
  external int configWindowsResizeFromEdges;

  @Uint8()
  external int configWindowsMoveFromTitleBarOnly;

  @Float()
  external double configMemoryCompactTimer;

  @Float()
  external double mouseDoubleClickTime;

  @Float()
  external double mouseDoubleClickMaxDist;

  @Float()
  external double mouseDragThreshold;

  @Float()
  external double keyRepeatDelay;

  @Float()
  external double keyRepeatRate;

  @Uint8()
  external int configDebugIsDebuggerPresent;

  @Uint8()
  external int configDebugBeginReturnValueOnce;

  @Uint8()
  external int configDebugBeginReturnValueLoop;

  @Uint8()
  external int configDebugIgnoreFocusLoss;

  @Uint8()
  external int configDebugIniSettings;

  external Pointer<Uint8> backendPlatformName;

  external Pointer<Uint8> backendRendererName;

  external Pointer<Void> backendPlatformUserData;

  external Pointer<Void> backendRendererUserData;

  external Pointer<Void> backendLanguageUserData;

  external Pointer getClipboardTextFn;

  external Pointer setClipboardTextFn;

  external Pointer<Void> clipboardUserData;

  external Pointer setPlatformImeDataFn;

  @Uint16()
  external int platformLocaleDecimalPoint;

  @Uint8()
  external int wantCaptureMouse;

  @Uint8()
  external int wantCaptureKeyboard;

  @Uint8()
  external int wantTextInput;

  @Uint8()
  external int wantSetMousePos;

  @Uint8()
  external int wantSaveIniSettings;

  @Uint8()
  external int navActive;

  @Uint8()
  external int navVisible;

  @Float()
  external double framerate;

  @Int32()
  external int metricsRenderVertices;

  @Int32()
  external int metricsRenderIndices;

  @Int32()
  external int metricsRenderWindows;

  @Int32()
  external int metricsActiveWindows;

  external ImVec2 mouseDelta;

  external Pointer<Void> _UnusedPadding;

  @IntPtr()
  external int ctx;

  external ImVec2 mousePos;

  @Array(5)
  external Array<Uint8> mouseDown;

  @Float()
  external double mouseWheel;

  @Float()
  external double mouseWheelH;

  /// Enum ImGuiMouseSource
  @Uint32()
  external int mouseSource;

  @Uint32()
  external int mouseHoveredViewport;

  @Uint8()
  external int keyCtrl;

  @Uint8()
  external int keyShift;

  @Uint8()
  external int keyAlt;

  @Uint8()
  external int keySuper;

  @Uint8()
  external int keyMods;

  external ImGuiKeyData keysData_0;
  external ImGuiKeyData keysData_1;
  external ImGuiKeyData keysData_2;
  external ImGuiKeyData keysData_3;
  external ImGuiKeyData keysData_4;
  external ImGuiKeyData keysData_5;
  external ImGuiKeyData keysData_6;
  external ImGuiKeyData keysData_7;
  external ImGuiKeyData keysData_8;
  external ImGuiKeyData keysData_9;
  external ImGuiKeyData keysData_10;
  external ImGuiKeyData keysData_11;
  external ImGuiKeyData keysData_12;
  external ImGuiKeyData keysData_13;
  external ImGuiKeyData keysData_14;
  external ImGuiKeyData keysData_15;
  external ImGuiKeyData keysData_16;
  external ImGuiKeyData keysData_17;
  external ImGuiKeyData keysData_18;
  external ImGuiKeyData keysData_19;
  external ImGuiKeyData keysData_20;
  external ImGuiKeyData keysData_21;
  external ImGuiKeyData keysData_22;
  external ImGuiKeyData keysData_23;
  external ImGuiKeyData keysData_24;
  external ImGuiKeyData keysData_25;
  external ImGuiKeyData keysData_26;
  external ImGuiKeyData keysData_27;
  external ImGuiKeyData keysData_28;
  external ImGuiKeyData keysData_29;
  external ImGuiKeyData keysData_30;
  external ImGuiKeyData keysData_31;
  external ImGuiKeyData keysData_32;
  external ImGuiKeyData keysData_33;
  external ImGuiKeyData keysData_34;
  external ImGuiKeyData keysData_35;
  external ImGuiKeyData keysData_36;
  external ImGuiKeyData keysData_37;
  external ImGuiKeyData keysData_38;
  external ImGuiKeyData keysData_39;
  external ImGuiKeyData keysData_40;
  external ImGuiKeyData keysData_41;
  external ImGuiKeyData keysData_42;
  external ImGuiKeyData keysData_43;
  external ImGuiKeyData keysData_44;
  external ImGuiKeyData keysData_45;
  external ImGuiKeyData keysData_46;
  external ImGuiKeyData keysData_47;
  external ImGuiKeyData keysData_48;
  external ImGuiKeyData keysData_49;
  external ImGuiKeyData keysData_50;
  external ImGuiKeyData keysData_51;
  external ImGuiKeyData keysData_52;
  external ImGuiKeyData keysData_53;
  external ImGuiKeyData keysData_54;
  external ImGuiKeyData keysData_55;
  external ImGuiKeyData keysData_56;
  external ImGuiKeyData keysData_57;
  external ImGuiKeyData keysData_58;
  external ImGuiKeyData keysData_59;
  external ImGuiKeyData keysData_60;
  external ImGuiKeyData keysData_61;
  external ImGuiKeyData keysData_62;
  external ImGuiKeyData keysData_63;
  external ImGuiKeyData keysData_64;
  external ImGuiKeyData keysData_65;
  external ImGuiKeyData keysData_66;
  external ImGuiKeyData keysData_67;
  external ImGuiKeyData keysData_68;
  external ImGuiKeyData keysData_69;
  external ImGuiKeyData keysData_70;
  external ImGuiKeyData keysData_71;
  external ImGuiKeyData keysData_72;
  external ImGuiKeyData keysData_73;
  external ImGuiKeyData keysData_74;
  external ImGuiKeyData keysData_75;
  external ImGuiKeyData keysData_76;
  external ImGuiKeyData keysData_77;
  external ImGuiKeyData keysData_78;
  external ImGuiKeyData keysData_79;
  external ImGuiKeyData keysData_80;
  external ImGuiKeyData keysData_81;
  external ImGuiKeyData keysData_82;
  external ImGuiKeyData keysData_83;
  external ImGuiKeyData keysData_84;
  external ImGuiKeyData keysData_85;
  external ImGuiKeyData keysData_86;
  external ImGuiKeyData keysData_87;
  external ImGuiKeyData keysData_88;
  external ImGuiKeyData keysData_89;
  external ImGuiKeyData keysData_90;
  external ImGuiKeyData keysData_91;
  external ImGuiKeyData keysData_92;
  external ImGuiKeyData keysData_93;
  external ImGuiKeyData keysData_94;
  external ImGuiKeyData keysData_95;
  external ImGuiKeyData keysData_96;
  external ImGuiKeyData keysData_97;
  external ImGuiKeyData keysData_98;
  external ImGuiKeyData keysData_99;
  external ImGuiKeyData keysData_100;
  external ImGuiKeyData keysData_101;
  external ImGuiKeyData keysData_102;
  external ImGuiKeyData keysData_103;
  external ImGuiKeyData keysData_104;
  external ImGuiKeyData keysData_105;
  external ImGuiKeyData keysData_106;
  external ImGuiKeyData keysData_107;
  external ImGuiKeyData keysData_108;
  external ImGuiKeyData keysData_109;
  external ImGuiKeyData keysData_110;
  external ImGuiKeyData keysData_111;
  external ImGuiKeyData keysData_112;
  external ImGuiKeyData keysData_113;
  external ImGuiKeyData keysData_114;
  external ImGuiKeyData keysData_115;
  external ImGuiKeyData keysData_116;
  external ImGuiKeyData keysData_117;
  external ImGuiKeyData keysData_118;
  external ImGuiKeyData keysData_119;
  external ImGuiKeyData keysData_120;
  external ImGuiKeyData keysData_121;
  external ImGuiKeyData keysData_122;
  external ImGuiKeyData keysData_123;
  external ImGuiKeyData keysData_124;
  external ImGuiKeyData keysData_125;
  external ImGuiKeyData keysData_126;
  external ImGuiKeyData keysData_127;
  external ImGuiKeyData keysData_128;
  external ImGuiKeyData keysData_129;
  external ImGuiKeyData keysData_130;
  external ImGuiKeyData keysData_131;
  external ImGuiKeyData keysData_132;
  external ImGuiKeyData keysData_133;
  external ImGuiKeyData keysData_134;
  external ImGuiKeyData keysData_135;
  external ImGuiKeyData keysData_136;
  external ImGuiKeyData keysData_137;
  external ImGuiKeyData keysData_138;
  external ImGuiKeyData keysData_139;
  external ImGuiKeyData keysData_140;
  external ImGuiKeyData keysData_141;
  external ImGuiKeyData keysData_142;
  external ImGuiKeyData keysData_143;
  external ImGuiKeyData keysData_144;
  external ImGuiKeyData keysData_145;
  external ImGuiKeyData keysData_146;
  external ImGuiKeyData keysData_147;
  external ImGuiKeyData keysData_148;
  external ImGuiKeyData keysData_149;
  external ImGuiKeyData keysData_150;
  external ImGuiKeyData keysData_151;
  external ImGuiKeyData keysData_152;
  external ImGuiKeyData keysData_153;

  @Uint8()
  external int wantCaptureMouseUnlessPopupClose;

  external ImVec2 mousePosPrev;

  external ImVec2 mouseClickedPos_0;
  external ImVec2 mouseClickedPos_1;
  external ImVec2 mouseClickedPos_2;
  external ImVec2 mouseClickedPos_3;
  external ImVec2 mouseClickedPos_4;

  @Array(5)
  external Array<Double> mouseClickedTime;

  @Array(5)
  external Array<Uint8> mouseClicked;

  @Array(5)
  external Array<Uint8> mouseDoubleClicked;

  @Array(5)
  external Array<Uint16> mouseClickedCount;

  @Array(5)
  external Array<Uint16> mouseClickedLastCount;

  @Array(5)
  external Array<Uint8> mouseReleased;

  @Array(5)
  external Array<Uint8> mouseDownOwned;

  @Array(5)
  external Array<Uint8> mouseDownOwnedUnlessPopupClose;

  @Uint8()
  external int mouseWheelRequestAxisSwap;

  @Array(5)
  external Array<Float> mouseDownDuration;

  @Array(5)
  external Array<Float> mouseDownDurationPrev;

  external ImVec2 mouseDragMaxDistanceAbs_0;
  external ImVec2 mouseDragMaxDistanceAbs_1;
  external ImVec2 mouseDragMaxDistanceAbs_2;
  external ImVec2 mouseDragMaxDistanceAbs_3;
  external ImVec2 mouseDragMaxDistanceAbs_4;

  @Array(5)
  external Array<Float> mouseDragMaxDistanceSqr;

  @Float()
  external double penPressure;

  @Uint8()
  external int appFocusLost;

  @Uint8()
  external int appAcceptingEvents;

  @Int8()
  external int backendUsingLegacyKeyArrays;

  @Uint8()
  external int backendUsingLegacyNavInputArray;

  @Uint16()
  external int inputQueueSurrogate;

  external ImVector inputQueueCharacters;
}
