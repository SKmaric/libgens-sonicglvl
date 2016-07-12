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
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   sampler2D g_ReflectionMapSampler;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampPow;
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
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//   g_ReflectionMapSampler                s14      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 500, 5, 0.0500000007, 4
    def c3, 0, 1, 2, 3
    def c4, 1, 0, -1, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    dcl_2d s14
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
    mad_pp r1.y, r0.x, -c0.y, -c0.w
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
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r1.yzw, -c46.xxyz, v2.xxyz
    dp3 r2.y, r1.yzww, r1.yzww
    rsq r2.y, r2.y
    rcp r2.z, r2.y
    mul_pp r1.yzw, r1, r2.y
    add r2.y, r2.z, -c48.z
    mul_sat r1.x, r1.x, r2.y
    add_pp r1.x, -r1.x, c3.y
    add r2.y, -c40.z, c40.w
    rcp r2.y, r2.y
    add r3.xyz, -c38, v2
    dp3 r2.z, r3, r3
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r3.xyz, r2.z, r3
    add r2.z, r2.w, -c40.z
    mul_sat r2.y, r2.y, r2.z
    add r2.z, -c44.z, c44.w
    rcp r2.z, r2.z
    add r4.xyz, -c42, v2
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r3.w, -c44.z
    mul_sat r2.z, r2.z, r2.w
    add_pp r2.yz, -r2, c3.y
    frc r5.xy, c26.xwzw
    cmp r5.zw, -r5.xyxy, c3.x, c3.y
    add r5.xy, -r5, c26.xwzw
    cmp r5.zw, c26.xyxw, r2.x, r5
    add r5.xy, r5.zwzw, r5
    add r6, r5.y, -c3
    add r5, r5.x, -c3
    cmp r7.xy, -r6_abs.x, v0, c3.x
    cmp r6.xy, -r6_abs.y, v0.zwzw, r7
    cmp r6.xy, -r6_abs.z, v1, r6
    cmp r6.xy, -r6_abs.w, v1.zwzw, r6
    texld_pp r6, r6, s2
    mul_pp r6.xy, r6.x, c20.yzzw
    mul_pp r6.xy, r6, c2
    mul_pp r7.xyz, r6.y, c43
    max_pp r2.w, r6.x, c3.y
    min r3.w, r2.w, c1.w
    frc r2.w, c27.x
    cmp r4.w, -r2.w, c3.x, c3.y
    add r2.w, -r2.w, c27.x
    cmp r2.x, c27.x, r2.x, r4.w
    add r2.x, r2.x, r2.w
    add r8, r2.x, -c3
    cmp r2.xw, -r8_abs.x, v0.xyzy, c3.x
    cmp r2.xw, -r8_abs.y, v0.zyzw, r2
    cmp r2.xw, -r8_abs.z, v1.xyzy, r2
    cmp r2.xw, -r8_abs.w, v1.zyzw, r2
    texld_pp r8, r2.xwzw, s3
    mul_pp r8.x, r8.w, r8.x
    mad_pp r2.xw, r8.xyzy, c0.y, c0.z
    nrm_pp r8.xyz, v7
    mul_pp r6.xzw, r2.w, r8.xyyz
    nrm_pp r8.xyz, v6
    mad_pp r6.xzw, r2.x, r8.xyyz, r6
    dp2add_pp r4.w, r2.xwzw, -r2.xwzw, c3.y
    rsq_pp r4.w, r4.w
    rcp_pp r4.w, r4.w
    nrm_pp r8.xyz, v3
    mad_pp r6.xzw, r4.w, r8.xyyz, r6
    add_pp r8.xyz, c22, -v2
    dp3_pp r4.w, r8, r8
    rsq_pp r4.w, r4.w
    mad_pp r9.xyz, r8, r4.w, -r4
    dp3_pp r4.x, r6.xzww, -r4
    nrm_pp r10.xyz, r9
    dp3_sat_pp r4.y, r10, r6.xzww
    pow r7.w, r4.y, r3.w
    mul_pp r7.xyz, r7.w, r7
    mul_pp r7.xyz, r2.z, r7
    mul_pp r9.xyz, r6.y, c39
    mad_pp r10.xyz, r8, r4.w, -r3
    dp3_pp r3.x, r6.xzww, -r3
    nrm_pp r11.xyz, r10
    dp3_sat_pp r3.y, r11, r6.xzww
    pow r4.y, r3.y, r3.w
    mul_pp r9.xyz, r4.y, r9
    mad_pp r7.xyz, r2.y, r9, r7
    mul_pp r9.xyz, r6.y, c47
    mad_pp r10.xyz, r8, r4.w, -r1.yzww
    dp3_pp r1.y, r6.xzww, -r1.yzww
    nrm_pp r11.xyz, r10
    dp3_sat_pp r1.z, r11, r6.xzww
    pow r4.y, r1.z, r3.w
    mul_pp r9.xyz, r4.y, r9
    mad_pp r7.xyz, r1.x, r9, r7
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r9.xyz, -c50, v2
    dp3 r1.w, r9, r9
    rsq r1.w, r1.w
    rcp r3.y, r1.w
    mul_pp r9.xyz, r1.w, r9
    add r1.w, r3.y, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.z, -r1.z, c3.y
    mul_pp r10.xyz, r6.y, c51
    mad_pp r11.xyz, r8, r4.w, -r9
    dp3_pp r1.w, r6.xzww, -r9
    nrm_pp r9.xyz, r11
    dp3_sat_pp r3.y, r9, r6.xzww
    pow r4.y, r3.y, r3.w
    mul_pp r9.xyz, r4.y, r10
    mad_pp r7.xyz, r1.z, r9, r7
    rcp r3.y, v4.w
    mul r3.yz, r3.y, v4.xxyw
    mad r3.yz, r3, c0.y, c0.z
    abs_sat r3.yz, r3
    add_sat r3.yz, r3, -c65.x
    mul r3.yz, r3, c65.y
    max r4.y, r3.y, r3.z
    max r3.y, v4.z, c3.x
    add r3.z, r3.y, -v4.w
    cmp r9.z, r3.z, c3.x, r3.y
    mov r9.xyw, v4
    texldp_pp r9, r9, s13
    lrp_pp r3.y, v5.z, c3.y, r9.x
    lrp_pp r7.w, r4.y, c3.y, r3.y
    texld_pp r9, v0.zwzw, s10
    mul_pp r3.y, r7.w, r9.w
    mul_pp r10.xyz, r6.y, c37
    mad_pp r11.xyz, r8, r4.w, -c10
    mad_pp r4.yzw, r8.xxyz, r4.w, -r0
    dp3_pp r0.y, r6.xzww, -r0.yzww
    nrm_pp r8.xyz, r4.yzww
    dp3_sat_pp r0.z, r8, r6.xzww
    pow r4.y, r0.z, r3.w
    nrm_pp r8.xyz, r11
    dp3_sat_pp r0.z, r8, r6.xzww
    dp3_pp r0.w, r6.xzww, -c10
    pow r4.z, r0.z, r3.w
    mul_pp r6.xzw, r4.z, r10.xyyz
    mad_pp r6.xzw, r6, r3.y, r7.xyyz
    mul_pp r7.xyz, c59.w, c59
    mul_pp r7.xyz, r6.y, r7
    mul_pp r4.yzw, r4.y, r7.xxyz
    mad_pp r4.yzw, r0.x, r4, r6.xxzw
    mul r3.zw, c24, vPos.xyxy
    mov r6.xyz, c4
    mad r6, c24.zzzw, r6.xyyz, r6.yzzy
    mad r7.xy, r3.zwzw, c3.z, r6
    mov r7.z, -r7.y
    add r3.zw, r6, r7.xyxz
    mad r2.xw, r2, c2.z, r3.zyzw
    mad r2.xw, r2, c0.x, c0.x
    texld_pp r6, r2.xwzw, s14
    mad_pp r4.yzw, r4, c18.xxyz, r6.xxyz
    mul_pp r4.yzw, r4, v3.w
    mul_pp r6.xyz, r4.x, c43
    cmp_pp r6.xyz, r4.x, r6, c3.x
    mul_pp r2.xzw, r2.z, r6.xyyz
    mul_pp r6.xyz, r3.x, c39
    cmp_pp r3.xzw, r3.x, r6.xyyz, c3.x
    mad_pp r2.xyz, r2.y, r3.xzww, r2.xzww
    mul_pp r3.xzw, r1.y, c47.xyyz
    cmp_pp r3.xzw, r1.y, r3, c3.x
    mad_pp r2.xyz, r1.x, r3.xzww, r2
    mul_pp r3.xzw, r1.w, c51.xyyz
    cmp_pp r1.xyw, r1.w, r3.xzzw, c3.x
    mad_pp r1.xyz, r1.z, r1.xyww, r2
    mul r2.xyz, r0.w, c36
    mul_pp r2.xyz, r3.y, r2
    cmp_pp r2.xyz, r0.w, r2, c3.x
    add_pp r1.xyz, r1, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c3.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r9, r9
    dp3_pp r0.w, r1, c1
    mad_pp r1.xyz, r9, r9, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r7.w, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r5_abs.x, v0, c3.x
    cmp r1.xy, -r5_abs.y, v0.zwzw, r1
    cmp r1.xy, -r5_abs.z, v1, r1
    cmp r1.xy, -r5_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r2.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r1.w, c24.w
    mad r0.w, r0.w, r1.w, -c86.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r3.xyz, r0.w, r1, c3.y
    mad_pp r0.xyz, r0, r3, r4.yzww
    mul_pp r2.xyz, r0, v8
    mul_pp r0, r2, c89
    min_pp r1, r0, c2.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 264 instruction slots used (6 texture, 258 arithmetic)
