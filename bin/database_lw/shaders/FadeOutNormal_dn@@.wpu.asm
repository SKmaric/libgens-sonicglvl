//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   sampler2D g_GISampler;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
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
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
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
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Range        c60      1
//   g_GIModeParam            c69      1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s2
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
    nrm_pp r1.xyz, v6
    texld_pp r2, v1, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.x, c0.y
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_sat_pp r0.w, r2, r2, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    dp3 r1.w, v3, v3
    rsq r1.w, r1.w
    mul r2.xyz, r1.w, v3
    mad_pp r1.xyz, r0.w, r2, r1
    mad r2.xyz, v3, r1.w, -r1
    mad r1.xyz, v7.w, r2, r1
    nrm_pp r2.xyz, r1
    add_pp r1.xyz, -c46, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c48.z, c48.w
    mul r3.xyz, r0.w, c47
    dp3_sat_pp r0.w, r2, -r1
    mul_pp r1.xyz, r3, r0.w
    add_pp r3.xyz, -c42, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    dp3_sat_pp r0.w, r2, -r3
    mad_pp r1.xyz, r0.w, r4, r1
    add_pp r3.xyz, -c50, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c52.z, c52.w
    mul r4.xyz, r0.w, c51
    dp3_sat_pp r0.w, r2, -r3
    mad_pp r1.xyz, r0.w, r4, r1
    add_pp r3.xyz, -c54, v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c56.z, c56.w
    mul r4.xyz, r0.w, c55
    dp3_sat_pp r0.w, r2, -r3
    mad_pp r1.xyz, r0.w, r4, r1
    dp3_sat_pp r0.w, r2, -c10
    texld_pp r3, v0.zwzw, s10
    mul r0.w, r0.w, r3.w
    mul_pp r3.xyz, r3, r3
    mad_pp r1.xyz, r0.w, c36, r1
    add r4.xyz, c22, -v2
    dp3 r0.w, r4, r4
    rsq r0.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    mul r5.xyz, r0.w, c58
    dp3_sat_pp r0.w, r2, r4
    mad_pp r1.xyz, r0.w, r5, r1
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c1.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 89 instruction slots used (5 texture, 84 arithmetic)
