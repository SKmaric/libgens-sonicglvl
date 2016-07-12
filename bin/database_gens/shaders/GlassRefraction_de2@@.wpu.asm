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
//   sampler2D g_FramebufferSampler;
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
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
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
//   mrgTexcoordIndex                      c26      1
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
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   mrgGlassRefractionParam               c150     1
//   sampDif                               s0       1
//   sampEnv                               s1       1
//   g_GISampler                           s10      1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 1, 0, -1
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 2, -2, -1, 3
    def c3, 500, 5, -0.707106769, 4
    def c4, 0, 1, 2, 3
    def c5, 0.5, -0.5, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s10
    dcl_2d s11
    dcl_2d s13
    rcp r0.x, v4.w
    mul r0.xy, r0.x, v4
    mad r0.xy, r0, c2.x, c2.z
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v4.z, c4.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c4.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v5.z, c4.y, r0.x
    lrp_pp r0.x, r1.x, c4.y, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c1
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r0.yzw, r0, c70.xxyz
    mul r1.x, r0.x, r1.w
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
    mad_pp r2.y, r0.w, c2.y, c2.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov r3.xy, c4
    add r0.w, r3.y, -c61.x
    cmp_pp r0.w, r0.w, c4.y, r2.y
    add r2.y, -c60.z, c60.w
    rcp r2.y, r2.y
    mul_sat r2.x, r2.y, r2.x
    add_pp r2.x, -r2.x, c4.y
    cmp_pp r2.x, -c61.x, r3.y, r2.x
    mul_pp r0.w, r0.w, r2.x
    add r2.x, -c52.z, c52.w
    rcp r2.x, r2.x
    add r2.yzw, -c50.xxyz, v2.xxyz
    dp3 r3.z, r2.yzww, r2.yzww
    rsq r3.z, r3.z
    rcp r3.w, r3.z
    mul_pp r2.yzw, r2, r3.z
    add r3.z, r3.w, -c52.z
    mul_sat r2.x, r2.x, r3.z
    add_pp r2.x, -r2.x, c4.y
    add r3.z, -c48.z, c48.w
    rcp r3.z, r3.z
    add r4.xyz, -c46, v2
    dp3 r3.w, r4, r4
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r4.xyz, r3.w, r4
    add r3.w, r4.w, -c48.z
    mul_sat r3.z, r3.z, r3.w
    add r3.w, -c40.z, c40.w
    rcp r3.w, r3.w
    add r5.xyz, -c38, v2
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c40.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.zw, -r3, c4.y
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r6.xyz, -c42, v2
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r6.xyz, r5.w, r6
    add r5.w, r6.w, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c4.y
    nrm r7.xyz, v3
    dp3_pp r5.w, r7, -r6
    mul_pp r8.xyz, r5.w, c43
    cmp_pp r8.xyz, r5.w, r8, c4.x
    mul_pp r8.xyz, r4.w, r8
    dp3_pp r5.w, r7, -r5
    mul_pp r9.xyz, r5.w, c39
    cmp_pp r9.xyz, r5.w, r9, c4.x
    mad_pp r8.xyz, r3.w, r9, r8
    dp3_pp r5.w, r7, -r4
    mul_pp r9.xyz, r5.w, c47
    cmp_pp r9.xyz, r5.w, r9, c4.x
    mad_pp r8.xyz, r3.z, r9, r8
    dp3_pp r5.w, r7, -r2.yzww
    mul_pp r9.xyz, r5.w, c51
    cmp_pp r9.xyz, r5.w, r9, c4.x
    mad_pp r8.xyz, r2.x, r9, r8
    dp3_pp r5.w, r7, -c10
    mul r9.xyz, r5.w, c36
    mul_pp r9.xyz, r1.x, r9
    cmp_pp r9.xyz, r5.w, r9, c4.x
    add_pp r8.xyz, r8, r9
    mul_pp r9.xyz, c58.w, c58
    dp3_pp r5.w, r7, -r1.yzww
    mul_pp r9.xyz, r5.w, r9
    cmp_pp r9.xyz, r5.w, r9, c4.x
    mad_pp r8.xyz, r0.w, r9, r8
    add_pp r0.xyz, r0, r8
    mul_pp r0.xyz, r0, c16
    frc r5.w, c26.x
    cmp r6.w, -r5.w, c4.x, c4.y
    add r5.w, -r5.w, c26.x
    cmp r3.x, c26.x, r3.x, r6.w
    add r3.x, r3.x, r5.w
    add r8, r3.x, -c4
    cmp r9.xy, -r8_abs.x, v0, c4.x
    cmp r8.xy, -r8_abs.y, v0.zwzw, r9
    cmp r8.xy, -r8_abs.z, v1, r8
    cmp r8.xy, -r8_abs.w, v1.zwzw, r8
    texld_pp r8, r8, s0
    add r9.xy, c0.x, vPos
    mul r9.xy, r9, c24.zwzw
    mov r10.yzw, c0
    mad r10, c24.zzww, r10.yzzw, r10.zywz
    mad r9.xy, r9, c2, r10
    add_pp r9.xy, r10.zwzw, r9
    mul r3.x, c150.x, c150.x
    mul_pp r10.xyz, r7.y, c91
    mad_pp r10.xyz, r7.x, c90, r10
    mad_pp r10.xyz, r7.z, c92, r10
    mad r5.w, r10.z, -r10.z, c4.y
    mad r3.x, r3.x, -r5.w, c4.y
    cmp r5.w, r3.x, c4.y, c4.x
    mul r3.x, r3.x, r5.w
    mul r5.w, r5.w, c150.x
    rsq r3.x, r3.x
    rcp r3.x, r3.x
    mad r3.x, r5.w, -r10.z, r3.x
    mul_pp r9.zw, r10.xyxy, r3.x
    mad_pp r9.xy, r9.zwzw, c3.z, r9
    mad r9.xy, r9, c5, c5.x
    texld_pp r9, r9, s11
    mad r0.xyz, r0, r8, -r9
    mul_pp r3.x, r8.w, c16.w
    mad_pp r5.w, c16.w, -r8.w, r3.y
    mad_pp r0.xyz, r3.x, r0, r9
    add_pp r8.xyz, c22, -v2
    dp3_pp r3.x, r8, r8
    rsq_pp r3.x, r3.x
    mad_pp r6.xyz, r8, r3.x, -r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r6.x, r9, r7
    mov_pp r9.xy, c3
    mul_pp r6.yz, r9.xxyw, c20
    max_pp r7.w, r6.y, c4.y
    min r6.y, r7.w, c1.w
    pow r7.w, r6.x, r6.y
    mul_pp r9.xyz, r6.z, c43
    mul_pp r9.xyz, r7.w, r9
    mul_pp r9.xyz, r4.w, r9
    mul_pp r10.xyz, r6.z, c39
    mad_pp r5.xyz, r8, r3.x, -r5
    nrm_pp r11.xyz, r5
    dp3_sat_pp r4.w, r11, r7
    pow r5.x, r4.w, r6.y
    mul_pp r5.xyz, r5.x, r10
    mad_pp r5.xyz, r3.w, r5, r9
    mul_pp r9.xyz, r6.z, c47
    mad_pp r4.xyz, r8, r3.x, -r4
    nrm_pp r10.xyz, r4
    dp3_sat_pp r3.w, r10, r7
    pow r4.x, r3.w, r6.y
    mul_pp r4.xyz, r4.x, r9
    mad_pp r4.xyz, r3.z, r4, r5
    mul_pp r5.xyz, r6.z, c51
    mad_pp r2.yzw, r8.xxyz, r3.x, -r2
    nrm_pp r9.xyz, r2.yzww
    dp3_sat_pp r2.y, r9, r7
    pow r3.z, r2.y, r6.y
    mul_pp r2.yzw, r3.z, r5.xxyz
    mad_pp r2.xyz, r2.x, r2.yzww, r4
    mul_pp r4.xyz, r6.z, c37
    mad_pp r5.xyz, r8, r3.x, -c10
    nrm_pp r9.xyz, r5
    dp3_sat_pp r2.w, r9, r7
    pow r3.z, r2.w, r6.y
    mul_pp r4.xyz, r3.z, r4
    mad_pp r2.xyz, r4, r1.x, r2
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r6.z, r4
    mad_pp r1.yzw, r8.xxyz, r3.x, -r1
    mul r3.xzw, r3.x, r8.xyyz
    nrm_pp r5.xyz, r1.yzww
    dp3_sat_pp r1.y, r5, r7
    pow r2.w, r1.y, r6.y
    mul_pp r1.yzw, r2.w, r4.xxyz
    mad_pp r1.yzw, r0.w, r1, r2.xxyz
    dp3 r0.w, -r3.xzww, r7
    add r0.w, r0.w, r0.w
    mad_pp r2.xyz, r7, -r0.w, -r3.xzww
    dp3_sat_pp r0.w, r7, r3.xzww
    add_pp r0.w, -r0.w, c4.y
    texld_pp r2, r2, s1
    mul r3.xzw, r2.xyyz, c63.x
    mad_pp r2.xyz, r3.xzww, r2.w, r2
    mul_pp r2.xyz, r5.w, r2
    mul r2.w, c64.z, c64.x
    mov r3.xz, c64
    mad r3.x, r3.x, -r3.z, r3.z
    mad_pp r1.x, r1.x, r3.x, r2.w
    mul_pp r2.xyz, r1.x, r2
    mad_pp r1.xyz, r1.yzww, c18, r2
    mul_pp r1.w, r0.w, r0.w
    mul_pp r1.w, r1.w, r1.w
    mul_pp r0.w, r0.w, r1.w
    lrp_pp r1.w, r0.w, r3.y, c62.x
    mul_pp r0.w, r1.w, c62.y
    mad_pp r0.xyz, r1, r0.w, r0
    mul_pp r0.xyz, r0, c89
    mov_pp r1.w, c89.w
    mul_pp r0.w, r1.w, c21.x
    min_pp r1, r0, c3.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 261 instruction slots used (5 texture, 256 arithmetic)
