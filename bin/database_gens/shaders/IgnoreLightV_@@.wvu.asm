//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_IgnoreLightParam;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float4x4 g_MtxLightViewProjection;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxVerticalLightViewProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
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
//   mrgTexcoordOffset                   c191     2
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_MtxVerticalLightViewProjection    c207     4
//   g_VerticalLightDirection            c211     1
//   g_IgnoreLightParam                  c246     1
//

    vs_3_0
    def c12, 1, 3, 0, 1.44269502
    def c13, 1.5, 0.5, -0.5, 0
    def c14, 0.600000024, 0.400000006, 0, 0
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
    dcl_texcoord4 o5
    dcl_texcoord6 o6
    dcl_texcoord5 o7
    dcl_color o8
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
      dp3 r0.z, r1, v6
      mul r1, v7.y, c28[a0.x]
      mad r1, c28[a0.y], v7.x, r1
      mad r1, c28[a0.z], v7.z, r1
      mad r1, c28[a0.w], r0.x, r1
      dp4 r0.w, r1, v0
      dp3 r1.x, r1, v6
      mul r2, v7.y, c29[a0.x]
      mad r2, c29[a0.y], v7.x, r2
      mad r2, c29[a0.z], v7.z, r2
      mad r2, c29[a0.w], r0.x, r2
      dp4 r0.x, r2, v0
      dp3 r1.y, r2, v6
      mov r1.z, v0.w
    else
      mov r1.xy, v6
      mov r0.z, v6.z
      mov r0.xyw, v0.yzzx
      mov r1.z, v0.w
    endif
    mul r2, r0.x, c9
    mad r2, r0.w, c8, r2
    mad r2, r0.y, c10, r2
    mad r2, r1.z, c11, r2
    mad r3.zw, v2.xyxy, c186.xyxy, c186
    mov r3.xy, v1
    add o1, r3, c191
    mov r3.xy, v3
    mov r3.zw, v4.xyxy
    add o2, r3, c192
    mov o3.xyz, r2
    mul r0.xyw, r1.y, c9.xyzz
    mad r0.xyw, r1.x, c8.xyzz, r0
    mad r0.xyz, r0.z, c10, r0.xyww
    nrm r1.xyz, r0
    mov o4.xyz, r1
    mov r1.w, c12.x
    dp4_sat r0.x, r1, c211
    add o7.z, -r0.x, c12.x
    add r0.x, c197.y, c197.x
    rcp r0.y, r0.x
    mul r3, r2.y, c5
    mad r3, r2.x, c4, r3
    mad r3, r2.z, c6, r3
    mad r3, r2.w, c7, r3
    mul r4, r3.y, c1
    mad r4, r3.x, c0, r4
    mad r4, r3.z, c2, r4
    mad r4, r3.w, c3, r4
    mov o0.xyw, r4
    add r0.z, r4.z, -c246.z
    max o0.z, r0.z, c12.z
    add r0.z, -r3.z, -c246.z
    mov o3.w, r0.z
    add r0.z, r0.z, -c199.y
    mul_sat r0.z, r0.z, c199.x
    mul r0.z, r0.z, c199.z
    mul r0.x, r0.z, -r0.x
    mul r0.x, r0.x, c12.w
    exp r0.x, r0.x
    add r0.z, -r0.x, c12.x
    add r3.xyz, -r2, c178
    nrm r4.xyz, r3
    dp3_sat r1.x, r1, r4
    dp3 r1.y, -c183, r4
    mad r1.z, c198.z, r1.y, c198.y
    pow r2.w, r1_abs.z, c13.x
    rcp r1.z, r2.w
    mul r1.z, r1.z, c198.x
    mul r1.z, r1.z, c197.w
    mad r1.y, r1.y, r1.y, c12.x
    mad r1.y, c197.z, r1.y, r1.z
    mul r0.y, r0.y, r1.y
    mul r0.y, r0.z, r0.y
    mul o7.y, r0.y, c199.w
    add r0.w, -r1.x, c12.x
    mul r0.y, r0.w, r0.w
    mul r0.y, r0.y, r0.y
    mul r0.y, r0.w, r0.y
    mad o4.w, r0.y, c14.x, c14.y
    mul r1, r2.y, c25
    mad r1, r2.x, c24, r1
    mad r1, r2.z, c26, r1
    add r1, r1, c27
    mul r3.xyz, r1.xyww, c13.yzyw
    add o5.xy, r3.z, r3
    mov o5.zw, r1
    mul r1, r2.y, c208
    mad r1, r2.x, c207, r1
    mad r1, r2.z, c209, r1
    add r1, r1, c210
    mul r2.xyz, r1.xyww, c13.yzyw
    add o6.xy, r2.z, r2
    mov o6.zw, r1
    mov o7.xw, r0
    mov o8, v5

// approximately 115 instruction slots used
