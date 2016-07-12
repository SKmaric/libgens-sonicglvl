//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
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
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   mrgInShadowScaleLF                    c146     1
//   g_SonicSkinFalloffParam               c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampEnv                               s4       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, -0.0500000007, 1.05263162, 10
    def c2, 4, 0.5, -0.5, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_texcoord7 v4.xyz
    dcl_texcoord8 v5.xyz
    dcl_color_pp v6
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    add_pp r1.xyz, -c50, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r0.w, c51
    add_pp r3.xyz, -c42, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    add_pp r5.xyz, -c46, v1
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r6.xyz, r0.w, c47
    add_pp r7.xyz, c22, -v1
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    mad_pp r8.xyz, r7, r0.w, -r5
    nrm_pp r9.xyz, r8
    nrm_pp r8.xyz, v5
    texld_pp r10, v0, s2
    mul_pp r10.x, r10.w, r10.x
    mad_pp r10.xy, r10, c0.x, c0.y
    mul_pp r8.xyz, r8, r10.y
    nrm_pp r11.xyz, v4
    mad_pp r8.xyz, r10.x, r11, r8
    dp2add_sat_pp r1.w, r10, r10, c0.z
    add r1.w, -r1.w, c0.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r10.xyz, v2
    mad_pp r8.xyz, r1.w, r10, r8
    dp3_sat_pp r1.w, r9, r8
    mov r2.w, c1.w
    mul_pp r2.w, r2.w, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c2.x
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r9.xyz, r6, r1.w
    mad_pp r10.xyz, r7, r0.w, -r3
    dp3_pp r1.w, r8, -r3
    add_pp r1.w, r1.w, c1.y
    nrm_pp r3.xyz, r10
    dp3_sat_pp r3.x, r3, r8
    pow_pp r4.w, r3.x, r2.w
    mul_pp r3.x, r4.w, c20.z
    mad_pp r3.xyz, r3.x, r4, r9
    mad_pp r9.xyz, r7, r0.w, -r1
    dp3_pp r1.x, r8, -r1
    add_pp r1.x, r1.x, c1.y
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.y, r10, r8
    pow_pp r3.w, r1.y, r2.w
    mul_pp r1.y, r3.w, c20.z
    mad_pp r3.xyz, r1.y, r2, r3
    add_pp r9.xyz, -c54, v1
    dp3_pp r1.y, r9, r9
    rsq_pp r1.y, r1.y
    rcp_pp r1.z, r1.y
    mul_pp r9.xyz, r1.y, r9
    mad_sat_pp r1.y, -r1.z, c56.z, c56.w
    mul r10.xyz, r1.y, c55
    mad_pp r11.xyz, r7, r0.w, -r9
    dp3_pp r1.y, r8, -r9
    add_pp r1.y, r1.y, c1.y
    nrm_pp r9.xyz, r11
    dp3_sat_pp r1.z, r9, r8
    pow_pp r3.w, r1.z, r2.w
    mul_pp r1.z, r3.w, c20.z
    mad_pp r3.xyz, r1.z, r10, r3
    mad_pp r9.xyz, r7, r0.w, -c10
    mul_pp r7.xyz, r0.w, r7
    nrm_pp r11.xyz, r9
    dp3_sat_pp r0.w, r11, r8
    pow_pp r1.z, r0.w, r2.w
    mov r9, c77
    mul_pp r0.w, r9.w, c20.z
    mul_pp r0.w, r1.z, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    mul_pp r3.xyz, r3, c18
    texld_pp r11, v0, s1
    mul_pp r3.xyz, r3, r11
    mul r12, r8.y, c91
    mad r12, r8.x, c90, r12
    mad r12, r8.z, c92, r12
    dp4 r0.w, r12, r12
    rsq r0.w, r0.w
    mul r11.xy, r0.w, r12
    mad_pp r11.xy, r11, c2.yzzw, c2.y
    texld_pp r12, r11, s4
    mul_pp r11.xyz, r12, c63.x
    mul_pp r11.xyz, r11.w, r11
    mul r0.w, c64.z, c64.x
    mov r12.xz, c64
    mad r1.z, r12.x, -r12.z, r12.z
    mad_pp r0.w, c77.w, r1.z, r0.w
    mul_pp r11.xyz, r0.w, r11
    mov_sat_pp r0.w, v6.w
    mad_pp r3.xyz, r3, r0.w, r11
    mul_pp r3.xyz, r3, v2.w
    dp3_pp r1.z, r8, -r5
    add_pp r1.z, r1.z, c1.y
    mul_sat_pp r1, r1, c1.z
    mul_pp r5.xyz, r1.z, r6
    mad_pp r4.xyz, r4, r1.w, r5
    mad_pp r1.xzw, r2.xyyz, r1.x, r4.xyyz
    mad_pp r1.xyz, r10, r1.y, r1.xzww
    dp3_pp r1.w, r8, -c10
    add_pp r1.w, r1.w, c1.y
    mul_sat_pp r1.w, r1.w, c1.z
    mul_pp r2.xyz, r1.w, c36
    mad_pp r1.xyz, r2, c77.w, r1
    mul_pp r1.xyz, r0.w, r1
    mad_pp r2.xyz, r8, c1.x, c1.x
    mov r4.xyz, c80
    mad r5.xyz, r4, r2.y, c79
    mul_pp r6.xyz, r8, r8
    mul r5.xyz, r5, r6.y
    mad r2.xyw, c78.xyzz, r2.x, r9.xyzz
    mov r10.xyz, c82
    mad r11.xyz, r10, r2.z, c81
    mad_pp r2.xyz, r6.x, r2.xyww, r5
    mad_pp r2.xyz, r6.z, r11, r2
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r3
    dp3_pp r1.x, r7, r8
    add_pp r1.y, r1.x, r1.x
    mad_pp r1.yzw, r1.y, r8.xxyz, -r7.xxyz
    mad_pp r2.xyz, r1.yzww, c1.x, c1.x
    mul_pp r1.yzw, r1, r1
    mad r3.xyz, c78, r2.x, r9
    mad r2.xyw, r4.xyzz, r2.y, c79.xyzz
    mad r4.xyz, r10, r2.z, c81
    mul r2.xyz, r1.z, r2.xyww
    mad_pp r2.xyz, r1.y, r3, r2
    mad_pp r1.yzw, r1.w, r4.xxyz, r2.xxyz
    mov r2.w, c0.w
    add_pp r2.x, r2.w, c150.w
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
    mul_pp r0.xyz, r0, v6
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 192 instruction slots used (5 texture, 187 arithmetic)
