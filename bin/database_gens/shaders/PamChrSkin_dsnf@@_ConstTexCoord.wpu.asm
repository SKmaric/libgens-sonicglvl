//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_ChrPlayableMenuParam;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   sampler2D sampDif;
//   sampler2D sampFalloff;
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
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_SonicSkinFalloffParam               c150     1
//   g_ChrPlayableMenuParam                c152     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampFalloff                           s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, 0.0500000007, 10, -0.0500000007
    def c2, 1.05263162, -2, 3, 1024
    def c3, 500, 5, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s7
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
    mad_pp r1.y, r0.x, c2.y, c2.z
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.x
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c1.x, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c1.x
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c1.x, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c0.z, r2.x
    lrp_pp r1.y, v5.z, c0.z, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, c0.x, c0.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.z, r1.y
    lrp_pp r3.y, r2.x, c0.z, r1.x
    mul_pp r1.x, r3.x, c77.w
    add r1.y, -c48.z, c48.w
    rcp r1.y, r1.y
    add r2.xyz, -c46, v1
    dp3 r1.z, r2, r2
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.xyz, r1.z, r2
    add r1.z, r1.w, -c48.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c40.z, c40.w
    rcp r1.z, r1.z
    add r3.xzw, -c38.xyyz, v1.xyyz
    dp3 r1.w, r3.xzww, r3.xzww
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r3.xzw, r1.w, r3
    add r1.w, r2.w, -c40.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c44.z, c44.w
    rcp r1.w, r1.w
    add r4.xyz, -c42, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r4.w, -c44.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.yzw, -r1, c0.z
    nrm_pp r5.xyz, v7
    texld_pp r6, v0, s2
    mul_pp r6.x, r6.w, r6.x
    mad_pp r6.xy, r6, c0.x, c0.y
    mul_pp r5.xyz, r5, r6.y
    nrm_pp r7.xyz, v6
    mad_pp r5.xyz, r6.x, r7, r5
    dp2add_pp r2.w, r6, -r6, c0.z
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r6.xyz, v2
    mad_pp r5.xyz, r2.w, r6, r5
    dp3_pp r2.w, r5, -r4
    add_pp r2.w, r2.w, c1.w
    mul_sat_pp r2.w, r2.w, c2.x
    mul_pp r6.xyz, r2.w, c43
    mul_pp r6.xyz, r1.w, r6
    dp3_pp r2.w, r5, -r3.xzww
    add_pp r2.w, r2.w, c1.w
    mul_sat_pp r2.w, r2.w, c2.x
    mul_pp r7.xyz, r2.w, c39
    mad_pp r6.xyz, r1.z, r7, r6
    dp3_pp r2.w, r5, -r2
    add_pp r2.w, r2.w, c1.w
    mul_sat_pp r2.w, r2.w, c2.x
    mul_pp r7.xyz, r2.w, c47
    mad_pp r6.xyz, r1.y, r7, r6
    add r2.w, -c52.z, c52.w
    rcp r2.w, r2.w
    add r7.xyz, -c50, v1
    dp3 r4.w, r7, r7
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r7.xyz, r4.w, r7
    add r4.w, r5.w, -c52.z
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.w, -r2.w, c0.z
    dp3_pp r4.w, r5, -r7
    add_pp r4.w, r4.w, c1.w
    mul_sat_pp r4.w, r4.w, c2.x
    mul_pp r8.xyz, r4.w, c51
    mad_pp r6.xyz, r2.w, r8, r6
    dp3_pp r4.w, r5, -c10
    add_pp r4.w, r4.w, c1.w
    mul_sat_pp r4.w, r4.w, c2.x
    mul_pp r8.xyz, r4.w, c36
    mad_pp r6.xyz, r8, r1.x, r6
    dp3_pp r4.w, r5, -r0.yzww
    add_pp r4.w, r4.w, c1.w
    mul_sat_pp r4.w, r4.w, c2.x
    mul r8.xyz, c58.w, c58
    mul_pp r8.xyz, r4.w, r8
    mad_pp r6.xyz, r0.x, r8, r6
    mad_pp r8.xyz, r5, c0.w, c0.w
    mov r9.xyz, c79
    add r9.xyz, -r9, c80
    mad r10.xyz, r8.y, r9, c79
    mul_pp r11.xyz, r5, r5
    mul r10.xyz, r10, r11.y
    mov r12.xyz, c77
    add r12.xyz, -r12, c78
    mad r8.xyw, r8.x, r12.xyzz, c77.xyzz
    mad_pp r8.xyw, r11.x, r8, r10.xyzz
    mov r10.xyz, c81
    add r10.xyz, -r10, c82
    mad r11.xyw, r8.z, r10.xyzz, c81.xyzz
    mad_pp r8.xyz, r11.z, r11.xyww, r8.xyww
    mul_pp r11.xyz, r8, c17
    mul r11.xyz, r11, c70.w
    mad r8.xyz, r8, c17, -r11
    mad_pp r8.xyz, r3.y, r8, r11
    add_pp r6.xyz, r6, r8
    mul_pp r6.xyz, r6, c16
    add_pp r8.xyz, c22, -v1
    dp3_pp r3.y, r8, r8
    rsq_pp r3.y, r3.y
    mad_pp r4.xyz, r8, r3.y, -r4
    nrm_pp r11.xyz, r4
    dp3_sat_pp r4.x, r11, r5
    mov_pp r11.xy, c3
    mul_pp r4.yz, r11.xxyw, c20
    max_pp r5.w, r4.y, c0.z
    min r4.y, r5.w, c2.w
    pow r5.w, r4.x, r4.y
    mul_pp r11.xyz, r4.z, c43
    mul_pp r11.xyz, r5.w, r11
    mul_pp r11.xyz, r1.w, r11
    mad_pp r3.xzw, r8.xyyz, r3.y, -r3
    nrm_pp r13.xyz, r3.xzww
    dp3_sat_pp r1.w, r13, r5
    pow r3.x, r1.w, r4.y
    mul_pp r13.xyz, r4.z, c39
    mul_pp r3.xzw, r3.x, r13.xyyz
    mad_pp r3.xzw, r1.z, r3, r11.xyyz
    mad_pp r2.xyz, r8, r3.y, -r2
    nrm_pp r11.xyz, r2
    dp3_sat_pp r1.z, r11, r5
    pow r2.x, r1.z, r4.y
    mul_pp r11.xyz, r4.z, c47
    mul_pp r2.xyz, r2.x, r11
    mad_pp r1.yzw, r1.y, r2.xxyz, r3.xxzw
    mad_pp r2.xyz, r8, r3.y, -r7
    nrm_pp r7.xyz, r2
    dp3_sat_pp r2.x, r7, r5
    pow r3.x, r2.x, r4.y
    mul_pp r2.xyz, r4.z, c51
    mul_pp r2.xyz, r3.x, r2
    mad_pp r1.yzw, r2.w, r2.xxyz, r1
    mad_pp r2.xyz, r8, r3.y, -c10
    nrm_pp r7.xyz, r2
    dp3_sat_pp r2.x, r7, r5
    pow r3.x, r2.x, r4.y
    mul_pp r2.xyz, r4.z, c37
    mul_pp r2.xyz, r3.x, r2
    mad_pp r1.yzw, r2.xxyz, r1.x, r1
    mad r1.x, r1.x, c0.w, c0.w
    mul_pp r2.xyz, c59.w, c59
    mul_pp r2.xyz, r4.z, r2
    mad_pp r0.yzw, r8.xxyz, r3.y, -r0
    mul_pp r3.xyz, r3.y, r8
    nrm_pp r7.xyz, r0.yzww
    dp3_sat_pp r0.y, r7, r5
    pow r2.w, r0.y, r4.y
    mul_pp r0.yzw, r2.w, r2.xxyz
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    mul_pp r0.xyz, r0, c18
    add_pp r0.w, c152.x, -v1.y
    add_pp r0.w, r0.w, c1.y
    mul_sat_pp r0.w, r0.w, c1.z
    mul_pp r0.xyz, r0.w, r0
    texld_pp r2, v0, s1
    mul_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, v2.w
    texld_pp r2, v0, s0
    add_pp r2, r2, c0.y
    mad_pp r2, r0.w, r2, c0.z
    mad_pp r0.xyz, r6, r2, r0
    mul_pp r2.w, r2.w, c16.w
    dp3_pp r1.y, r3, r5
    add_sat_pp r1.z, -r1.y, c0.z
    add_pp r1.y, r1.y, r1.y
    mad_pp r3.xyz, r1.y, r5, -r3
    pow_pp r3.w, r1.z, c150.z
    mul r1.y, r3.w, c150.y
    mad_pp r1.x, r1.y, r1.x, c150.x
    mad_pp r1.yzw, r3.xxyz, c0.w, c0.w
    mul_pp r3.xyz, r3, r3
    mad r4.xyz, r1.z, r9, c79
    mul r4.xyz, r3.y, r4
    mad r5.xyz, r1.y, r12, c77
    mad r1.yzw, r1.w, r10.xxyz, c81.xxyz
    mad_pp r3.xyw, r3.x, r5.xyzz, r4.xyzz
    mad_pp r1.yzw, r3.z, r1, r3.xxyw
    mul_pp r1.yzw, r0.w, r1
    texld_pp r3, v0, s3
    mul_pp r1.yzw, r1, r3.xxyz
    mad_pp r2.xyz, r1.yzww, r1.x, r0
    mul_pp r0, r2, v8
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 274 instruction slots used (6 texture, 268 arithmetic)
