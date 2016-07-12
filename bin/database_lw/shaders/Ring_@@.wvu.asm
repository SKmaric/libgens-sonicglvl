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
//   float4 mrgTexcoordIndex[4];
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
//   mrgTexcoordIndex              c187     1
//   mrgTexcoordOffset             c191     2
//   mrgFresnelParam               c193     1
//   g_LightScatteringFarNearScale c199     1
//   g_MtxProjection               c224     4
//   g_MtxView                     c228     4
//   g_MtxWorld                    c232     4
//

    vs_3_0
    def c4, 3, 0.5, 0, 0
    def c0, 1, 0, 0, 0
    def c1, 0, 1, 0, 0
    def c2, 0, 0, 1, 0
    def c3, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_normal v5
    dcl_blendweight v6
    dcl_blendindices v7
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    mov o1.zw, c0.w
    if b15
      add r0.x, v6.y, v6.x
      add r0.x, r0.x, v6.z
      add r0.x, -r0.x, c0.x
      mul r1, v7, c4.x
      mova a0, r1.yxzw
      mul r2, v6.y, c30[a0.x]
      mad r2, c30[a0.y], v6.x, r2
      mad r2, c30[a0.z], v6.z, r2
      mad r1, c30[a0.w], r0.x, r2
      dp4 r0.y, r1, v0
      dp3 r0.z, r1, v5
      mul r1, v6.y, c28[a0.x]
      mad r1, c28[a0.y], v6.x, r1
      mad r1, c28[a0.z], v6.z, r1
      mad r1, c28[a0.w], r0.x, r1
      dp4 r0.w, r1, v0
      dp3 r1.x, r1, v5
      mul r2, v6.y, c29[a0.x]
      mad r2, c29[a0.y], v6.x, r2
      mad r2, c29[a0.z], v6.z, r2
      mad r2, c29[a0.w], r0.x, r2
      dp4 r0.x, r2, v0
      dp3 r1.y, r2, v5
      mov r1.z, v0.w
    else
      mov r0.xyw, v0.yzzx
      mov r1.z, v0.w
      mov r1.xy, v5
      mov r0.z, v5.z
    endif
    mul r2, r0.x, c233
    mad r2, r0.w, c232, r2
    mad r2, r0.y, c234, r2
    mad r2, r1.z, c235, r2
    mul r3, r2.y, c229
    mad r3, r2.x, c228, r3
    mad r3, r2.z, c230, r3
    mad r3, r2.w, c231, r3
    mul r4, r3.y, c225
    mad r4, r3.x, c224, r4
    mad r4, r3.z, c226, r4
    mad o0, r3.w, c227, r4
    frc r0.x, c187.x
    slt r0.y, -r0.x, r0.x
    add r0.x, -r0.x, c187.x
    slt r0.w, c187.x, -c187.x
    mad r0.x, r0.w, r0.y, r0.x
    add r0.yw, c191.xxzy, v1.xxzy
    add r1.zw, c191, v2.xyxy
    add r3.xy, c192, v3
    mova a0.x, r0.x
    mul r0.xy, r0.ywzw, c0[a0.x].x
    mad r0.xy, c0[a0.x].y, r1.zwzw, r0
    mad r0.xy, c0[a0.x].z, r3, r0
    add r1.zw, c192, v4.xyxy
    mad o1.xy, c0[a0.x].w, r1.zwzw, r0
    mov o2.xyz, r2
    mul r0.xyw, r1.y, c233.xyzz
    mad r0.xyw, r1.x, c232.xyzz, r0
    mad r0.xyz, r0.z, c234, r0.xyww
    nrm r1.xyz, r0
    mov o3.xyz, r1
    mov r0.x, c0.x
    add r0.x, r0.x, -c193.x
    add r0.yzw, -r2.xxyz, c178.xxyz
    nrm r2.xyz, r0.yzww
    dp3_sat r0.y, r1, r2
    add r0.y, -r0.y, c0.x
    mul r0.z, r0.y, r0.y
    mul r0.z, r0.z, r0.z
    mul r0.y, r0.y, r0.z
    mad o3.w, r0.y, r0.x, c193.x
    mov o2.w, -r3.z
    add r0.x, -r3.z, -c199.y
    mul_sat o4.x, r0.x, c199.x
    dp3 r0.x, -c183, r2
    mad o4.y, r0.x, c4.y, c4.y
    mov o4.zw, c0.w

// approximately 86 instruction slots used
