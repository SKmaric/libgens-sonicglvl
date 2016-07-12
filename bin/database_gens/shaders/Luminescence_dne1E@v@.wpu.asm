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
//   row_major float4x4 g_MtxView;
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
//   sampler2D sampEmi;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
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
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampNrm                               s3       1
//   sampEmi                               s4       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 0.5, 2, -1, -3
    def c2, 500, 5, 0.5, -0.5
    def c3, 4, 0, 0, 0
    def c4, 0, 1, 2, 3
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
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
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
    mad_pp r1.y, r0.x, -c1.y, -c1.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c4
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c4.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.y
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
    add_pp r1.x, -r1.x, c4.y
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
    add_pp r2.yz, -r2, c4.y
    frc r5.xy, c27
    cmp r5.zw, -r5.xyxy, c4.x, c4.y
    add r5.xy, -r5, c27
    cmp r5.zw, c27.xyxy, r2.x, r5
    add r5.xy, r5.zwzw, r5
    add r6, r5.x, -c4
    add r5, r5.y, -c4
    cmp r7.xy, -r6_abs.x, v0, c4.x
    cmp r6.xy, -r6_abs.y, v0.zwzw, r7
    cmp r6.xy, -r6_abs.z, v1, r6
    cmp r6.xy, -r6_abs.w, v1.zwzw, r6
    texld_pp r6, r6, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r6.xy, r6, c1.y, c1.z
    nrm_pp r7.xyz, v7
    mul_pp r7.xyz, r6.y, r7
    nrm_pp r8.xyz, v6
    mad_pp r7.xyz, r6.x, r8, r7
    dp2add_pp r2.w, r6, -r6, c4.y
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r6.xyz, v3
    mad_pp r6.xyz, r2.w, r6, r7
    add_pp r7.xyz, c22, -v2
    dp3_pp r2.w, r7, r7
    rsq_pp r2.w, r2.w
    mad_pp r8.xyz, r7, r2.w, -r4
    dp3_pp r3.w, r6, -r4
    nrm_pp r4.xyz, r8
    dp3_sat_pp r4.x, r4, r6
    mov_pp r8.xy, c2
    mul_pp r4.yz, r8.xxyw, c20
    max_pp r6.w, r4.y, c4.y
    min r4.y, r6.w, c0.w
    pow r6.w, r4.x, r4.y
    mul_pp r8.xyz, r4.z, c43
    mul_pp r8.xyz, r6.w, r8
    mul_pp r8.xyz, r2.z, r8
    mad_pp r9.xyz, r7, r2.w, -r3
    dp3_pp r3.x, r6, -r3
    nrm_pp r10.xyz, r9
    dp3_sat_pp r3.y, r10, r6
    pow r6.w, r3.y, r4.y
    mul_pp r9.xyz, r4.z, c39
    mul_pp r9.xyz, r6.w, r9
    mad_pp r8.xyz, r2.y, r9, r8
    mad_pp r9.xyz, r7, r2.w, -r1.yzww
    dp3_pp r1.y, r6, -r1.yzww
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.z, r10, r6
    pow r3.y, r1.z, r4.y
    mul_pp r9.xyz, r4.z, c47
    mul_pp r9.xyz, r3.y, r9
    mad_pp r8.xyz, r1.x, r9, r8
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r9.xyz, -c50, v2
    dp3 r1.w, r9, r9
    rsq r1.w, r1.w
    rcp r3.y, r1.w
    mul_pp r9.xyz, r1.w, r9
    add r1.w, r3.y, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.z, -r1.z, c4.y
    mad_pp r10.xyz, r7, r2.w, -r9
    dp3_pp r1.w, r6, -r9
    nrm_pp r9.xyz, r10
    dp3_sat_pp r3.y, r9, r6
    pow r6.w, r3.y, r4.y
    mul_pp r9.xyz, r4.z, c51
    mul_pp r9.xyz, r6.w, r9
    mad_pp r8.xyz, r1.z, r9, r8
    rcp r3.y, v4.w
    mul r3.yz, r3.y, v4.xxyw
    mad r3.yz, r3, c1.y, c1.z
    abs_sat r3.yz, r3
    add_sat r3.yz, r3, -c65.x
    mul r3.yz, r3, c65.y
    max r4.x, r3.y, r3.z
    max r3.y, v4.z, c4.x
    add r3.z, r3.y, -v4.w
    cmp r9.z, r3.z, c4.x, r3.y
    mov r9.xyw, v4
    texldp_pp r9, r9, s13
    lrp_pp r3.y, v5.z, c4.y, r9.x
    lrp_pp r6.w, r4.x, c4.y, r3.y
    texld_pp r9, v0.zwzw, s10
    mul r3.y, r6.w, r9.w
    mad_pp r10.xyz, r7, r2.w, -c10
    mad_pp r7.xyz, r7, r2.w, -r0.yzww
    dp3_pp r0.y, r6, -r0.yzww
    nrm_pp r11.xyz, r7
    dp3_sat_pp r0.z, r11, r6
    pow r2.w, r0.z, r4.y
    nrm_pp r7.xyz, r10
    dp3_sat_pp r0.z, r7, r6
    pow r3.z, r0.z, r4.y
    mul_pp r4.xyw, r4.z, c37.xyzz
    mul_pp r4.xyw, r3.z, r4
    mad_pp r4.xyw, r4, r3.y, r8.xyzz
    mul_pp r7.xyz, c59.w, c59
    mul_pp r7.xyz, r4.z, r7
    mul_pp r7.xyz, r2.w, r7
    mad_pp r4.xyz, r0.x, r7, r4.xyww
    mul r7, r6.y, c91
    mad r7, r6.x, c90, r7
    mad r7, r6.z, c92, r7
    dp3_pp r0.z, r6, -c10
    dp4 r0.w, r7, r7
    rsq r0.w, r0.w
    mul r6.xy, r0.w, r7
    mad_pp r6.xy, r6, c2.zwzw, c2.z
    texld_pp r7, r6, s5
    mul r6.xyz, r7, c63.x
    mad_pp r6.xyz, r6, r7.w, r7
    mul r0.w, c64.z, c64.x
    mov r7.xz, c64
    mad r2.w, r7.x, -r7.z, r7.z
    mad_pp r0.w, r3.y, r2.w, r0.w
    mul_pp r6.xyz, r0.w, r6
    mad_pp r4.xyz, r4, c18, r6
    mul_pp r4.xyz, r4, v3.w
    mul_pp r6.xyz, r3.w, c43
    cmp_pp r6.xyz, r3.w, r6, c4.x
    mul_pp r6.xyz, r2.z, r6
    mul_pp r7.xyz, r3.x, c39
    cmp_pp r3.xzw, r3.x, r7.xyyz, c4.x
    mad_pp r2.yzw, r2.y, r3.xxzw, r6.xxyz
    mul_pp r3.xzw, r1.y, c47.xyyz
    cmp_pp r3.xzw, r1.y, r3, c4.x
    mad_pp r2.yzw, r1.x, r3.xxzw, r2
    mul_pp r3.xzw, r1.w, c51.xyyz
    cmp_pp r1.xyw, r1.w, r3.xzzw, c4.x
    mad_pp r1.xyz, r1.z, r1.xyww, r2.yzww
    mul r2.yzw, r0.z, c36.xxyz
    mul_pp r2.yzw, r3.y, r2
    cmp_pp r2.yzw, r0.z, r2, c4.x
    add_pp r1.xyz, r1, r2.yzww
    mul_pp r2.yzw, c58.w, c58.xxyz
    mul_pp r2.yzw, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2, c4.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r9, r9
    dp3_pp r0.w, r1, c0
    mad_pp r1.xyz, r9, r9, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r2.yzw, r1.xxyz, c70.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.xyz, r1, c70, -r2.yzww
    mad_pp r1.xyz, r6.w, r1, r2.yzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    frc r0.w, c26.x
    cmp r1.x, -r0.w, c4.x, c4.y
    add r0.w, -r0.w, c26.x
    cmp r1.x, c26.x, r2.x, r1.x
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c4
    cmp r2.xy, -r1_abs.x, v0, c4.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r2.w, r0.w, c21.x
    add r0.w, c1.x, vPos.y
    mov r3.x, c86.x
    mad r0.w, r0.w, c24.w, -r3.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r3.xyz, r0.w, r1, c4.y
    mad_pp r0.xyz, r0, r3, r4
    cmp r1.xy, -r5_abs.x, v0, c4.x
    cmp r1.xy, -r5_abs.y, v0.zwzw, r1
    cmp r1.xy, -r5_abs.z, v1, r1
    cmp r1.xy, -r5_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s4
    mul_pp r1.xyz, r1, c17
    mad_pp r0.xyz, r1, r0.w, r0
    mul_pp r2.xyz, r0, v8
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 271 instruction slots used (6 texture, 265 arithmetic)
