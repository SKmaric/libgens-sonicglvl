//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_ChaosWaveParamEx;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   sampler2D g_FramebufferSampler;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
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
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   g_SonicSkinFalloffParam               c150     1
//   g_ChaosWaveParamEx                    c151     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampNrm2                              s3       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0, -0.0500000007, 1.05263162, 1024
    def c1, -2, 3, 500, 5
    def c2, 2, -1, 1, 0.5
    def c3, 0.5, -0.5, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c1.x, c1.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r2.yz, c2
    add r0.x, r2.z, -c61.x
    cmp_pp r0.x, r0.x, c2.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.z
    cmp_pp r1.x, -c61.x, r2.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    texld_pp r1, v0, s2
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c2.x, c2.y
    dp2add_pp r1.z, r1, -r1, c2.z
    rsq_pp r1.z, r1.z
    rcp_pp r1.z, r1.z
    nrm_pp r3.xyz, v7
    mul_pp r2.xzw, r1.y, r3.xyyz
    nrm_pp r4.xyz, v6
    mad_pp r1.xyw, r1.x, r4.xyzz, r2.xzzw
    nrm_pp r5.xyz, v2
    mad_pp r1.xyz, r1.z, r5, r1.xyww
    texld_pp r6, v0, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r2.xz, r6.xyyw, c2.x, c2.y
    mul_pp r3.xyz, r3, r2.z
    mad_pp r3.xyz, r2.x, r4, r3
    dp2add_pp r1.w, r2.xzzw, -r2.xzzw, c2.z
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    mad_pp r2.xzw, r1.w, r5.xyyz, r3.xyyz
    add_pp r1.xyz, r1, r2.xzww
    nrm_pp r3.xyz, r1
    dp3_pp r1.x, r3, -r0.yzww
    add_pp r1.x, r1.x, c0.y
    mul_sat_pp r1.x, r1.x, c0.z
    mul r1.yzw, c58.w, c58.xxyz
    mul_pp r1.xyz, r1.x, r1.yzww
    mul_pp r1.xyz, r0.x, r1
    max r1.w, v3.z, c0.x
    add r2.x, r1.w, -v3.w
    cmp r4.z, r2.x, c0.x, r1.w
    mov r4.xyw, v3
    texldp_pp r4, r4, s13
    max r1.w, v4.z, c0.x
    add r2.x, r1.w, -v4.w
    cmp r5.z, r2.x, c0.x, r1.w
    mov r5.xyw, v4
    texldp_pp r5, r5, s7
    min_pp r1.w, r5.x, r4.x
    lrp_pp r2.x, v5.z, c2.z, r5.x
    lrp_pp r2.z, v5.z, c2.z, r1.w
    rcp r1.w, v3.w
    mul r4.xy, r1.w, v3
    mad r4.xy, r4, c2.x, c2.y
    abs_sat r4.xy, r4
    add_sat r4.xy, r4, -c65.x
    mul r4.xy, r4, c65.y
    max r1.w, r4.x, r4.y
    lrp_pp r3.w, r1.w, c2.z, r2.z
    lrp_pp r4.x, r1.w, c2.z, r2.x
    mul r1.w, r3.w, c77.w
    dp3_pp r2.x, r3, -c10
    add_pp r2.x, r2.x, c0.y
    mul_sat_pp r2.x, r2.x, c0.z
    mul_pp r2.xzw, r2.x, c36.xyyz
    mad_pp r1.xyz, r2.xzww, r1.w, r1
    mul_pp r2.xzw, r3.xyyz, r3.xyyz
    mad_pp r4.yzw, r3.xxyz, c2.w, c2.w
    mov r5.xyz, c79
    add r5.xyz, -r5, c80
    mad r6.xyz, r4.z, r5, c79
    mul r6.xyz, r2.z, r6
    mov r7.xyz, c77
    add r7.xyz, -r7, c78
    mad r8.xyz, r4.y, r7, c77
    mad_pp r6.xyz, r2.x, r8, r6
    mov r8.xyz, c81
    add r8.xyz, -r8, c82
    mad r4.yzw, r4.w, r8.xxyz, c81.xxyz
    mad_pp r2.xzw, r2.w, r4.yyzw, r6.xyyz
    mul_pp r4.yzw, r2.xxzw, c17.xxyz
    mul r4.yzw, r4, c70.w
    mad r2.xzw, r2, c17.xyyz, -r4.yyzw
    mad_pp r2.xzw, r4.x, r2, r4.yyzw
    add_pp r1.xyz, r1, r2.xzww
    mul_pp r1.xyz, r1, c16
    mul r4, r3.y, c91
    mad r4, r3.x, c90, r4
    mad r4, r3.z, c92, r4
    mul r2.x, c24.w, vPos.y
    mad_pp r6.y, r2.x, -c2.x, -c2.y
    dp2add_pp r6.x, vPos.x, c24.z, r2.y
    mad_pp r2.xy, r4, c151.y, r6
    mad r2.xy, r2, c3, c3.x
    texld_pp r2, r2, s11
    texld_pp r6, v0, s0
    mad_pp r1.xyz, r1, r6, -r2
    mad_pp r1.xyz, v8.w, r1, r2
    mul_pp r2.x, r6.w, c16.w
    mul_pp r2.w, r2.x, c21.x
    add_pp r6.xyz, c22, -v1
    dp3_pp r3.w, r6, r6
    rsq_pp r3.w, r3.w
    mad_pp r0.yzw, r6.xxyz, r3.w, -r0
    nrm_pp r9.xyz, r0.yzww
    dp3_sat_pp r0.y, r9, r3
    mov_pp r0.zw, c1
    mul_pp r0.zw, r0, c20.xyyz
    max_pp r5.w, r0.z, c2.z
    min r0.z, r5.w, c0.w
    pow r5.w, r0.y, r0.z
    mul_pp r9.xyz, c59.w, c59
    mul_pp r9.xyz, r0.w, r9
    mul_pp r10.xyz, r0.w, c37
    mul_pp r9.xyz, r5.w, r9
    mul_pp r0.xyw, r0.x, r9.xyzz
    mad_pp r9.xyz, r6, r3.w, -c10
    mul_pp r6.xyz, r3.w, r6
    nrm_pp r11.xyz, r9
    dp3_sat_pp r3.w, r11, r3
    pow r5.w, r3.w, r0.z
    mul_pp r9.xyz, r5.w, r10
    mad_pp r0.xyz, r9, r1.w, r0.xyww
    mul_pp r0.xyz, r0, c18
    mul r0.w, c64.z, c64.x
    mov r9.xz, c64
    mad r3.w, r9.x, -r9.z, r9.z
    mad_pp r0.w, r1.w, r3.w, r0.w
    mad r1.w, r1.w, c2.w, c2.w
    dp4 r3.w, r4, r4
    rsq r3.w, r3.w
    mul r4.xy, r3.w, r4
    mad_pp r4.xy, r4, c3, c3.x
    texld_pp r4, r4, s5
    mul r9.xyz, r4, c63.x
    mad_pp r4.xyz, r9, r4.w, r4
    texld_pp r9, v0, s1
    mul_pp r4.xyz, r4, r9.w
    mul_pp r4.xyz, r0.w, r4
    mul_pp r4.xyz, r4, c17
    mad_pp r0.xyz, r0, r9, r4
    mad_pp r0.xyz, r0, v2.w, r1
    dp3_pp r0.w, r6, r3
    add_sat_pp r1.x, -r0.w, c2.z
    add_pp r0.w, r0.w, r0.w
    mad_pp r3.xyz, r0.w, r3, -r6
    pow_pp r0.w, r1.x, c150.z
    mul r0.w, r0.w, c150.y
    mad_pp r0.w, r0.w, r1.w, c150.x
    mad_pp r1.xyz, r3, c2.w, c2.w
    mul_pp r3.xyz, r3, r3
    mad r4.xyz, r1.y, r5, c79
    mul r4.xyz, r3.y, r4
    mad r1.xyw, r1.x, r7.xyzz, c77.xyzz
    mad r5.xyz, r1.z, r8, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r4
    mad_pp r1.xyz, r3.z, r5, r1
    mad_pp r0.xyz, r1, r0.w, r0
    add_pp r2.xyz, r0, v8
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 202 instruction slots used (8 texture, 194 arithmetic)
