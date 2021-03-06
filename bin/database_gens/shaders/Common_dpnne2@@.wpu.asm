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
//   float4 mrgInShadowScale;
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
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
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
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   sampNrm2                              s4       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
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
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_2d s10
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
    add r1.x, -c40.z, c40.w
    rcp r1.x, r1.x
    add r1.yzw, -c38.xxyz, v2.xxyz
    dp3 r2.y, r1.yzww, r1.yzww
    rsq r2.y, r2.y
    rcp r2.z, r2.y
    mul_pp r1.yzw, r1, r2.y
    add r2.y, r2.z, -c40.z
    mul_sat r1.x, r1.x, r2.y
    add_pp r1.x, -r1.x, c3.y
    add r2.y, -c44.z, c44.w
    rcp r2.y, r2.y
    add r3.xyz, -c42, v2
    dp3 r2.z, r3, r3
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r3.xyz, r2.z, r3
    add r2.z, r2.w, -c44.z
    mul_sat r2.y, r2.y, r2.z
    add_pp r2.y, -r2.y, c3.y
    frc r2.zw, c27.xyxy
    cmp r4.xy, -r2.zwzw, c3.x, c3.y
    add r2.zw, -r2, c27.xyxy
    cmp r4.xy, c27, r2.x, r4
    add r2.zw, r2, r4.xyxy
    add r4, r2.z, -c3
    add r5, r2.w, -c3
    cmp r2.zw, -r4_abs.x, v0.xyxy, c3.x
    cmp r2.zw, -r4_abs.y, v0, r2
    cmp r2.zw, -r4_abs.z, v1.xyxy, r2
    cmp r2.zw, -r4_abs.w, v1, r2
    texld_pp r4, r2.zwzw, s3
    mul_pp r4.x, r4.w, r4.x
    mad_pp r2.zw, r4.xyxy, c0.y, c0.z
    dp2add_pp r3.w, r2.zwzw, -r2.zwzw, c3.y
    rsq_pp r3.w, r3.w
    rcp_pp r3.w, r3.w
    nrm_pp r4.xyz, v7
    mul_pp r6.xyz, r2.w, r4
    nrm_pp r7.xyz, v6
    mad_pp r6.xyz, r2.z, r7, r6
    nrm_pp r8.xyz, v3
    mad_pp r6.xyz, r3.w, r8, r6
    cmp r2.zw, -r5_abs.x, v0.xyxy, c3.x
    cmp r2.zw, -r5_abs.y, v0, r2
    cmp r2.zw, -r5_abs.z, v1.xyxy, r2
    cmp r2.zw, -r5_abs.w, v1, r2
    texld_pp r5, r2.zwzw, s4
    mul_pp r5.x, r5.w, r5.x
    mad_pp r2.zw, r5.xyxy, c0.y, c0.z
    mul_pp r4.xyz, r4, r2.w
    mad_pp r4.xyz, r2.z, r7, r4
    dp2add_pp r2.z, r2.zwzw, -r2.zwzw, c3.y
    rsq_pp r2.z, r2.z
    rcp_pp r2.z, r2.z
    mad_pp r4.xyz, r2.z, r8, r4
    add_pp r4.xyz, r4, r6
    nrm r5.xyz, r4
    add_pp r4.xyz, c22, -v2
    dp3_pp r2.z, r4, r4
    rsq_pp r2.z, r2.z
    mad_pp r6.xyz, r4, r2.z, -r3
    dp3_pp r2.w, r5, -r3
    nrm_pp r3.xyz, r6
    dp3_sat_pp r3.x, r3, r5
    frc r3.yz, c26.xxww
    cmp r6.xy, -r3.yzzw, c3.x, c3.y
    add r3.yz, -r3, c26.xxww
    cmp r6.xy, c26.xwzw, r2.x, r6
    add r3.yz, r3, r6.xxyw
    add r6, r3.z, -c3
    add r7, r3.y, -c3
    cmp r3.yz, -r6_abs.x, v0.xxyw, c3.x
    cmp r3.yz, -r6_abs.y, v0.xzww, r3
    cmp r3.yz, -r6_abs.z, v1.xxyw, r3
    cmp r3.yz, -r6_abs.w, v1.xzww, r3
    texld_pp r6, r3.yzzw, s2
    mul_pp r3.yz, r6.x, c20
    mul_pp r3.yz, r3, c2.xxyw
    max_pp r2.x, r3.y, c3.y
    min r3.y, r2.x, c1.w
    pow r2.x, r3.x, r3.y
    mul_pp r6.yzw, r3.z, c43.xxyz
    mul_pp r6.yzw, r2.x, r6
    mul_pp r6.yzw, r2.y, r6
    mul_pp r8.xyz, r3.z, c39
    mad_pp r9.xyz, r4, r2.z, -r1.yzww
    dp3_pp r1.y, r5, -r1.yzww
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.z, r10, r5
    pow r2.x, r1.z, r3.y
    mul_pp r8.xyz, r2.x, r8
    mad_pp r6.yzw, r1.x, r8.xxyz, r6
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r8.xyz, -c46, v2
    dp3 r1.w, r8, r8
    rsq r1.w, r1.w
    rcp r2.x, r1.w
    mul_pp r8.xyz, r1.w, r8
    add r1.w, r2.x, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.z, -r1.z, c3.y
    mul_pp r9.xyz, r3.z, c47
    mad_pp r10.xyz, r4, r2.z, -r8
    dp3_pp r1.w, r5, -r8
    nrm_pp r8.xyz, r10
    dp3_sat_pp r2.x, r8, r5
    pow r4.w, r2.x, r3.y
    mul_pp r8.xyz, r4.w, r9
    mad_pp r6.yzw, r1.z, r8.xxyz, r6
    add r2.x, -c52.z, c52.w
    rcp r2.x, r2.x
    add r8.xyz, -c50, v2
    dp3 r3.x, r8, r8
    rsq r3.x, r3.x
    rcp r3.w, r3.x
    mul_pp r8.xyz, r3.x, r8
    add r3.x, r3.w, -c52.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c3.y
    mul_pp r9.xyz, r3.z, c51
    mad_pp r10.xyz, r4, r2.z, -r8
    dp3_pp r3.x, r5, -r8
    nrm_pp r8.xyz, r10
    dp3_sat_pp r3.w, r8, r5
    pow r4.w, r3.w, r3.y
    mul_pp r8.xyz, r4.w, r9
    mad_pp r6.yzw, r2.x, r8.xxyz, r6
    rcp r3.w, v4.w
    mul r8.xy, r3.w, v4
    mad r8.xy, r8, c0.y, c0.z
    abs_sat r8.xy, r8
    add_sat r8.xy, r8, -c65.x
    mul r8.xy, r8, c65.y
    max r3.w, r8.x, r8.y
    max r4.w, v4.z, c3.x
    add r5.w, r4.w, -v4.w
    cmp r8.z, r5.w, c3.x, r4.w
    mov r8.xyw, v4
    texldp_pp r8, r8, s13
    lrp_pp r4.w, v5.z, c3.y, r8.x
    lrp_pp r5.w, r3.w, c3.y, r4.w
    texld_pp r8, v0.zwzw, s10
    mul r3.w, r5.w, r8.w
    mul_pp r9.xyz, r3.z, c37
    mad_pp r10.xyz, r4, r2.z, -c10
    nrm_pp r11.xyz, r10
    dp3_sat_pp r4.w, r11, r5
    pow r8.w, r4.w, r3.y
    mul_pp r9.xyz, r8.w, r9
    mad_pp r6.yzw, r9.xxyz, r3.w, r6
    mul_pp r9.xyz, c59.w, c59
    mul_pp r9.xyz, r3.z, r9
    mad_pp r10.xyz, r4, r2.z, -r0.yzww
    dp3_pp r0.y, r5, -r0.yzww
    mul r4.xyz, r2.z, r4
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.z, r11, r5
    pow r2.z, r0.z, r3.y
    mul_pp r9.xyz, r2.z, r9
    mad_pp r6.yzw, r0.x, r9.xxyz, r6
    dp3 r0.z, -r4, r5
    add r0.z, r0.z, r0.z
    mad_pp r4.xyz, r5, -r0.z, -r4
    dp3_pp r0.z, r5, -c10
    texld_pp r4, r4, s5
    mul r5.xyz, r4, c63.x
    mad_pp r4.xyz, r5, r4.w, r4
    mul_pp r4.xyz, r6.x, r4
    mul r0.w, c64.z, c64.x
    mov r5.xz, c64
    mad r2.z, r5.x, -r5.z, r5.z
    mad_pp r0.w, r3.w, r2.z, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_pp r4.xyz, r6.yzww, c18, r4
    mul_pp r4.xyz, r4, v3.w
    mul_pp r5.xyz, r2.w, c43
    cmp_pp r5.xyz, r2.w, r5, c3.x
    mul_pp r2.yzw, r2.y, r5.xxyz
    mul_pp r5.xyz, r1.y, c39
    cmp_pp r5.xyz, r1.y, r5, c3.x
    mad_pp r2.yzw, r1.x, r5.xxyz, r2
    mul_pp r5.xyz, r1.w, c47
    cmp_pp r1.xyw, r1.w, r5.xyzz, c3.x
    mad_pp r1.xyz, r1.z, r1.xyww, r2.yzww
    mul_pp r2.yzw, r3.x, c51.xxyz
    cmp_pp r2.yzw, r3.x, r2, c3.x
    mad_pp r1.xyz, r2.x, r2.yzww, r1
    mul r2.xyz, r0.z, c36
    mul_pp r2.xyz, r3.w, r2
    cmp_pp r2.xyz, r0.z, r2, c3.x
    add_pp r1.xyz, r1, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c3.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r8, r8
    dp3_pp r0.w, r1, c1
    mad_pp r1.xyz, r8, r8, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r5.w, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r7_abs.x, v0, c3.x
    cmp r1.xy, -r7_abs.y, v0.zwzw, r1
    cmp r1.xy, -r7_abs.z, v1, r1
    cmp r1.xy, -r7_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r2.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r3.x, c86.x
    mad r0.w, r0.w, c24.w, -r3.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r3.xyz, r0.w, r1, c3.y
    mad_pp r0.xyz, r0, r3, r4
    mul_pp r2.xyz, r0, v8
    mul_pp r0, r2, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 288 instruction slots used (7 texture, 281 arithmetic)
