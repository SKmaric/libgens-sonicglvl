//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_TimeParam;
//   float4 g_VerticalLightDirection;
//   float4 g_WaterParam;
//   float4 mrgGIAtlasParam;
//   float4 mrgGlobalLight_Direction;
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_MtxWorld                          c8       4
//   g_EyePosition                       c178     1
//   mrgGlobalLight_Direction            c183     1
//   mrgGIAtlasParam                     c186     1
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_VerticalLightDirection            c211     1
//   g_TimeParam                         c212     1
//   g_WaterParam                        c246     1
//

    vs_3_0
    def c12, 0.0799999982, 1.44269502, 1, 1.5
    def c13, 0, 0, 0, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_texcoord3 v5
    dcl_normal v6
    dcl_tangent v7
    dcl_binormal v8
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord4 o5
    dcl_texcoord5 o6
    dcl_texcoord6 o7
    dcl_color o8
    dcl_texcoord7 o9
    mov r0.xy, c246
    mul r0.xy, r0, c212.x
    mul o2.xy, r0, c12.x
    mul r0.xyz, c9, v7.y
    mad r0.xyz, v7.x, c8, r0
    mad o4.xyz, v7.z, c10, r0
    mul r0.xyz, c9, -v8.y
    mad r0.xyz, -v8.x, c8, r0
    mad o5.xyz, -v8.z, c10, r0
    mad o6.zw, v3.xyxy, c186.xyxy, c186
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    mad r0, v0.w, c11, r0
    add r1.xyz, -r0, c178
    nrm r2.xyz, r1
    dp3 r1.x, -c183, r2
    mad r1.y, c198.z, r1.x, c198.y
    mad r1.x, r1.x, r1.x, c12.z
    pow r2.x, r1_abs.y, c12.w
    rcp r1.y, r2.x
    mul r1.y, r1.y, c198.x
    mul r1.y, r1.y, c197.w
    mad r1.x, c197.z, r1.x, r1.y
    add r1.y, c197.y, c197.x
    rcp r1.z, r1.y
    mul r1.x, r1.z, r1.x
    mul r2, r0.y, c5
    mad r2, r0.x, c4, r2
    mad r2, r0.z, c6, r2
    mad r2, r0.w, c7, r2
    mov o1.xyz, r0
    add r0.x, -r2.z, -c199.y
    mul_sat r0.x, r0.x, c199.x
    mul r0.x, r0.x, c199.z
    mul r0.x, r0.x, -r1.y
    mul r0.x, r0.x, c12.y
    exp r0.x, r0.x
    add r0.y, -r0.x, c12.z
    mov o9.x, r0.x
    mul r0.x, r0.y, r1.x
    mul o9.y, r0.x, c199.w
    mul r0.xyz, c9, v6.y
    mad r0.xyz, v6.x, c8, r0
    mad r0.xyz, v6.z, c10, r0
    mov r0.w, c12.z
    dp4_sat r0.w, r0, c211
    mov o3.xyz, r0
    add o9.z, -r0.w, c12.z
    mul r0, r2.y, c1
    mad r0, r2.x, c0, r0
    mad r0, r2.z, c2, r0
    mad r0, r2.w, c3, r0
    mov o0, r0
    mov o2.zw, r0
    mov o1.w, -r2.z
    mov o9.w, r2.z
    mov o3.w, c13.x
    mov o4.w, c13.x
    mov o5.w, c13.x
    mov o6.xy, v2
    mov o7.xy, v4
    mov o7.zw, v5.xyxy
    mov o8, v1

// approximately 68 instruction slots used
