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
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampBlend;
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
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Specular               c37      1
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
//   sampBlend                             s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 500, 5, -2, 3
    def c1, 2, -1, 0.5, 1024
    def c2, 0.5, -0.5, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9.w
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c0.z, c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c3
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c3.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    frc r1.xy, c27.xwzw
    cmp r1.zw, -r1.xyxy, c3.x, c3.y
    add r1.xy, -r1, c27.xwzw
    cmp r1.zw, c27.xyxw, r2.x, r1
    add r1.xy, r1.zwzw, r1
    add r3, r1.x, -c3
    add r1, r1.y, -c3
    cmp r2.zw, -r3_abs.x, v0.xyxy, c3.x
    cmp r2.zw, -r3_abs.y, v0, r2
    cmp r2.zw, -r3_abs.z, v1.xyxy, r2
    cmp r2.zw, -r3_abs.w, v1, r2
    texld_pp r3, r2.zwzw, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r2.zw, r3.xyxy, c1.x, c1.y
    dp2add_pp r3.x, r2.zwzw, -r2.zwzw, c3.y
    rsq_pp r3.x, r3.x
    rcp_pp r3.x, r3.x
    nrm_pp r4.xyz, v8
    mul_pp r3.yzw, r2.w, r4.xxyz
    nrm_pp r5.xyz, v7
    mad_pp r3.yzw, r2.z, r5.xxyz, r3
    nrm_pp r6.xyz, v3
    mad_pp r3.xyz, r3.x, r6, r3.yzww
    frc r7.xyz, c26.xzww
    cmp r8.xyz, -r7, c3.x, c3.y
    add r7.xyz, -r7, c26.xzww
    cmp r2.xzw, c26, r2.x, r8.xyyz
    add r2.xzw, r2, r7.xyyz
    add r7, r2.w, -c3
    cmp r8.xy, -r7_abs.x, v0, c3.x
    cmp r7.xy, -r7_abs.y, v0.zwzw, r8
    cmp r7.xy, -r7_abs.z, v1, r7
    cmp r7.xy, -r7_abs.w, v1.zwzw, r7
    texld_pp r7, r7, s2
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c1.x, c1.y
    mul_pp r4.xyz, r4, r7.y
    mad_pp r4.xyz, r7.x, r5, r4
    dp2add_pp r2.w, r7, -r7, c3.y
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    mad_pp r4.xyz, r2.w, r6, r4
    add_pp r3.xyz, r3, r4
    nrm_pp r4.xyz, r3
    add_pp r3.xyz, c22, -v2
    dp3_pp r2.w, r3, r3
    rsq_pp r2.w, r2.w
    mad_pp r0.yzw, r3.xxyz, r2.w, -r0
    nrm_pp r5.xyz, r0.yzww
    dp3_sat_pp r0.y, r5, r4
    mov_pp r5.xy, c0
    mul_pp r0.zw, r5.xyxy, c20.xyyz
    max_pp r3.w, r0.z, c3.y
    min r0.z, r3.w, c1.w
    pow r3.w, r0.y, r0.z
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r0.w, r5
    mul_pp r6.xyz, r0.w, c37
    mul_pp r5.xyz, r3.w, r5
    mul_pp r0.xyw, r0.x, r5.xyzz
    max r3.w, v4.z, c3.x
    add r4.w, r3.w, -v4.w
    cmp r5.z, r4.w, c3.x, r3.w
    mov r5.xyw, v4
    texldp_pp r5, r5, s13
    max r3.w, v5.z, c3.x
    add r4.w, r3.w, -v5.w
    cmp r7.z, r4.w, c3.x, r3.w
    mov r7.xyw, v5
    texldp_pp r7, r7, s7
    min_pp r3.w, r7.x, r5.x
    lrp_pp r4.w, v6.z, c3.y, r7.x
    lrp_pp r5.x, v6.z, c3.y, r3.w
    rcp r3.w, v4.w
    mul r5.yz, r3.w, v4.xxyw
    mad r5.yz, r5, c1.x, c1.y
    abs_sat r5.yz, r5
    add_sat r5.yz, r5, -c65.x
    mul r5.yz, r5, c65.y
    max r3.w, r5.y, r5.z
    lrp_pp r6.w, r3.w, c3.y, r5.x
    lrp_pp r5.x, r3.w, c3.y, r4.w
    mul r3.w, r6.w, c77.w
    mad_pp r5.yzw, r3.xxyz, r2.w, -c10.xxyz
    mul_pp r3.xyz, r2.w, r3
    nrm_pp r7.xyz, r5.yzww
    dp3_sat_pp r2.w, r7, r4
    pow r4.w, r2.w, r0.z
    mul_pp r5.yzw, r4.w, r6.xxyz
    mad_pp r0.xyz, r5.yzww, r3.w, r0.xyww
    mul_pp r0.xyz, r0, c18
    mul r0.w, c64.z, c64.x
    mov r6.xz, c64
    mad r2.w, r6.x, -r6.z, r6.z
    mad_pp r0.w, r3.w, r2.w, r0.w
    mad r2.w, r3.w, c1.z, c1.z
    mul r6, r4.y, c91
    mad r6, r4.x, c90, r6
    mad r6, r4.z, c92, r6
    dp4 r3.w, r6, r6
    rsq r3.w, r3.w
    mul r5.yz, r3.w, r6.xxyw
    mad_pp r5.yz, r5, c2.xxyw, c2.x
    texld_pp r7, r5.yzzw, s5
    mul r5.yzw, r7.xxyz, c63.x
    mad_pp r5.yzw, r5, r7.w, r7.xxyz
    add r7, r2.z, -c3
    add r8, r2.x, -c3
    cmp r2.xz, -r7_abs.x, v0.xyyw, c3.x
    cmp r2.xz, -r7_abs.y, v0.zyww, r2
    cmp r2.xz, -r7_abs.z, v1.xyyw, r2
    cmp r2.xz, -r7_abs.w, v1.zyww, r2
    texld_pp r7, r2.xzzw, s1
    mul_pp r5.yzw, r5, r7.w
    mul_pp r5.yzw, r0.w, r5
    mul_pp r5.yzw, r5, c17.xxyz
    mad_pp r0.xyz, r0, r7, r5.yzww
    cmp r2.xz, -r1_abs.x, v0.xyyw, c3.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2.xzzw
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s6
    cmp r1.yz, -r8_abs.x, v0.xxyw, c3.x
    cmp r1.yz, -r8_abs.y, v0.xzww, r1
    cmp r1.yz, -r8_abs.z, v1.xxyw, r1
    cmp r1.yz, -r8_abs.w, v1.xzww, r1
    texld_pp r7, r1.yzzw, s0
    mul_pp r1.yzw, r4.xxyz, r4.xxyz
    mad_pp r5.yzw, r4.xxyz, c1.z, c1.z
    mov r8.xyz, c79
    add r8.xyz, -r8, c80
    mad r9.xyz, r5.z, r8, c79
    mul r9.xyz, r1.z, r9
    mov r10.xyz, c77
    add r10.xyz, -r10, c78
    mad r11.xyz, r5.y, r10, c77
    mad_pp r9.xyz, r1.y, r11, r9
    mov r11.xyz, c81
    add r11.xyz, -r11, c82
    mad r5.yzw, r5.w, r11.xxyz, c81.xxyz
    mad_pp r1.yzw, r1.w, r5, r9.xxyz
    mul_pp r5.yzw, r1, c17.xxyz
    mul r5.yzw, r5, c70.w
    mad r1.yzw, r1, c17.xxyz, -r5
    mad_pp r1.yzw, r5.x, r1, r5
    add_pp r1.yzw, r1, c3.y
    mul_pp r1.yzw, r1, c16.xxyz
    mul r0.w, c24.w, vPos.y
    mad_pp r5.y, r0.w, -c1.x, -c1.y
    dp2add_pp r5.x, vPos.x, c24.z, -r2.y
    mad_pp r2.xy, r6, c151.y, r5
    mad r2.xy, r2, c2, c2.x
    texld_pp r5, r2, s11
    mad_pp r1.yzw, r1, r7.xxyz, -r5.xxyz
    mul_pp r0.w, r7.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r6.w, r0.w, c21.x
    mad_pp r1.xyz, r1.x, r1.yzww, r5
    mad_pp r0.xyz, r0, v3.w, r1
    dp3_pp r0.w, r3, r4
    add_sat_pp r1.x, -r0.w, c3.y
    add_pp r0.w, r0.w, r0.w
    mad_pp r1.yzw, r0.w, r4.xxyz, -r3.xxyz
    pow_pp r0.w, r1.x, c150.z
    mul r0.w, r0.w, c150.y
    mad_pp r0.w, r0.w, r2.w, c150.x
    mad_pp r2.xyz, r1.yzww, c1.z, c1.z
    mul_pp r1.xyz, r1.yzww, r1.yzww
    mad r3.xyz, r2.y, r8, c79
    mul r3.xyz, r1.y, r3
    mad r2.xyw, r2.x, r10.xyzz, c77.xyzz
    mad r4.xyz, r2.z, r11, c81
    mad_pp r1.xyw, r1.x, r2, r3.xyzz
    mad_pp r1.xyz, r1.z, r4, r1.xyww
    mad_pp r6.xyz, r1, r0.w, r0
    mul_pp r0, r6, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 227 instruction slots used (9 texture, 218 arithmetic)
