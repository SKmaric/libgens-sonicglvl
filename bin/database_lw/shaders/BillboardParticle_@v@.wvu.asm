//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   row_major float4x4 g_MtxWorldIT;
//   bool mrgHasBone;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   mrgHasBone      b15      1
//   g_MtxProjection c224     4
//   g_MtxView       c228     4
//   g_MtxWorld      c232     4
//   g_MtxWorldIT    c236     3
//

    vs_3_0
    def c0, -1, 0, 3, -0.100000001
    dcl_position v0
    dcl_texcoord v1
    dcl_color v2
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_position o0
    dcl_texcoord o1
    dcl_color o2
    dcl_texcoord2 o3
    mov o1, v1
    mul r0, c233, v0.y
    mad r0, v0.x, c232, r0
    mad r0, v0.z, c234, r0
    add r0, r0, c235
    if b15
      nrm r1.xyz, v3
      mul r2.xyz, r1.y, c229
      mad r1.xyw, r1.x, c228.xyzz, r2.xyzz
      mad r1.xyz, r1.z, c230, r1.xyww
      mul r2.xyz, r1, v0.w
      mul r3.xyz, r1.yzxw, c0.xyyw
      mad r1.xyz, r1.zxyw, c0.yxyw, -r3
      dp3 r1.w, r1, r1
      rsq r1.w, r1.w
      mul r1.xyz, r1.w, r1
      mad r2.xyz, r1, v3.w, r2
      rcp r1.x, r1.w
      mad_sat r1.x, r1.x, c0.z, c0.w
      mul r1.x, r1.x, v2.w
      mul r3, r0.y, c229
      mad r3, r0.x, c228, r3
      mad r3, r0.z, c230, r3
      mad r3, r0.w, c231, r3
      mov r2.w, c0.y
      add r2, r2, r3
      mov r3.x, c0.y
    else
      mul r4, c237, v3.y
      mad r4, v3.x, c236, r4
      mad r4, v3.z, c238, r4
      add r0, r0, r4
      mul r4, r0.y, c229
      mad r4, r0.x, c228, r4
      mad r4, r0.z, c230, r4
      mad r2, r0.w, c231, r4
      mov r1.x, v2.w
      mov r3.x, v0.w
    endif
    mov r3.y, c0.y
    add r0, r2, r3.yyxy
    mul r3.xy, r0.y, c225.zwzw
    mad r0.xy, r0.x, c224.zwzw, r3
    mad r0.xy, r0.z, c226.zwzw, r0
    mad r0.xy, r0.w, c227.zwzw, r0
    rcp r0.y, r0.y
    mul r0.x, r0.y, r0.x
    mul r0.yzw, r2.y, c225.xxyw
    mad r0.yzw, r2.x, c224.xxyw, r0
    mad r0.yzw, r2.z, c226.xxyw, r0
    mad r0.yzw, r2.w, c227.xxyw, r0
    mov o0.xyw, r0.yzzw
    mul o0.z, r0.w, r0.x
    mov r1.yzw, v2.xxyz
    mov o2, r1.yzwx
    mov o3, v4

// approximately 60 instruction slots used
