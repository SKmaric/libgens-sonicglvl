//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ViewportSize;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c180     1
//

    vs_3_0
    def c0, -1, 0, 1, -2
    dcl_position v0
    dcl_texcoord v1
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    mov r0, c0
    mad o2, c180.zwzw, r0.xyyx, v1.xyxy
    mad o3, c180.zwzw, r0.zyyz, v1.xyxy
    mad o4, c180.zwzw, r0.wyyw, v1.xyxy
    mad o0, v0.xyzx, c0.zzzy, c0.yyyz
    mov o1.xy, v1

// approximately 6 instruction slots used
