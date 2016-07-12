//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
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
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
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
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_GIModeParam                         c69      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   g_EmissionParam                       c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampEmi                               s4       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, -0.0500000007, 1.05263162, 10
    def c2, 4, 0.5, -0.5, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    mul r0.x, c64.z, c64.x
    mov r1.xz, c64
    mad r0.y, r1.x, -r1.z, r1.z
    mad_pp r0.x, c77.w, r0.y, r0.x
    add_pp r0.yzw, -c50.xxyz, v2.xxyz
    dp3_pp r1.x, r0.yzww, r0.yzww
    rsq_pp r1.x, r1.x
    rcp_pp r1.y, r1.x
    mul_pp r0.yzw, r0, r1.x
    mad_sat_pp r1.x, -r1.y, c52.z, c52.w
    mul r1.xyz, r1.x, c51
    add_pp r2.xyz, -c42, v2
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    mad_sat_pp r1.w, -r2.w, c44.z, c44.w
    mul r3.xyz, r1.w, c43
    add_pp r4.xyz, -c46, v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mul_pp r4.xyz, r1.w, r4
    mad_sat_pp r1.w, -r2.w, c48.z, c48.w
    mul r5.xyz, r1.w, c47
    nrm_pp r6.xyz, v6
    texld_pp r7, v1, s2
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c0.x, c0.y
    mul_pp r6.xyz, r6, r7.y
    nrm_pp r8.xyz, v5
    mad_pp r6.xyz, r7.x, r8, r6
    dp2add_sat_pp r1.w, r7, r7, c0.z
    add r1.w, -r1.w, c0.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r7.xyz, v3
    mad_pp r6.xyz, r1.w, r7, r6
    add r7.xyz, c22, -v2
    dp3 r1.w, r7, r7
    rsq r1.w, r1.w
    mad_pp r8.xyz, r7, r1.w, -r4
    dp3_pp r2.w, r6, -r4
    add_pp r2.w, r2.w, c1.y
    mul_sat_pp r2.w, r2.w, c1.z
    mul_pp r4.xyz, r2.w, r5
    nrm_pp r9.xyz, r8
    dp3_sat_pp r2.w, r9, r6
    mov r3.w, c1.w
    mul_pp r3.w, r3.w, c20.y
    exp_pp r3.w, r3.w
    mul_pp r3.w, r3.w, c2.x
    pow_pp r4.w, r2.w, r3.w
    mul_pp r2.w, r4.w, c20.z
    mul_pp r5.xyz, r5, r2.w
    mad_pp r8.xyz, r7, r1.w, -r2
    dp3_pp r2.x, r6, -r2
    add_pp r2.x, r2.x, c1.y
    mul_sat_pp r2.x, r2.x, c1.z
    mad_pp r2.xyz, r3, r2.x, r4
    nrm_pp r4.xyz, r8
    dp3_sat_pp r2.w, r4, r6
    pow_pp r4.x, r2.w, r3.w
    mul_pp r2.w, r4.x, c20.z
    mad_pp r3.xyz, r2.w, r3, r5
    mad_pp r4.xyz, r7, r1.w, -r0.yzww
    dp3_pp r0.y, r6, -r0.yzww
    add_pp r0.y, r0.y, c1.y
    mul_sat_pp r0.y, r0.y, c1.z
    mad_pp r0.yzw, r1.xxyz, r0.y, r2.xxyz
    nrm_pp r2.xyz, r4
    dp3_sat_pp r2.x, r2, r6
    pow_pp r4.x, r2.x, r3.w
    mul_pp r2.x, r4.x, c20.z
    mad_pp r1.xyz, r2.x, r1, r3
    add_pp r2.xyz, -c54, v2
    dp3_pp r2.w, r2, r2
    rsq_pp r2.w, r2.w
    rcp_pp r3.x, r2.w
    mul_pp r2.xyz, r2.w, r2
    mad_sat_pp r2.w, -r3.x, c56.z, c56.w
    mul r3.xyz, r2.w, c55
    mad_pp r4.xyz, r7, r1.w, -r2
    dp3_pp r2.x, r6, -r2
    add_pp r2.x, r2.x, c1.y
    mul_sat_pp r2.x, r2.x, c1.z
    mad_pp r0.yzw, r3.xxyz, r2.x, r0
    nrm_pp r2.xyz, r4
    dp3_sat_pp r2.x, r2, r6
    pow_pp r4.x, r2.x, r3.w
    mul_pp r2.x, r4.x, c20.z
    mad_pp r1.xyz, r2.x, r3, r1
    mad_pp r2.xyz, r7, r1.w, -c10
    mul_pp r3.xyz, r1.w, r7
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    nrm_pp r4.xyz, r2
    dp3_sat_pp r2.x, r4, r6
    pow_pp r4.x, r2.x, r3.w
    mov r2, c77
    mul_pp r2.w, r2.w, c20.z
    mul_pp r2.w, r4.x, r2.w
    mad_pp r1.xyz, r2.w, c37, r1
    add_pp r4.xyz, r3, r3
    dp3_pp r2.w, r6, r3
    add_pp r2.w, r2.w, c1.y
    mul_sat_pp r2.w, r2.w, c1.z
    mul_pp r3.xyz, r2.w, c58
    nrm_pp r5.xyz, r4
    dp3_sat_pp r2.w, r5, r6
    pow_pp r4.x, r2.w, r3.w
    mul_pp r2.w, r4.x, c20.z
    mul_pp r4.xyz, r1.w, c59
    mad_pp r1.xyz, r2.w, r4, r1
    mul_pp r1.xyz, r1, c18
    texld_pp r4, v0, s1
    mul_pp r1.xyz, r1, r4
    mul r5, r6.y, c91
    mad r5, r6.x, c90, r5
    mad r5, r6.z, c92, r5
    dp4 r2.w, r5, r5
    rsq r2.w, r2.w
    mul r4.xy, r2.w, r5
    mad_pp r4.xy, r4, c2.yzzw, c2.y
    texld_pp r5, r4, s3
    mul_pp r4.xyz, r5, c63.x
    mul_pp r4.xyz, r4.w, r4
    mad_pp r4.xyz, r4, r0.x, r1
    mul_pp r4.xyz, r4, v3.w
    dp3_pp r0.x, r6, -c10
    add_pp r0.x, r0.x, c1.y
    mul_sat_pp r0.x, r0.x, c1.z
    mul_pp r5.xyz, r0.x, c36
    mad_pp r0.xyz, r5, c77.w, r0.yzww
    mad_pp r0.xyz, r1.w, r3, r0
    mad_pp r1.yzw, r6.xxyz, c1.x, c1.x
    mul_pp r3.xyz, r6, r6
    mov r5.xyz, c80
    mad r5.xyz, r5, r1.z, c79
    mul r5.xyz, r3.y, r5
    mad r2.xyz, c78, r1.y, r2
    mov r6.xyz, c82
    mad r1.yzw, r6.xxyz, r1.w, c81.xxyz
    mad_pp r2.xyz, r3.x, r2, r5
    mad_pp r1.yzw, r3.z, r1, r2.xxyz
    add_pp r0.xyz, r0, r1.yzww
    mul_pp r0.xyz, r0, c16
    texld_pp r2, v0, s0
    add_sat_pp r0.w, r5.w, r2.w
    mul_pp r3.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r2, r4
    texld r2, v1.zwzw, s4
    add_pp r1.yzw, r2.xxyz, c150.xxyz
    mul_pp r1.yzw, r1, c17.xxyz
    mad_pp r3.xyz, r1.yzww, c150.w, r0
    mul_pp r0, r3, v7
    mad_pp oC0.w, r0.w, c21.x, r1.x
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c1.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 196 instruction slots used (7 texture, 189 arithmetic)
