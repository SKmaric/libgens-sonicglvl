//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   sampler2D g_GISampler;
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
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgLocalLight1_Position  c42      1
//   mrgLocalLight1_Color     c43      1
//   mrgLocalLight1_Range     c44      1
//   mrgLocalLight2_Position  c46      1
//   mrgLocalLight2_Color     c47      1
//   mrgLocalLight2_Range     c48      1
//   mrgLocalLight3_Position  c50      1
//   mrgLocalLight3_Color     c51      1
//   mrgLocalLight3_Range     c52      1
//   mrgLocalLight4_Position  c54      1
//   mrgLocalLight4_Color     c55      1
//   mrgLocalLight4_Range     c56      1
//   sampDif                  s0       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//

    ps_3_0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl_color_pp v4.xyz
    dcl_2d s0
    dcl_2d s9
    dcl_2d s10
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
    add_pp r1.xyz, -c42, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r2.xyz, r0.w, c43
    add_pp r3.xyz, -c46, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r4.xyz, r0.w, c47
    nrm_pp r5.xyz, v2
    dp3_sat_pp r0.w, r5, -r3
    mul_pp r3.xyz, r4, r0.w
    dp3_sat_pp r0.w, r5, -r1
    mad_pp r1.xyz, r0.w, r2, r3
    add_pp r2.xyz, -c50, v1
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r5, -r2
    mad_sat_pp r1.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r1.w, c51
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r2.xyz, -c54, v1
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    dp3_sat_pp r0.w, r5, -r2
    dp3_sat_pp r2.x, r5, -c10
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul r2.yzw, r1.w, c55.xxyz
    mad_pp r1.xyz, r0.w, r2.yzww, r1
    texld r3, v0.zwzw, s10
    mul r0.w, r2.x, r3.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r1.xyz, r3, r3, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r2.xyz, c17, v4
    mad_pp r0.xyz, r1, r0, r2
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 51 instruction slots used (3 texture, 48 arithmetic)
