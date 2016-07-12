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
//   float4 g_VerticalLightDirection;
//   float4 mrgGIAtlasParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgMorphWeight;
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
//   mrgMorphWeight                      c194     1
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_MtxVerticalLightViewProjection    c207     4
//   g_VerticalLightDirection            c211     1
//

    vs_3_0
    def c12, 1, 3, 1.44269502, 1.5
    def c13, 0.5, -0.5, 0.963845909, 0.0361540653
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord4 v3
    dcl_texcoord5 v4
    dcl_texcoord6 v5
    dcl_texcoord7 v6
    dcl_normal v7
    dcl_tangent v8
    dcl_binormal v9
    dcl_blendweight v10
    dcl_blendindices v11
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord2 o2
    dcl_texcoord3 o3
    dcl_texcoord4 o4
    dcl_texcoord5 o5
    dcl_texcoord6 o6
    dcl_texcoord8 o7
    dcl_texcoord7 o8
    add o1.xy, c191, v1
    mad o1.zw, v2.xyxy, c186.xyxy, c186
    mul r0.xyz, c194.y, v4
    mad r0.xyz, c194.x, v3, r0
    mad r0.xyz, c194.z, v5, r0
    mad r0.xyz, c194.w, v6, r0
    add r0.xyz, r0, v0
    if b0
      add r1.x, c12.x, -v10.x
      add r1.x, r1.x, -v10.y
      add r1.x, r1.x, -v10.z
      mul r2, c12.y, v11
      mova a0, r2.yxzw
      mul r3, v10.y, c30[a0.x]
      mad r3, c30[a0.y], v10.x, r3
      mad r3, c30[a0.z], v10.z, r3
      mad r2, c30[a0.w], r1.x, r3
      dp3 r1.y, r2, v7
      mov r0.w, v0.w
      dp4 r1.z, r2, r0
      mul r3, v10.y, c28[a0.x]
      mad r3, c28[a0.y], v10.x, r3
      mad r3, c28[a0.z], v10.z, r3
      mad r3, c28[a0.w], r1.x, r3
      dp3 r1.w, r3, v7
      dp4 r2.w, r3, r0
      dp3 r3.w, r3, v8
      mul r4, v10.y, c29[a0.x]
      mad r4, c29[a0.y], v10.x, r4
      mad r4, c29[a0.z], v10.z, r4
      mad r4, c29[a0.w], r1.x, r4
      dp4 r0.y, r4, r0
      dp3 r0.w, r4, v7
      dp3 r1.x, r4, v8
      dp3 r4.w, r2, v8
      dp3 r3.x, r3, -v9
      dp3 r3.y, r4, -v9
      dp3 r2.x, r2, -v9
      mov r0.x, r2.w
      mov r0.z, r1.z
      mov r1.z, v0.w
    else
      mov r3.w, v8.x
      mov r1.x, v8.y
      mov r4.w, v8.z
      mov r3.xy, -v9
      mov r2.x, -v9.z
      mov r0.w, v7.y
      mov r1.yw, v7.xzzx
      mov r1.z, v0.w
    endif
    mul r5, r0.y, c9
    mad r5, r0.x, c8, r5
    mad r5, r0.z, c10, r5
    mad r5, r1.z, c11, r5
    mul r6, r5.y, c5
    mad r6, r5.x, c4, r6
    mad r6, r5.z, c6, r6
    mad r6, r5.w, c7, r6
    mul r7, r6.y, c1
    mad r7, r6.x, c0, r7
    mad r7, r6.z, c2, r7
    mad o0, r6.w, c3, r7
    mov o2.xyz, r5
    mul r0.xyz, r1.x, c9
    mad r0.xyz, r3.w, c8, r0
    mad r0.xyz, r4.w, c10, r0
    nrm r4.xyz, r0
    mov o3.xyz, r4
    mul r0.xyz, r0.w, c9
    mad r0.xyz, r1.w, c8, r0
    mad r0.xyz, r1.y, c10, r0
    nrm r1.xyz, r0
    mov o5.xyz, r1
    mul r0.xyz, r3.y, c9
    mad r0.xyz, r3.x, c8, r0
    mad r0.xyz, r2.x, c10, r0
    nrm r2.xyz, r0
    add r0.xyz, -r5, c178
    nrm r3.xyz, r0
    dp3 o4.w, r3, r2
    mov o4.xyz, r2
    mov o2.w, -r6.z
    dp3 r0.x, -c183, r3
    mad r0.y, c198.z, r0.x, c198.y
    pow r2.x, r0_abs.y, c12.w
    rcp r0.y, r2.x
    mul r0.y, r0.y, c198.x
    mul r0.y, r0.y, c197.w
    mad r0.x, r0.x, r0.x, c12.x
    mad r0.x, c197.z, r0.x, r0.y
    add r0.y, c197.y, c197.x
    rcp r0.z, r0.y
    mul r0.x, r0.z, r0.x
    add r0.z, -r6.z, -c199.y
    mul_sat r0.z, r0.z, c199.x
    mul r0.z, r0.z, c199.z
    mul r0.y, r0.z, -r0.y
    mul r0.y, r0.y, c12.z
    exp r0.y, r0.y
    mov o8.x, r0.y
    add r0.y, -r0.y, c12.x
    mul r0.x, r0.y, r0.x
    mul o8.y, r0.x, c199.w
    mov r1.w, c12.x
    dp4_sat r0.x, r1, c211
    add o8.z, -r0.x, c12.x
    dp3 r0.x, r1, r3
    mov o5.w, r0.x
    mov_sat r0.x, r0.x
    add r0.x, -r0.x, c12.x
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.x, r0.x, r0.y
    mad o8.w, r0.x, c13.z, c13.w
    dp3 o3.w, r3, r4
    mul r0, r5.y, c25
    mad r0, r5.x, c24, r0
    mad r0, r5.z, c26, r0
    add r0, r0, c27
    mov o6.zw, r0
    mul r0.xyz, r0.xyww, c13.xyxw
    add o6.xy, r0.z, r0
    mul r0, r5.y, c208
    mad r0, r5.x, c207, r0
    mad r0, r5.z, c209, r0
    add r0, r0, c210
    mov o7.zw, r0
    mul r0.xyz, r0.xyww, c13.xyxw
    add o7.xy, r0.z, r0

// approximately 142 instruction slots used
