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
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgChrEmissionParam;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampEnv;
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
//   mrgChrEmissionParam                   c150     1
//   sampDif                               s0       1
//   sampEnv                               s3       1
//   sampEmi                               s4       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 500, 5, -2, 3
    def c1, 0.5, 2, -1, 1024
    def c2, 0.5, -0.5, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_2d s7
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
    max r1.x, v4.z, c3.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c3.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c3.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c3.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c3.y, r3.x
    lrp_pp r1.y, v6.z, c3.y, r2.y
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c1.y, c1.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.y, r1.z, r1.w
    lrp_pp r3.x, r2.y, c3.y, r1.y
    lrp_pp r3.y, r2.y, c3.y, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r2.yzw, -c50.xxyz, v2.xxyz
    dp3 r1.z, r2.yzww, r2.yzww
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    add r1.w, r1.w, -c52.z
    mul_sat r1.y, r1.y, r1.w
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r3.xzw, -c46.xyyz, v2.xyyz
    dp3 r4.x, r3.xzww, r3.xzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    add r4.y, r4.y, -c48.z
    mul_sat r1.w, r1.w, r4.y
    add_pp r1.yw, -r1, c3.y
    add r4.y, -c40.z, c40.w
    rcp r4.y, r4.y
    add r5.xyz, -c38, v2
    dp3 r4.z, r5, r5
    rsq r4.z, r4.z
    rcp r4.w, r4.z
    add r4.w, r4.w, -c40.z
    mul_sat r4.y, r4.y, r4.w
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r6.xyz, -c42, v2
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    add r6.w, r6.w, -c44.z
    mul_sat r4.w, r4.w, r6.w
    add_pp r4.yw, -r4, c3.y
    add_pp r7.xyz, c22, -v2
    dp3_pp r6.w, r7, r7
    rsq_pp r6.w, r6.w
    mul_pp r8.xyz, r6.w, r7
    mad_pp r6.xyz, r6, -r5.w, r8
    nrm_pp r9.xyz, r6
    nrm_pp r6.xyz, v3
    dp3_sat_pp r5.w, r9, r6
    mov_pp r9.xy, c0
    mul_pp r9.xy, r9, c20.yzzw
    max_pp r7.w, r9.x, c3.y
    min r8.w, r7.w, c1.w
    pow r7.w, r5.w, r8.w
    mul_pp r9.xzw, r9.y, c43.xyyz
    mul_pp r9.xzw, r7.w, r9
    mul_pp r9.xzw, r4.w, r9
    mad_pp r5.xyz, r5, -r4.z, r8
    nrm_pp r10.xyz, r5
    dp3_sat_pp r4.z, r10, r6
    pow r5.x, r4.z, r8.w
    mul_pp r5.yzw, r9.y, c39.xxyz
    mul_pp r5.xyz, r5.x, r5.yzww
    mad_pp r4.yzw, r4.y, r5.xxyz, r9.xxzw
    mul_pp r5.xyz, r9.y, c47
    mad_pp r3.xzw, r3, -r4.x, r8.xyyz
    mad_pp r2.yzw, r2, -r1.z, r8.xxyz
    nrm_pp r8.xyz, r2.yzww
    dp3_sat_pp r1.z, r8, r6
    pow r2.y, r1.z, r8.w
    nrm_pp r8.xyz, r3.xzww
    dp3_sat_pp r1.z, r8, r6
    pow r2.z, r1.z, r8.w
    mul_pp r3.xzw, r2.z, r5.xyyz
    mad_pp r3.xzw, r1.w, r3, r4.yyzw
    mul_pp r4.xyz, r9.y, c51
    mul_pp r2.yzw, r2.y, r4.xxyz
    mad_pp r1.yzw, r1.y, r2, r3.xxzw
    mul_pp r2.yzw, r9.y, c37.xxyz
    mad_pp r3.xzw, r7.xyyz, r6.w, -c10.xyyz
    mad_pp r0.yzw, r7.xxyz, r6.w, -r0
    nrm_pp r4.xyz, r0.yzww
    dp3_sat_pp r0.y, r4, r6
    pow r4.x, r0.y, r8.w
    nrm_pp r5.xyz, r3.xzww
    dp3_sat_pp r0.y, r5, r6
    pow r3.x, r0.y, r8.w
    mul_pp r0.yzw, r2, r3.x
    mad_pp r0.yzw, r0, r1.x, r1
    mul_pp r1.yzw, c59.w, c59.xxyz
    mul_pp r1.yzw, r9.y, r1
    mul_pp r1.yzw, r4.x, r1
    mad_pp r0.xyz, r0.x, r1.yzww, r0.yzww
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.y, r3.x, -r3.z, r3.z
    mad_pp r0.w, r1.x, r1.y, r0.w
    mul r1, r6.y, c91
    mad r1, r6.x, c90, r1
    mad r1, r6.z, c92, r1
    dp4 r1.z, r1, r1
    rsq r1.z, r1.z
    mul r1.xy, r1.z, r1
    mad_pp r1.xy, r1, c2, c2.x
    texld_pp r1, r1, s3
    mul r2.yzw, r1.xxyz, c63.x
    mad_pp r1.xyz, r2.yzww, r1.w, r1
    mul_pp r1.xyz, r0.w, r1
    mad_pp r0.xyz, r0, c18, r1
    mul_pp r0.xyz, r0, v3.w
    frc r0.w, c26.x
    cmp r1.x, -r0.w, c3.x, c3.y
    add r0.w, -r0.w, c26.x
    cmp r1.x, c26.x, r2.x, r1.x
    add r0.w, r0.w, r1.x
    add r4, r0.w, -c3
    cmp r1.xy, -r4_abs.x, v0, c3.x
    cmp r1.xy, -r4_abs.y, v0.zwzw, r1
    cmp r1.xy, -r4_abs.z, v1, r1
    cmp r1.xy, -r4_abs.w, v1.zwzw, r1
    texld_pp r4, r1, s0
    add_sat_pp r0.w, r1.w, r4.w
    mul_pp r1.w, r0.w, c16.w
    mov r5.xyz, c79
    add r2.yzw, -r5.xxyz, c80.xxyz
    mad_pp r3.xzw, r6.xyyz, c1.x, c1.x
    mul_pp r5.xyz, r6, r6
    mad r2.yzw, r3.z, r2, c79.xxyz
    mul r2.yzw, r2, r5.y
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r6.xyz, r3.x, r6, c77
    mad_pp r2.yzw, r5.x, r6.xxyz, r2
    mov r6.xyz, c81
    add r5.xyw, -r6.xyzz, c82.xyzz
    mad r3.xzw, r3.w, r5.xyyw, c81.xyyz
    mad_pp r2.yzw, r5.z, r3.xxzw, r2
    mul r3.xzw, r2.yyzw, c70.w
    mad r2.yzw, r2, -c70.w, r2
    mad_pp r2.yzw, r3.y, r2, r3.xxzw
    add_pp r2.yzw, r2, c3.y
    mul_pp r2.yzw, r2, c16.xxyz
    mad_pp r0.xyz, r2.yzww, r4, r0
    frc r0.w, c27.y
    cmp r2.y, -r0.w, c3.x, c3.y
    add r0.w, -r0.w, c27.y
    cmp r2.x, c27.y, r2.x, r2.y
    add r0.w, r0.w, r2.x
    add r2, r0.w, -c3
    cmp r3.xy, -r2_abs.x, v0, c3.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld r2, r2, s4
    add_pp r2.xyz, r2, c150
    mul_pp r2.xyz, r2, c17
    mad_pp r1.xyz, r2, c150.w, r0
    mul_pp r0, r1, v7
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 232 instruction slots used (5 texture, 227 arithmetic)
