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
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScaleLF;
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
//   sampler2D sampEnv;
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
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   g_GIModeParam                         c69      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   mrgInShadowScaleLF                    c146     1
//   g_SonicSkinFalloffParam               c150     1
//   g_EmissionParam                       c151     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampEmi                               s2       1
//   sampEnv                               s3       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, 1
    def c1, 0.5, -0.5, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    add_pp r1.xyz, -c54, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mad_sat_pp r1.w, -r1.w, c56.z, c56.w
    mul_pp r2.xyz, r1.w, c55
    add_pp r3.xyz, -c50, v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r2.w, r1.w
    mad_sat_pp r2.w, -r2.w, c52.z, c52.w
    mul_pp r4.xyz, r2.w, c51
    add_pp r5.xyz, -c42, v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    rcp_pp r3.w, r2.w
    mad_sat_pp r3.w, -r3.w, c44.z, c44.w
    mul_pp r6.xyz, r3.w, c43
    add_pp r7.xyz, -c46, v1
    dp3_pp r3.w, r7, r7
    rsq_pp r3.w, r3.w
    rcp_pp r4.w, r3.w
    mad_sat_pp r4.w, -r4.w, c48.z, c48.w
    mul_pp r8.xyz, r4.w, c47
    mov r9.yw, c0
    mul_pp r4.w, r9.y, c20.y
    exp_pp r4.w, r4.w
    mul_pp r4.w, r4.w, c0.z
    add r9.xyz, c22, -v1
    dp3 r5.w, r9, r9
    rsq r5.w, r5.w
    mul_pp r10.xyz, r5.w, r9
    mad_pp r9.xyz, r9, r5.w, -c10
    rcp r5.w, r5.w
    mad_sat_pp r5.w, -r5.w, c60.z, c60.w
    mul_pp r11.xyz, r5.w, c59
    nrm_pp r12.xyz, r9
    mad_pp r7.xyz, r7, -r3.w, r10
    nrm_pp r9.xyz, r7
    nrm_pp r7.xyz, v2
    dp3_sat_pp r3.w, r9, r7
    pow_pp r5.w, r3.w, r4.w
    mul_pp r3.w, r5.w, c20.z
    mul_pp r8.xyz, r8, r3.w
    mad_pp r5.xyz, r5, -r2.w, r10
    nrm_pp r9.xyz, r5
    dp3_sat_pp r2.w, r9, r7
    pow_pp r3.w, r2.w, r4.w
    mul_pp r2.w, r3.w, c20.z
    mad_pp r5.xyz, r2.w, r6, r8
    mad_pp r3.xyz, r3, -r1.w, r10
    nrm_pp r6.xyz, r3
    dp3_sat_pp r1.w, r6, r7
    pow_pp r2.w, r1.w, r4.w
    mul_pp r1.w, r2.w, c20.z
    mad_pp r3.xyz, r1.w, r4, r5
    mad_pp r1.xyz, r1, -r0.w, r10
    nrm_pp r4.xyz, r1
    dp3_sat_pp r0.w, r4, r7
    pow_pp r1.x, r0.w, r4.w
    mul_pp r0.w, r1.x, c20.z
    mad_pp r1.xyz, r0.w, r2, r3
    mov r2, c77
    mul_pp r0.w, r2.w, c20.z
    dp3_sat_pp r1.w, r12, r7
    pow_pp r2.w, r1.w, r4.w
    mul_pp r0.w, r0.w, r2.w
    mad_pp r1.xyz, r0.w, c37, r1
    add_pp r3.xyz, r10, r10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r7
    pow_pp r1.w, r0.w, r4.w
    mul_pp r0.w, r1.w, c20.z
    mad_pp r1.xyz, r0.w, r11, r1
    mul_pp r1.xyz, r1, c18
    texld_pp r3, v0, s1
    mul_pp r1.xyz, r1, r3
    mov_sat_pp r0.w, v4.w
    mul_pp r1.xyz, r0.w, r1
    mul_pp r1.xyz, r1, v2.w
    mul_pp r3.xyz, r0.w, c36
    mad_pp r4.xyz, r7, c0.x, c0.x
    mov r5.xyz, c80
    mad r6.xyz, r5, r4.y, c79
    mul_pp r8.xyz, r7, r7
    mul r6.xyz, r6, r8.y
    mad r4.xyw, c78.xyzz, r4.x, r2.xyzz
    mov r9.xyz, c82
    mad r11.xyz, r9, r4.z, c81
    mad_pp r4.xyz, r8.x, r4.xyww, r6
    mad_pp r4.xyz, r8.z, r11, r4
    mad_pp r3.xyz, r4, c17, r3
    mul_pp r3.xyz, r3, c16
    mul_pp r0.xyz, r0, r3
    mul r3, r7.y, c91
    mad r3, r7.x, c90, r3
    mad r3, r7.z, c92, r3
    dp4 r1.w, r3, r3
    rsq r1.w, r1.w
    mul r3.xy, r1.w, r3
    mad_pp r3.xy, r3, c1, c1.x
    texld_pp r3, r3, s3
    mad_pp r0.xyz, r0, r3, r1
    dp3_pp r1.x, r10, r7
    add_pp r1.y, r1.x, r1.x
    mad_pp r1.yzw, r1.y, r7.xxyz, -r10.xxyz
    mad_pp r3.xyz, r1.yzww, c0.x, c0.x
    mul_pp r1.yzw, r1, r1
    mad r2.xyz, c78, r3.x, r2
    mad r3.xyw, r5.xyzz, r3.y, c79.xyzz
    mad r4.xyz, r9, r3.z, c81
    mul r3.xyz, r1.z, r3.xyww
    mad_pp r2.xyz, r1.y, r2, r3
    mad_pp r1.yzw, r1.w, r4.xxyz, r2.xxyz
    add_pp r2.x, r9.w, c150.w
    add_sat_pp r1.x, -r1.x, r2.x
    pow_pp r2.x, r1.x, c150.z
    mad_pp r1.x, c150.y, r2.x, c150.x
    mul_pp r1.xyz, r1.x, r1.yzww
    mul r1.w, c146.w, c146.y
    mov r2.yw, c146
    mad r2.x, r2.y, -r2.w, r2.w
    mad_pp r1.w, c77.w, r2.x, r1.w
    mul_pp r1.xyz, r1.w, r1
    mad_pp r0.xyz, r1, r0.w, r0
    texld r1, v0, s2
    add_pp r1.xyz, r1, c151
    mul_pp r1.xyz, r1, c17
    mad_pp r0.xyz, r1, c151.w, r0
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 169 instruction slots used (6 texture, 163 arithmetic)
