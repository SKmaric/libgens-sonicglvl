//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name                          Reg   Size
//   ----------------------------- ----- ----
//   mrgHasBone                    b15      1
//   g_MtxPalette                  c28     75
//   g_EyePosition                 c178     1
//   mrgGlobalLight_Direction      c183     1
//   mrgTexcoordOffset             c191     2
//   mrgFresnelParam               c193     1
//   g_LightScatteringFarNearScale c199     1
//   g_MtxProjection               c224     4
//   g_MtxView                     c228     4
//   g_MtxWorld                    c232     4
//

    vs_3_0
    def c0, 1, 3, 0, 0.5
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_color v5
    dcl_normal v6
    dcl_tangent v7
    dcl_binormal v8
    dcl_blendweight v9
    dcl_blendindices v10
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord5 o5
    dcl_texcoord7 o6
    dcl_texcoord8 o7
    dcl_color o8
    mov r0.xy, v1
    mov r0.zw, v2.xyxy
    add o1, r0, c191
    mov r0.xy, v3
    mov r0.zw, v4.xyxy
    add o2, r0, c192
    if b15
      add r0.x, c0.x, -v9.x
      add r0.x, r0.x, -v9.y
      add r0.x, r0.x, -v9.z
      mul r1, c0.y, v10
      mova a0, r1.yxzw
      mul r2, v9.y, c30[a0.x]
      mad r2, v9.x, c30[a0.y], r2
      mad r2, v9.z, c30[a0.z], r2
      mad r1, r0.x, c30[a0.w], r2
      dp3 r0.y, r1, v6
      mad r2, v0.xyzx, c0.xxxz, c0.zzzx
      dp4 r0.z, r1, r2
      mul r3, v9.y, c28[a0.x]
      mad r3, v9.x, c28[a0.y], r3
      mad r3, v9.z, c28[a0.z], r3
      mad r3, r0.x, c28[a0.w], r3
      dp4 r0.w, r3, r2
      dp3 r1.w, r3, v6
      dp3 r3.w, r3, v7
      mul r4, v9.y, c29[a0.x]
      mad r4, v9.x, c29[a0.y], r4
      mad r4, v9.z, c29[a0.z], r4
      mad r4, r0.x, c29[a0.w], r4
      dp4 r0.x, r4, r2
      dp3 r2.x, r4, v6
      dp3 r2.y, r4, v7
      dp3 r2.z, r1, v7
      dp3 r2.w, r3, -v8
      dp3 r3.x, r4, -v8
      dp3 r1.x, r1, -v8
    else
      mov r3.w, v7.x
      mov r2.yz, v7
      mov r2.w, -v8.x
      mov r3.x, -v8.y
      mov r1.x, -v8.z
      mov r1.w, v6.x
      mov r2.x, v6.y
      mov r0.y, v6.z
      mov r0.xzw, v0.yyzx
    endif
    mul r4.xyz, r2.y, c233
    mad r3.yzw, r3.w, c232.xxyz, r4.xxyz
    mad o6.xyz, r2.z, c234, r3.yzww
    mul r3.xyz, r3.x, c233
    mad r2.yzw, r2.w, c232.xxyz, r3.xxyz
    mad o7.xyz, r1.x, c234, r2.yzww
    mul r3, r0.x, c233
    mad r3, r0.w, c232, r3
    mad r3, r0.z, c234, r3
    add r3, r3, c235
    mul r4, r3.y, c229
    mad r4, r3.x, c228, r4
    mad r4, r3.z, c230, r4
    mad r4, r3.w, c231, r4
    mul r5, r4.y, c225
    mad r5, r4.x, c224, r5
    mad r5, r4.z, c226, r5
    mad o0, r4.w, c227, r5
    mov o3.xyz, r3
    mov o3.w, -r4.z
    mul r0.xzw, r2.x, c233.xyyz
    mad r0.xzw, r1.w, c232.xyyz, r0
    mad r0.xyz, r0.y, c234, r0.xzww
    nrm r1.xyz, r0
    mov o4.xyz, r1
    add r0.x, -r4.z, -c199.y
    mul_sat o5.x, r0.x, c199.x
    mov r0.x, c0.x
    add r0.x, r0.x, -c193.x
    add r0.yzw, -r3.xxyz, c178.xxyz
    nrm r2.xyz, r0.yzww
    dp3_sat r0.y, r1, r2
    add r0.y, -r0.y, c0.x
    mul r0.z, r0.y, r0.y
    mul r0.z, r0.z, r0.z
    mul r0.z, r0.y, r0.z
    mad o4.w, r0.z, r0.x, c193.x
    mov o5.w, r0.y
    dp3 r0.x, -c183, r2
    mad o5.y, r0.x, c0.w, c0.w
    mov o5.z, c0.z
    mov o6.w, c0.z
    mov o7.w, c0.z
    mov o8, v5

// approximately 98 instruction slots used
