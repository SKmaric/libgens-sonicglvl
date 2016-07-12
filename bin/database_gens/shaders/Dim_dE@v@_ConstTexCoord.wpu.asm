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
//   sampler2D sampEmi;
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
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampEmi                               s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, 1, 2, -1, -3
    def c2, 500, 5, 1024, 4
    def c3, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v3.w
    mul r0.xy, r0.x, v3
    mad r0.xy, r0, c1.y, c1.z
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v3.z, c0.w
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c0.w, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v4.z, c1.x, r0.x
    lrp_pp r0.x, r1.x, c1.x, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c0
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r1.x, r0.x, r1.w
    mul_pp r1.yzw, r0, c70.xxyz
    mul r1.yzw, r1, c70.w
    mad r0.yzw, r0, c70.xxyz, -r1
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r1.yzw, -c22.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    mul_pp r1.yzw, r1, r2.x
    rcp r2.x, r2.x
    add r2.x, r2.x, -c60.z
    dp3_pp r2.y, r1.yzww, c23
    add_pp r2.y, r2.y, -c61.z
    mul_sat_pp r0.w, r0.w, r2.y
    mad_pp r2.y, r0.w, -c1.y, -c1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov r3.x, c1.x
    add r0.w, r3.x, -c61.x
    cmp_pp r0.w, r0.w, c1.x, r2.y
    add r2.y, -c60.z, c60.w
    rcp r2.y, r2.y
    mul_sat r2.x, r2.y, r2.x
    add_pp r2.x, -r2.x, c1.x
    cmp_pp r2.x, -c61.x, r3.x, r2.x
    mul_pp r0.w, r0.w, r2.x
    add r2.x, -c52.z, c52.w
    rcp r2.x, r2.x
    add r2.yzw, -c50.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c52.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c1.x
    add r3.x, -c48.z, c48.w
    rcp r3.x, r3.x
    add r3.yzw, -c46.xxyz, v1.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c48.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c1.x
    add r4.x, -c40.z, c40.w
    rcp r4.x, r4.x
    add r4.yzw, -c38.xxyz, v1.xxyz
    dp3 r5.x, r4.yzww, r4.yzww
    rsq r5.x, r5.x
    rcp r5.y, r5.x
    mul_pp r4.yzw, r4, r5.x
    add r5.x, r5.y, -c40.z
    mul_sat r4.x, r4.x, r5.x
    add_pp r4.x, -r4.x, c1.x
    add r5.x, -c44.z, c44.w
    rcp r5.x, r5.x
    add r5.yzw, -c42.xxyz, v1.xxyz
    dp3 r6.x, r5.yzww, r5.yzww
    rsq r6.x, r6.x
    rcp r6.y, r6.x
    mul_pp r5.yzw, r5, r6.x
    add r6.x, r6.y, -c44.z
    mul_sat r5.x, r5.x, r6.x
    add_pp r5.x, -r5.x, c1.x
    nrm_pp r6.xyz, v2
    dp3_pp r6.w, r6, -r5.yzww
    mul_pp r7.xyz, r6.w, c43
    cmp_pp r7.xyz, r6.w, r7, c0.w
    mul_pp r7.xyz, r5.x, r7
    dp3_pp r6.w, r6, -r4.yzww
    mul_pp r8.xyz, r6.w, c39
    cmp_pp r8.xyz, r6.w, r8, c0.w
    mad_pp r7.xyz, r4.x, r8, r7
    dp3_pp r6.w, r6, -r3.yzww
    mul_pp r8.xyz, r6.w, c47
    cmp_pp r8.xyz, r6.w, r8, c0.w
    mad_pp r7.xyz, r3.x, r8, r7
    dp3_pp r6.w, r6, -r2.yzww
    mul_pp r8.xyz, r6.w, c51
    cmp_pp r8.xyz, r6.w, r8, c0.w
    mad_pp r7.xyz, r2.x, r8, r7
    dp3_pp r6.w, r6, -c10
    mul r8.xyz, r6.w, c36
    mul_pp r8.xyz, r1.x, r8
    cmp_pp r8.xyz, r6.w, r8, c0.w
    add_pp r7.xyz, r7, r8
    mul_pp r8.xyz, c58.w, c58
    dp3_pp r6.w, r6, -r1.yzww
    mul_pp r8.xyz, r6.w, r8
    cmp_pp r8.xyz, r6.w, r8, c0.w
    mad_pp r7.xyz, r0.w, r8, r7
    add_pp r0.xyz, r0, r7
    mul_pp r0.xyz, r0, c16
    add_pp r7.xyz, c22, -v1
    dp3_pp r6.w, r7, r7
    rsq_pp r6.w, r6.w
    mad_pp r5.yzw, r7.xxyz, r6.w, -r5
    nrm_pp r8.xyz, r5.yzww
    dp3_sat_pp r5.y, r8, r6
    mov_pp r8.xy, c2
    mul_pp r5.zw, r8.xyxy, c20.xyyz
    max_pp r7.w, r5.z, c1.x
    min r5.z, r7.w, c2.z
    pow r7.w, r5.y, r5.z
    mul_pp r8.xyz, r5.w, c43
    mul_pp r8.xyz, r7.w, r8
    mul_pp r8.xyz, r5.x, r8
    mad_pp r4.yzw, r7.xxyz, r6.w, -r4
    nrm_pp r9.xyz, r4.yzww
    dp3_sat_pp r4.y, r9, r6
    pow r7.w, r4.y, r5.z
    mul_pp r4.yzw, r5.w, c39.xxyz
    mul_pp r4.yzw, r7.w, r4
    mad_pp r4.xyz, r4.x, r4.yzww, r8
    mad_pp r3.yzw, r7.xxyz, r6.w, -r3
    nrm_pp r8.xyz, r3.yzww
    dp3_sat_pp r3.y, r8, r6
    pow r4.w, r3.y, r5.z
    mul_pp r3.yzw, r5.w, c47.xxyz
    mul_pp r3.yzw, r4.w, r3
    mad_pp r3.xyz, r3.x, r3.yzww, r4
    mad_pp r2.yzw, r7.xxyz, r6.w, -r2
    nrm_pp r4.xyz, r2.yzww
    dp3_sat_pp r2.y, r4, r6
    pow r3.w, r2.y, r5.z
    mul_pp r2.yzw, r5.w, c51.xxyz
    mul_pp r2.yzw, r3.w, r2
    mad_pp r2.xyz, r2.x, r2.yzww, r3
    mul_pp r3.xyz, r5.w, c37
    mad_pp r4.xyz, r7, r6.w, -c10
    mad_pp r1.yzw, r7.xxyz, r6.w, -r1
    nrm_pp r7.xyz, r1.yzww
    dp3_sat_pp r1.y, r7, r6
    pow r2.w, r1.y, r5.z
    nrm_pp r7.xyz, r4
    dp3_sat_pp r1.y, r7, r6
    pow r3.w, r1.y, r5.z
    mul_pp r1.yzw, r3.w, r3.xxyz
    mad_pp r1.xyz, r1.yzww, r1.x, r2
    mul_pp r2.xyz, c59.w, c59
    mul_pp r2.xyz, r5.w, r2
    mul_pp r2.xyz, r2.w, r2
    mad_pp r1.xyz, r0.w, r2, r1
    mul_pp r1.xyz, r1, c18
    mul_pp r1.xyz, r1, v2.w
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0.w, r0.w, v5.w
    mul_pp r1.w, r0.w, c21.x
    mul r2, r6.y, c91
    mad r2, r6.x, c90, r2
    mad r2, r6.z, c92, r2
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c3, c3.x
    texld_pp r2, r2, s3
    mad_pp r0.xyz, r2, c17, r0
    mul_pp r1.xyz, r0, v5
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.w
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 217 instruction slots used (4 texture, 213 arithmetic)
