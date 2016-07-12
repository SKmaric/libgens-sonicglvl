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
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
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
//   sampler2D sampFalloff;
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
//   mrgInShadowScaleLF                    c146     1
//   g_SonicSkinFalloffParam               c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampFalloff                           s3       1
//   sampEnv                               s4       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 10
    def c1, 4, 1, -1, 0
    def c2, 0.25, 0, 0, 0
    def c3, 1, -1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    add_pp r1.xyz, -c54, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c56.z, c56.w
    mul r2.xyz, r0.w, c55
    add_pp r3.xyz, -c50, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r4.xyz, r0.w, c51
    add_pp r5.xyz, -c42, v1
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r6.xyz, r0.w, c43
    add_pp r7.xyz, -c46, v1
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r7.xyz, r0.w, r7
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r8.xyz, r0.w, c47
    mov r0.w, c0.w
    mul_pp r0.w, r0.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.x
    add r9, c22.xyzx, -v1.xyzx
    dp3 r1.w, r9.yzww, r9.yzww
    rsq r1.w, r1.w
    mad_pp r10.xyz, r9, r1.w, -r7
    nrm_pp r11.xyz, r10
    nrm_pp r10, v2.xyzx
    dp3_sat_pp r2.w, r11, r10
    pow_pp r3.w, r2.w, r0.w
    mul_pp r2.w, r3.w, c20.z
    mul_pp r11.xyz, r8, r2.w
    mad_pp r12.xyz, r9, r1.w, -r5
    dp3_pp r2.w, r10.wyzw, -r5
    add_pp r2.w, r2.w, c0.y
    mul_sat_pp r2.w, r2.w, c0.z
    nrm_pp r5.xyz, r12
    dp3_sat_pp r3.w, r5, r10
    pow_pp r4.w, r3.w, r0.w
    mul_pp r3.w, r4.w, c20.z
    mad_pp r5.xyz, r3.w, r6, r11
    mad_pp r11.xyz, r9, r1.w, -r3
    dp3_pp r3.x, r10.wyzw, -r3
    add_pp r3.x, r3.x, c0.y
    mul_sat_pp r3.x, r3.x, c0.z
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.y, r12, r10
    pow_pp r4.w, r3.y, r0.w
    mul_pp r3.y, r4.w, c20.z
    mad_pp r3.yzw, r3.y, r4.xxyz, r5.xxyz
    mad_pp r5.xyz, r9, r1.w, -r1
    dp3_pp r1.x, r10.wyzw, -r1
    add_pp r1.x, r1.x, c0.y
    nrm_pp r11.xyz, r5
    dp3_sat_pp r1.y, r11, r10
    pow_pp r4.w, r1.y, r0.w
    mul_pp r1.y, r4.w, c20.z
    mad_pp r3.yzw, r1.y, r2.xxyz, r3
    mov r5, c77
    mul_pp r1.y, r5.w, c20.z
    mad_pp r11.xyz, r9, r1.w, -c10
    mul_pp r9, r1.w, r9
    rcp r1.z, r1.w
    mad_sat_pp r1.z, -r1.z, c60.z, c60.w
    nrm_pp r12.xyz, r11
    dp3_sat_pp r1.w, r12, r10
    pow_pp r4.w, r1.w, r0.w
    mul_pp r1.y, r1.y, r4.w
    mad_pp r3.yzw, r1.y, c37.xxyz, r3
    mul_pp r11.xyz, r1.z, c59
    add_pp r12.xyz, r9.wyzw, r9.wyzw
    nrm_pp r13.xyz, r12
    dp3_sat_pp r1.y, r13, r10
    pow_pp r4.w, r1.y, r0.w
    mul_pp r0.w, r4.w, c20.z
    mad_pp r3.yzw, r0.w, r11.xxyz, r3
    mul_pp r3.yzw, r3, c18.xxyz
    texld_pp r11, v0, s1
    mul_pp r3.yzw, r3, r11.xxyz
    dp3_pp r0.w, r10.yzww, r9.yzww
    add_pp r1.y, r0.w, r0.w
    mad_pp r9, r1.y, r10, -r9
    mul_pp r12, r9.wyzw, c1.zzyw
    mad_pp r13, r9, c3.xyyz, c3.zzzw
    cmp_pp r12, r9.z, r12, r13
    add_pp r1.y, r12.z, c1.y
    rcp r1.y, r1.y
    mad_pp r1.yw, r12.xyzx, r1.y, c1.y
    mad_pp r11.x, r1.w, c2.x, r12.w
    mul_pp r11.y, r1.y, c0.x
    texld_pp r12, r11, s4
    mul_pp r11.xyz, r12, c63.x
    mul_pp r11.xyz, r11.w, r11
    mul r1.y, c64.z, c64.x
    mov r12.xz, c64
    mad r1.w, r12.x, -r12.z, r12.z
    mad_pp r1.y, c77.w, r1.w, r1.y
    mul_pp r11.xyz, r1.y, r11
    mov_sat_pp r1.y, v4.w
    mad_pp r3.yzw, r3, r1.y, r11.xxyz
    mul_pp r3.yzw, r3, v2.w
    dp3_pp r1.w, r10.wyzw, -r7
    add_pp r1.w, r1.w, c0.y
    mul_sat_pp r1.xw, r1, c0.z
    mul_pp r7.xyz, r1.w, r8
    mad_pp r6.xyz, r6, r2.w, r7
    mad_pp r4.xyz, r4, r3.x, r6
    mad_pp r2.xyz, r2, r1.x, r4
    dp3_pp r1.x, r10.wyzw, -c10
    add_pp r1.x, r1.x, c0.y
    mul_sat_pp r1.x, r1.x, c0.z
    mul_pp r4.xyz, r1.x, c36
    mad_pp r2.xyz, r4, c77.w, r2
    add_pp r1.x, r0.w, c0.y
    mul_sat_pp r1.x, r1.x, c0.z
    mul_pp r4.xyz, r1.x, c58
    mad_pp r1.xzw, r1.z, r4.xyyz, r2.xyyz
    mul_pp r1.xzw, r1.y, r1
    mad_pp r2.xyz, r10.wyzw, c0.x, c0.x
    mul_pp r4.xyz, r10.wyzw, r10.wyzw
    mov r6.xyz, c80
    mad r7.xyz, r6, r2.y, c79
    mul r7.xyz, r4.y, r7
    mad r2.xyw, c78.xyzz, r2.x, r5.xyzz
    mov r8.xyz, c82
    mad r10.xyz, r8, r2.z, c81
    mad_pp r2.xyz, r4.x, r2.xyww, r7
    mad_pp r2.xyz, r4.z, r10, r2
    mad_pp r1.xzw, r2.xyyz, c17.xyyz, r1
    mul_pp r1.xzw, r1, c16.xyyz
    mad_pp r0.xyz, r1.xzww, r0, r3.yzww
    mad_pp r1.xzw, r9.wyyz, c0.x, c0.x
    mul_pp r2.xyz, r9.wyzw, r9.wyzw
    mad r3.xyz, r6, r1.z, c79
    mul r3.xyz, r2.y, r3
    mad r4.xyz, c78, r1.x, r5
    mad r1.xzw, r8.xyyz, r1.w, c81.xyyz
    mad_pp r2.xyw, r2.x, r4.xyzz, r3.xyzz
    mad_pp r1.xzw, r2.z, r1, r2.xyyw
    texld_pp r2, v0, s3
    mul_pp r1.xzw, r1, r2.xyyz
    mov r2.y, c1.y
    add_pp r2.x, r2.y, c150.w
    add_sat_pp r0.w, -r0.w, r2.x
    pow_pp r2.x, r0.w, c150.z
    mad_pp r0.w, c150.y, r2.x, c150.x
    mul_pp r1.xzw, r0.w, r1
    mul r0.w, c146.w, c146.y
    mov r2.yw, c146
    mad r2.x, r2.y, -r2.w, r2.w
    mad_pp r0.w, c77.w, r2.x, r0.w
    mul_pp r1.xzw, r0.w, r1
    mad_pp r0.xyz, r1.xzww, r1.y, r0
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 203 instruction slots used (6 texture, 197 arithmetic)
