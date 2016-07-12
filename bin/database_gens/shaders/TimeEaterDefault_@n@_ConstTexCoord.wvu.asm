//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float4x4 g_MtxLightViewProjection;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxVerticalLightViewProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_TimeEaterAlphaParam;
//   float4 g_VerticalLightDirection;
//   float4 mrgGIAtlasParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   mrgHasBone                          b0       1
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_MtxWorld                          c8       4
//   g_MtxLightViewProjection            c24      4
//   g_MtxPalette                        c28     75
//   g_EyePosition                       c178     1
//   mrgGlobalLight_Direction            c183     1
//   mrgGIAtlasParam                     c186     1
//   mrgTexcoordOffset                   c191     1
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_MtxVerticalLightViewProjection    c207     4
//   g_VerticalLightDirection            c211     1
//   g_TimeEaterAlphaParam               c246     1
//

    vs_3_0
    def c12, 1, 3, 1.44269502, 1.5
    def c13, 0.5, -0.5, 0.600000024, 0.400000006
    def c14, 0, 0, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_color v3
    dcl_normal v4
    dcl_tangent v5
    dcl_binormal v6
    dcl_blendweight v7
    dcl_blendindices v8
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord2 o2
    dcl_texcoord3 o3
    dcl_texcoord4 o4
    dcl_texcoord6 o5
    dcl_texcoord5 o6
    dcl_texcoord7 o7
    dcl_texcoord8 o8
    dcl_color o9
    sge r0.x, v0.x, c246.x
    sge r0.y, c246.y, v0.x
    mad r0.x, r0.x, -r0.y, c12.x
    mul o9.w, r0.x, v3.w
    if b0
      add r0.x, c12.x, -v7.x
      add r0.x, r0.x, -v7.y
      add r0.x, r0.x, -v7.z
      mul r1, c12.y, v8
      mova a0, r1.yxzw
      mul r2, v7.y, c30[a0.x]
      mad r2, c30[a0.y], v7.x, r2
      mad r2, c30[a0.z], v7.z, r2
      mad r1, c30[a0.w], r0.x, r2
      dp4 r0.y, r1, v0
      dp3 r0.z, r1, v4
      mul r2, v7.y, c28[a0.x]
      mad r2, c28[a0.y], v7.x, r2
      mad r2, c28[a0.z], v7.z, r2
      mad r2, c28[a0.w], r0.x, r2
      dp4 r0.w, r2, v0
      dp3 r1.w, r2, v4
      dp3 r2.w, r2, v5
      mul r3, v7.y, c29[a0.x]
      mad r3, c29[a0.y], v7.x, r3
      mad r3, c29[a0.z], v7.z, r3
      mad r3, c29[a0.w], r0.x, r3
      dp4 r0.x, r3, v0
      dp3 r3.w, r3, v4
      dp3 r4.x, r3, v5
      dp3 r4.y, r1, v5
      dp3 r2.x, r2, -v6
      dp3 r2.y, r3, -v6
      dp3 r1.x, r1, -v6
      mov r1.y, v0.w
    else
      mov r2.w, v5.x
      mov r4.xy, v5.yzzw
      mov r2.xy, -v6
      mov r1.x, -v6.z
      mov r1.w, v4.x
      mov r3.w, v4.y
      mov r0.z, v4.z
      mov r0.xyw, v0.yzzx
      mov r1.y, v0.w
    endif
    mul r3.xyz, r4.x, c9
    mad r3.xyz, r2.w, c8, r3
    mad r3.xyz, r4.y, c10, r3
    dp3 r1.z, r3, r3
    rsq r1.z, r1.z
    mul o7.xyz, r1.z, r3
    mul r2.yzw, r2.y, c9.xxyz
    mad r2.xyz, r2.x, c8, r2.yzww
    mad r2.xyz, r1.x, c10, r2
    dp3 r1.x, r2, r2
    rsq r1.x, r1.x
    mul o8.xyz, r1.x, r2
    mul r2, r0.x, c9
    mad r2, r0.w, c8, r2
    mad r2, r0.y, c10, r2
    mad r2, r1.y, c11, r2
    mul r4, r2.y, c5
    mad r4, r2.x, c4, r4
    mad r4, r2.z, c6, r4
    mad r4, r2.w, c7, r4
    mul r5, r4.y, c1
    mad r5, r4.x, c0, r5
    mad r5, r4.z, c2, r5
    mad o0, r4.w, c3, r5
    mov o2.xyz, r2
    mov o2.w, -r4.z
    mul r0.xyw, r3.w, c9.xyzz
    mad r0.xyw, r1.w, c8.xyzz, r0
    mad r0.xyz, r0.z, c10, r0.xyww
    nrm r1.xyz, r0
    mov o3.xyz, r1
    add o1.xy, c191, v1
    mad o1.zw, v2.xyxy, c186.xyxy, c186
    add r0.x, -r4.z, -c199.y
    mul_sat r0.x, r0.x, c199.x
    mul r0.x, r0.x, c199.z
    add r0.y, c197.y, c197.x
    rcp r0.z, r0.y
    mul r0.x, r0.x, -r0.y
    mul r0.x, r0.x, c12.z
    exp r0.x, r0.x
    add r0.y, -r0.x, c12.x
    add r3.xyz, -r2, c178
    nrm r4.xyz, r3
    dp3_sat r2.w, r1, r4
    dp3 r3.x, -c183, r4
    mad r3.y, c198.z, r3.x, c198.y
    pow r4.x, r3_abs.y, c12.w
    rcp r3.y, r4.x
    mul r3.y, r3.y, c198.x
    mul r3.y, r3.y, c197.w
    mad r3.x, r3.x, r3.x, c12.x
    mad r3.x, c197.z, r3.x, r3.y
    mul r0.z, r0.z, r3.x
    mul r0.y, r0.y, r0.z
    mul o6.y, r0.y, c199.w
    add r0.w, -r2.w, c12.x
    mul r0.y, r0.w, r0.w
    mul r0.y, r0.y, r0.y
    mul r0.y, r0.w, r0.y
    mad o3.w, r0.y, c13.z, c13.w
    mul r3, r2.y, c25
    mad r3, r2.x, c24, r3
    mad r3, r2.z, c26, r3
    add r3, r3, c27
    mul r4.xyz, r3.xyww, c13.xyxw
    add o4.xy, r4.z, r4
    mov o4.zw, r3
    mul r3, r2.y, c208
    mad r3, r2.x, c207, r3
    mad r2, r2.z, c209, r3
    add r2, r2, c210
    mul r3.xyz, r2.xyww, c13.xyxw
    add o5.xy, r3.z, r3
    mov o5.zw, r2
    mov o6.xw, r0
    mov r1.w, c12.x
    dp4_sat r0.x, r1, c211
    add o6.z, -r0.x, c12.x
    mov o7.w, c14.x
    mov o8.w, c14.x
    mov o9.xyz, v3

// approximately 136 instruction slots used
