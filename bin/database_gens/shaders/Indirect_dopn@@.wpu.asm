//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   float4 g_OffsetParam;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
//   sampler2D sampPower;
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
//   mrgTexcoordIndex                      c26      2
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
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_OffsetParam                         c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampOffset0                           s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, -2, 3
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 500, 5, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v4.w
    mul r0.xy, r0.x, v4
    mad r0.xy, r0, c0.x, c0.y
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v4.z, c3.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c3.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v5.z, c3.y, r0.x
    lrp_pp r0.x, r1.x, c3.y, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c1
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r0.yzw, r0, c70.xxyz
    mul_pp r1.x, r0.x, r1.w
    mul_pp r1.yzw, r0, c17.xxyz
    mul r1.yzw, r1, c70.w
    mad r0.yzw, r0, c17.xxyz, -r1
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r1.yzw, -c22.xxyz, v2.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    mul_pp r1.yzw, r1, r2.x
    rcp r2.x, r2.x
    add r2.x, r2.x, -c60.z
    dp3_pp r2.y, r1.yzww, c23
    add_pp r2.y, r2.y, -c61.z
    mul_sat_pp r0.w, r0.w, r2.y
    mad_pp r2.y, r0.w, c0.z, c0.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov r3.xy, c3
    add r0.w, r3.y, -c61.x
    cmp_pp r0.w, r0.w, c3.y, r2.y
    add r2.y, -c60.z, c60.w
    rcp r2.y, r2.y
    mul_sat r2.x, r2.y, r2.x
    add_pp r2.x, -r2.x, c3.y
    cmp_pp r2.x, -c61.x, r3.y, r2.x
    mul_pp r0.w, r0.w, r2.x
    add r2.x, -c44.z, c44.w
    rcp r2.x, r2.x
    add r2.yzw, -c42.xxyz, v2.xxyz
    dp3 r3.y, r2.yzww, r2.yzww
    rsq r3.y, r3.y
    rcp r3.z, r3.y
    mul_pp r2.yzw, r2, r3.y
    add r3.y, r3.z, -c44.z
    mul_sat r2.x, r2.x, r3.y
    add_pp r2.x, -r2.x, c3.y
    frc r3.y, c27.x
    cmp r3.z, -r3.y, c3.x, c3.y
    add r3.y, -r3.y, c27.x
    cmp r3.z, c27.x, r3.x, r3.z
    add r3.y, r3.z, r3.y
    add r4, r3.y, -c3
    cmp r3.yz, -r4_abs.x, v0.xxyw, c3.x
    cmp r3.yz, -r4_abs.y, v0.xzww, r3
    cmp r3.yz, -r4_abs.z, v1.xxyw, r3
    cmp r3.yz, -r4_abs.w, v1.xzww, r3
    texld_pp r4, r3.yzzw, s3
    mad r3.yz, r4.xwxw, c0.x, c0.y
    frc r4.xyz, c26.xzww
    cmp r5.xyz, -r4, c3.x, c3.y
    add r4.xyz, -r4, c26.xzww
    cmp r5.xyz, c26.xzww, r3.x, r5
    add r4.xyz, r4, r5
    add r5, r4.z, -c3
    cmp r3.xw, -r5_abs.x, v0.xyzy, c3.x
    cmp r3.xw, -r5_abs.y, v0.zyzw, r3
    cmp r3.xw, -r5_abs.z, v1.xyzy, r3
    cmp r3.xw, -r5_abs.w, v1.zyzw, r3
    mad r3.xw, r3.yyzz, c150.xyzy, r3
    texld_pp r5, r3.xwzw, s2
    mul_pp r5.x, r5.w, r5.x
    mad_pp r3.xw, r5.xyzy, c0.x, c0.y
    nrm_pp r5.xyz, v7
    mul_pp r5.xyz, r3.w, r5
    nrm_pp r6.xyz, v6
    mad_pp r5.xyz, r3.x, r6, r5
    dp2add_pp r3.x, r3.xwzw, -r3.xwzw, c3.y
    rsq_pp r3.x, r3.x
    rcp_pp r3.x, r3.x
    nrm_pp r6.xyz, v3
    mad_pp r5.xyz, r3.x, r6, r5
    dp3_pp r3.x, r5, -r2.yzww
    mul_pp r6.xyz, r3.x, c43
    cmp_pp r6.xyz, r3.x, r6, c3.x
    mul_pp r6.xyz, r2.x, r6
    add r3.x, -c40.z, c40.w
    rcp r3.x, r3.x
    add r7.xyz, -c38, v2
    dp3 r3.w, r7, r7
    rsq r3.w, r3.w
    rcp r4.z, r3.w
    mul_pp r7.xyz, r3.w, r7
    add r3.w, r4.z, -c40.z
    mul_sat r3.x, r3.x, r3.w
    add_pp r3.x, -r3.x, c3.y
    dp3_pp r3.w, r5, -r7
    mul_pp r8.xyz, r3.w, c39
    cmp_pp r8.xyz, r3.w, r8, c3.x
    mad_pp r6.xyz, r3.x, r8, r6
    add r3.w, -c48.z, c48.w
    rcp r3.w, r3.w
    add r8.xyz, -c46, v2
    dp3 r4.z, r8, r8
    rsq r4.z, r4.z
    rcp r4.w, r4.z
    mul_pp r8.xyz, r4.z, r8
    add r4.z, r4.w, -c48.z
    mul_sat r3.w, r3.w, r4.z
    add_pp r3.w, -r3.w, c3.y
    dp3_pp r4.z, r5, -r8
    mul_pp r9.xyz, r4.z, c47
    cmp_pp r9.xyz, r4.z, r9, c3.x
    mad_pp r6.xyz, r3.w, r9, r6
    add r4.z, -c52.z, c52.w
    rcp r4.z, r4.z
    add r9.xyz, -c50, v2
    dp3 r4.w, r9, r9
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r9.xyz, r4.w, r9
    add r4.w, r5.w, -c52.z
    mul_sat r4.z, r4.z, r4.w
    add_pp r4.z, -r4.z, c3.y
    dp3_pp r4.w, r5, -r9
    mul_pp r10.xyz, r4.w, c51
    cmp_pp r10.xyz, r4.w, r10, c3.x
    mad_pp r6.xyz, r4.z, r10, r6
    dp3_pp r4.w, r5, -c10
    mul r10.xyz, r4.w, c36
    mul_pp r10.xyz, r1.x, r10
    cmp_pp r10.xyz, r4.w, r10, c3.x
    add_pp r6.xyz, r6, r10
    dp3_pp r4.w, r5, -r1.yzww
    mul_pp r10.xyz, c58.w, c58
    mul_pp r10.xyz, r4.w, r10
    cmp_pp r10.xyz, r4.w, r10, c3.x
    mad_pp r6.xyz, r0.w, r10, r6
    add_pp r0.xyz, r0, r6
    mul_pp r0.xyz, r0, c16
    add r6, r4.x, -c3
    add r10, r4.y, -c3
    cmp r4.xy, -r6_abs.x, v0, c3.x
    cmp r4.xy, -r6_abs.y, v0.zwzw, r4
    cmp r4.xy, -r6_abs.z, v1, r4
    cmp r4.xy, -r6_abs.w, v1.zwzw, r4
    mad r4.xy, r3.yzzw, c150, r4
    texld_pp r6, r4, s0
    mul_pp r0.xyz, r0, r6
    mul_pp r4.x, r6.w, c16.w
    mul_pp r4.x, r4.x, v8.w
    mul_pp r6.w, r4.x, c21.x
    cmp r4.xy, -r10_abs.x, v0, c3.x
    cmp r4.xy, -r10_abs.y, v0.zwzw, r4
    cmp r4.xy, -r10_abs.z, v1, r4
    cmp r4.xy, -r10_abs.w, v1.zwzw, r4
    mad r3.yz, r3, c150.xxyw, r4.xxyw
    texld_pp r10, r3.yzzw, s1
    mul_pp r3.yz, r10.x, c20
    mul_pp r3.yz, r3, c2.xxyw
    mul_pp r4.xyw, r3.z, c43.xyzz
    add_pp r10.xyz, c22, -v2
    dp3_pp r5.w, r10, r10
    rsq_pp r5.w, r5.w
    mad_pp r2.yzw, r10.xxyz, r5.w, -r2
    nrm_pp r11.xyz, r2.yzww
    dp3_sat_pp r2.y, r11, r5
    max_pp r2.z, r3.y, c3.y
    min r3.y, r2.z, c1.w
    pow r7.w, r2.y, r3.y
    mul_pp r2.yzw, r4.xxyw, r7.w
    mul_pp r2.xyz, r2.yzww, r2.x
    mul_pp r4.xyw, r3.z, c39.xyzz
    mad_pp r7.xyz, r10, r5.w, -r7
    nrm_pp r11.xyz, r7
    dp3_sat_pp r2.w, r11, r5
    pow r7.x, r2.w, r3.y
    mul_pp r4.xyw, r4, r7.x
    mad_pp r2.xyz, r3.x, r4.xyww, r2
    mul_pp r4.xyw, r3.z, c47.xyzz
    mad_pp r7.xyz, r10, r5.w, -r8
    nrm_pp r8.xyz, r7
    dp3_sat_pp r2.w, r8, r5
    pow r7.x, r2.w, r3.y
    mul_pp r4.xyw, r4, r7.x
    mad_pp r2.xyz, r3.w, r4.xyww, r2
    mul_pp r4.xyw, r3.z, c51.xyzz
    mad_pp r7.xyz, r10, r5.w, -r9
    nrm_pp r8.xyz, r7
    dp3_sat_pp r2.w, r8, r5
    pow r7.x, r2.w, r3.y
    mul_pp r4.xyw, r4, r7.x
    mad_pp r2.xyz, r4.z, r4.xyww, r2
    mul_pp r4.xyz, r3.z, c37
    mad_pp r7.xyz, r10, r5.w, -c10
    mad_pp r1.yzw, r10.xxyz, r5.w, -r1
    nrm_pp r8.xyz, r1.yzww
    dp3_sat_pp r1.y, r8, r5
    pow r2.w, r1.y, r3.y
    nrm_pp r8.xyz, r7
    dp3_sat_pp r1.y, r8, r5
    pow r4.w, r1.y, r3.y
    mul_pp r1.yzw, r4.w, r4.xxyz
    mad_pp r1.xyz, r1.yzww, r1.x, r2
    mul_pp r2.xyz, c59.w, c59
    mul_pp r2.xyz, r3.z, r2
    mul_pp r2.xyz, r2.w, r2
    mad_pp r1.xyz, r0.w, r2, r1
    mul_pp r1.xyz, r1, c18
    mul_pp r1.xyz, r1, v3.w
    mad_pp r6.xyz, r0, v8, r1
    mul_pp r0, r6, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 261 instruction slots used (6 texture, 255 arithmetic)
