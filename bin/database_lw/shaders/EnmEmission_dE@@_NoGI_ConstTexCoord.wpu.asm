//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgLocalLight4_Position               c54      1
//   mrgLocalLight4_Color                  c55      1
//   mrgLocalLight4_Range                  c56      1
//   g_aLightField                         c77      6
//   g_EmissionParam                       c150     1
//   sampDif                               s0       1
//   sampEmi                               s4       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3.xyz
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s4
    dcl_2d s9
    add_pp r0.xyz, -c42, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c44.z, c44.w
    mul r1.xyz, r0.w, c43
    add_pp r2.xyz, -c46, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r3.xyz, r0.w, c47
    nrm_pp r4.xyz, v3
    dp3_pp r0.w, r4, -r2
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mul_pp r2.xyz, r0.w, r3
    dp3_pp r0.x, r4, -r0
    add_pp r0.x, r0.x, c0.y
    mul_sat_pp r0.x, r0.x, c0.z
    mad_pp r0.xyz, r1, r0.x, r2
    add_pp r1.xyz, -c50, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_pp r0.w, r4, -r1
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mad_sat_pp r1.x, -r1.w, c52.z, c52.w
    mul r1.xyz, r1.x, c51
    mad_pp r0.xyz, r1, r0.w, r0
    add_pp r1.xyz, -c54, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_pp r0.w, r4, -r1
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mad_sat_pp r1.x, -r1.w, c56.z, c56.w
    mul r1.xyz, r1.x, c55
    mad_pp r0.xyz, r1, r0.w, r0
    dp3_pp r0.w, r4, -c10
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mul_pp r1.xyz, r0.w, c36
    mad_pp r0.xyz, r1, c77.w, r0
    mad_pp r1.xyz, r4, c0.x, c0.x
    mul_pp r2.xyz, r4, r4
    mov r3.xyz, c80
    mad r3.xyz, r3, r1.y, c79
    mul r3.xyz, r2.y, r3
    mov r4.xyz, c77
    mad r1.xyw, c78.xyzz, r1.x, r4.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r1.z, c81
    mad_pp r1.xyz, r2.x, r1.xyww, r3
    mad_pp r1.xyz, r2.z, r4, r1
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld r1, v1.zwzw, s4
    add_pp r1.xyz, r1, c150
    mul_pp r1.xyz, r1, c17
    mul r1.xyz, r1, c150.w
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0, r0, v5
    mul_pp oC0.w, r0.w, c21.x
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 76 instruction slots used (3 texture, 73 arithmetic)
