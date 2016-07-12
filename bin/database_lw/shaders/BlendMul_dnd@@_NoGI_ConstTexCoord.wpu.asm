//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
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
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
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
//   g_aLightField            c77      6
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampNrm0                 s4       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s9
    texld_pp r0, v0, s0
    texld_pp r1, v1, s1
    mul_pp r0, r0, r1
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    add_pp r1.xyz, -c46, v2
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c48.z, c48.w
    mul r2.xyz, r0.w, c47
    nrm_pp r3.xyz, v6
    texld_pp r4, v0, s4
    mul_pp r4.x, r4.w, r4.x
    mad_pp r4.xy, r4, c0.x, c0.y
    mul_pp r3.xyz, r3, r4.y
    nrm_pp r5.xyz, v5
    mad_pp r3.xyz, r4.x, r5, r3
    dp2add_sat_pp r0.w, r4, r4, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r4.xyz, v3
    mad_pp r3.xyz, r0.w, r4, r3
    dp3_sat_pp r0.w, r3, -r1
    mul_pp r1.xyz, r2, r0.w
    add_pp r2.xyz, -c42, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    dp3_sat_pp r0.w, r3, -r2
    mad_pp r1.xyz, r0.w, r4, r1
    add_pp r2.xyz, -c50, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c52.z, c52.w
    mul r4.xyz, r0.w, c51
    dp3_sat_pp r0.w, r3, -r2
    mad_pp r1.xyz, r0.w, r4, r1
    add_pp r2.xyz, -c54, v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp_pp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c56.z, c56.w
    mul r4.xyz, r0.w, c55
    dp3_sat_pp r0.w, r3, -r2
    mad_pp r1.xyz, r0.w, r4, r1
    dp3_sat_pp r0.w, r3, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mad_pp r2.xyz, r3, c1.x, c1.x
    mul_pp r3.xyz, r3, r3
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c77
    mad r2.xyw, c78.xyzz, r2.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mad_pp r2.xyz, r3.x, r2.xyww, r4
    mad_pp r2.xyz, r3.z, r5, r2
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 81 instruction slots used (4 texture, 77 arithmetic)
