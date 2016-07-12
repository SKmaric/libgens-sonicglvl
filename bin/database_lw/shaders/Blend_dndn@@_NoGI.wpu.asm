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
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
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
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
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
//   g_aLightField            c77      6
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampNrm0                 s4       1
//   sampNrm1                 s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    texld_pp r1, v1, s1
    lrp_pp r2, v7.w, r0, r1
    mul_pp oC0.w, r2.w, c16.w
    add_pp r0.xyz, -c46, v2
    dp3_pp r0.w, r0, r0
    rsq_pp r0.w, r0.w
    rcp_pp r1.x, r0.w
    mul_pp r0.xyz, r0.w, r0
    mad_sat_pp r0.w, -r1.x, c48.z, c48.w
    mul r1.xyz, r0.w, c47
    nrm_pp r3.xyz, v6
    texld_pp r4, v0, s4
    texld_pp r5, v1, s5
    lrp_pp r6.yzw, v7.w, r4.xxyw, r5.xxyw
    mul_pp r6.x, r6.w, r6.y
    mad_pp r4.xy, r6.xzzw, c0.x, c0.y
    mul_pp r3.xyz, r3, r4.y
    nrm_pp r5.xyz, v5
    mad_pp r3.xyz, r4.x, r5, r3
    dp2add_pp r0.w, r4, -r4, c0.z
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r4.xyz, v3
    mad_pp r3.xyz, r0.w, r4, r3
    dp3_sat_pp r0.x, r3, -r0
    mul_pp r0.xyz, r1, r0.x
    add_pp r1.xyz, -c42, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_sat_pp r0.w, r3, -r1
    mad_sat_pp r1.x, -r1.w, c44.z, c44.w
    mul r1.xyz, r1.x, c43
    mad_pp r0.xyz, r0.w, r1, r0
    add_pp r1.xyz, -c50, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_sat_pp r0.w, r3, -r1
    mad_sat_pp r1.x, -r1.w, c52.z, c52.w
    mul r1.xyz, r1.x, c51
    mad_pp r0.xyz, r0.w, r1, r0
    add_pp r1.xyz, -c54, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_sat_pp r0.w, r3, -r1
    mad_sat_pp r1.x, -r1.w, c56.z, c56.w
    mul r1.xyz, r1.x, c55
    mad_pp r0.xyz, r0.w, r1, r0
    dp3_sat_pp r0.w, r3, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r0.xyz, r0.w, c36, r0
    add r1.xyz, c22, -v2
    dp3 r0.w, r1, r1
    rsq r0.w, r0.w
    rcp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    dp3_sat_pp r0.w, r3, r1
    mad_sat_pp r1.x, -r1.w, c60.z, c60.w
    mul r1.xyz, r1.x, c58
    mad_pp r0.xyz, r0.w, r1, r0
    mad_pp r1.xyz, r3, c0.w, c0.w
    mul_pp r3.xyz, r3, r3
    mov r4.xyz, c80
    mad r4.xyz, r4, r1.y, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c77
    mad r1.xyw, c78.xyzz, r1.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r4
    mad_pp r1.xyz, r3.z, r5, r1
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, c16
    mul_pp r0.xyz, r2, r0
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.w, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 96 instruction slots used (6 texture, 90 arithmetic)
