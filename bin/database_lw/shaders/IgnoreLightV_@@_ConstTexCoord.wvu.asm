//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_IgnoreLightParam;
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
//   g_IgnoreLightParam            c246     1
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
    dcl_blendweight v7
    dcl_blendindices v8
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord5 o5
    dcl_color o6
    mov r0.xy, v1
    mov r0.zw, v2.xyxy
    add o1, r0, c191
    mov r0.xy, v3
    mov r0.zw, v4.xyxy
    add o2, r0, c192
    if b15
      add r0.x, c0.x, -v7.x
      add r0.x, r0.x, -v7.y
      add r0.x, r0.x, -v7.z
      mul r1, c0.y, v8
      mova a0, r1.yxzw
      mul r2, v7.y, c30[a0.x]
      mad r2, v7.x, c30[a0.y], r2
      mad r2, v7.z, c30[a0.z], r2
      mad r1, r0.x, c30[a0.w], r2
      dp3 r0.y, r1, v6
      mad r2, v0.xyzx, c0.xxxz, c0.zzzx
      dp4 r0.z, r1, r2
      mul r1, v7.y, c28[a0.x]
      mad r1, v7.x, c28[a0.y], r1
      mad r1, v7.z, c28[a0.z], r1
      mad r1, r0.x, c28[a0.w], r1
      dp4 r0.w, r1, r2
      dp3 r1.x, r1, v6
      mul r3, v7.y, c29[a0.x]
      mad r3, v7.x, c29[a0.y], r3
      mad r3, v7.z, c29[a0.z], r3
      mad r3, r0.x, c29[a0.w], r3
      dp4 r0.x, r3, r2
      dp3 r1.y, r3, v6
    else
      mov r1.xy, v6
      mov r0.y, v6.z
      mov r0.xzw, v0.yyzx
    endif
    mul r1.yzw, r1.y, c233.xxyz
    mad r1.xyz, r1.x, c232, r1.yzww
    mad r1.xyz, r0.y, c234, r1
    nrm r2.xyz, r1
    mov o4.xyz, r2
    mul r1, r0.x, c233
    mad r1, r0.w, c232, r1
    mad r0, r0.z, c234, r1
    add r0, r0, c235
    mul r1, r0.y, c229
    mad r1, r0.x, c228, r1
    mad r1, r0.z, c230, r1
    mad r1, r0.w, c231, r1
    mov r3.xz, c0
    mad r4, c246.z, r3.zzxz, r1
    mul r3.yz, r4.y, c225.xzww
    mad r3.yz, r4.x, c224.xzww, r3
    mad r3.yz, r4.z, c226.xzww, r3
    mad r3.yz, r4.w, c227.xzww, r3
    rcp r0.w, r3.z
    mul r0.w, r0.w, r3.y
    abs r2.w, c246.z
    sge r2.w, -r2.w, r2.w
    mul r4, r1.y, c225
    mad r4, r1.x, c224, r4
    mad r4, r1.z, c226, r4
    mad r4, r1.w, c227, r4
    mov o0.xyw, r4
    mad r1.x, r0.w, -r4.w, r4.z
    mul r0.w, r0.w, r4.w
    mad o0.z, r2.w, r1.x, r0.w
    add r0.w, -r1.z, -c246.z
    mov o3, r0
    add r0.w, r0.w, -c199.y
    mul_sat o5.x, r0.w, c199.x
    add r0.w, r3.x, -c193.x
    add r0.xyz, -r0, c178
    nrm r1.xyz, r0
    dp3_sat r0.x, r2, r1
    add r0.x, -r0.x, c0.x
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.y, r0.x, r0.y
    mad o4.w, r0.y, r0.w, c193.x
    mov o5.w, r0.x
    dp3 r0.x, -c183, r1
    mad o5.y, r0.x, c0.w, c0.w
    mov o5.z, c0.z
    mov o6, v5

// approximately 91 instruction slots used
