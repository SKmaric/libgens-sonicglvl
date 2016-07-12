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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
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
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampPower0;
//   sampler2D sampPower1;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgLocalLight0_Position    c38      1
//   mrgLocalLight0_Color       c39      1
//   mrgLocalLight0_Range       c40      1
//   mrgLocalLight1_Position    c42      1
//   mrgLocalLight1_Color       c43      1
//   mrgLocalLight1_Range       c44      1
//   mrgLocalLight2_Position    c46      1
//   mrgLocalLight2_Color       c47      1
//   mrgLocalLight2_Range       c48      1
//   mrgLocalLight3_Position    c50      1
//   mrgLocalLight3_Color       c51      1
//   mrgLocalLight3_Range       c52      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampPower0                 s2       1
//   sampPower1                 s3       1
//   sampNrm0                   s4       1
//   sampNrm1                   s5       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 2, -1, 1, 0
    def c2, -2, 3, 500, 5
    def c3, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s7
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v3.w
    mul r0.xy, r0.x, v3
    mad r0.xy, r0, c1.x, c1.y
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v4.z, c1.w
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c1.w, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s7
    lrp_pp r1.y, v5.z, c1.z, r0.x
    lrp_pp r0.y, r1.x, c1.z, r1.y
    texld_pp r2, v0.zwzw, s10
    mul_pp r1.yzw, r2.xxyz, r2.xxyz
    dp3_pp r0.z, r1.yzww, c0
    mad_pp r1.yzw, r2.xxyz, r2.xxyz, -r0.z
    mad_sat_pp r1.yzw, r1, c71.w, r0.z
    mul_pp r1.yzw, r1, c70.xxyz
    mul_pp r2.xyz, r1.yzww, c17
    mul r2.xyz, r2, c70.w
    mad r1.yzw, r1, c17.xxyz, -r2.xxyz
    mad_pp r0.yzw, r0.y, r1, r2.xxyz
    add r1.y, -c40.z, c40.w
    rcp r1.y, r1.y
    add r2.xyz, -c38, v1
    dp3 r1.z, r2, r2
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.xyz, r1.z, r2
    add r1.z, r1.w, -c40.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c44.z, c44.w
    rcp r1.z, r1.z
    add r3.xyz, -c42, v1
    dp3 r1.w, r3, r3
    rsq r1.w, r1.w
    rcp r3.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    add r1.w, r3.w, -c44.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.yz, -r1, c1.z
    nrm_pp r4.xyz, v7
    texld_pp r5, v0, s4
    texld_pp r6, v0, s5
    lrp_pp r7.yzw, v8.x, r6.xxyw, r5.xxyw
    mul_pp r7.x, r7.w, r7.y
    mad_pp r5.xy, r7.xzzw, c1.x, c1.y
    mul_pp r4.xyz, r4, r5.y
    nrm_pp r6.xyz, v6
    mad_pp r4.xyz, r5.x, r6, r4
    dp2add_pp r1.w, r5, -r5, c1.z
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r5.xyz, v2
    mad_pp r4.xyz, r1.w, r5, r4
    dp3_pp r1.w, r4, -r3
    mul_pp r5.xyz, r1.w, c43
    cmp_pp r5.xyz, r1.w, r5, c1.w
    mul_pp r5.xyz, r1.z, r5
    dp3_pp r1.w, r4, -r2
    mul_pp r6.xyz, r1.w, c39
    cmp_pp r6.xyz, r1.w, r6, c1.w
    mad_pp r5.xyz, r1.y, r6, r5
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r6.xyz, -c46, v1
    dp3 r3.w, r6, r6
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r6.xyz, r3.w, r6
    add r3.w, r4.w, -c48.z
    mul_sat r1.w, r1.w, r3.w
    add_pp r1.w, -r1.w, c1.z
    dp3_pp r3.w, r4, -r6
    mul_pp r7.xyz, r3.w, c47
    cmp_pp r7.xyz, r3.w, r7, c1.w
    mad_pp r5.xyz, r1.w, r7, r5
    add r3.w, -c52.z, c52.w
    rcp r3.w, r3.w
    add r7.xyz, -c50, v1
    dp3 r4.w, r7, r7
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r7.xyz, r4.w, r7
    add r4.w, r5.w, -c52.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.w, -r3.w, c1.z
    dp3_pp r4.w, r4, -r7
    mul_pp r8.xyz, r4.w, c51
    cmp_pp r8.xyz, r4.w, r8, c1.w
    mad_pp r5.xyz, r3.w, r8, r5
    max r4.w, v3.z, c1.w
    add r5.w, r4.w, -v3.w
    cmp r8.z, r5.w, c1.w, r4.w
    mov r8.xyw, v3
    texldp_pp r8, r8, s13
    min_pp r4.w, r0.x, r8.x
    lrp_pp r0.x, v5.z, c1.z, r4.w
    lrp_pp r4.w, r1.x, c1.z, r0.x
    mul_pp r0.x, r2.w, r4.w
    dp3_pp r1.x, r4, -c10
    mul r8.xyz, r1.x, c36
    mul_pp r8.xyz, r0.x, r8
    cmp_pp r8.xyz, r1.x, r8, c1.w
    add_pp r5.xyz, r5, r8
    add_pp r1.x, -c61.z, c61.y
    rcp_pp r1.x, r1.x
    add r8.xyz, -c22, v1
    dp3 r2.w, r8, r8
    rsq r2.w, r2.w
    mul_pp r8.xyz, r2.w, r8
    rcp r2.w, r2.w
    add r2.w, r2.w, -c60.z
    dp3_pp r4.w, r8, c23
    add_pp r4.w, r4.w, -c61.z
    mul_sat_pp r1.x, r1.x, r4.w
    mad_pp r4.w, r1.x, c2.x, c2.y
    mul_pp r1.x, r1.x, r1.x
    mul_pp r1.x, r1.x, r4.w
    pow_sat_pp r4.w, r1.x, c61.w
    mov_pp r9.z, c1.z
    add r1.x, r9.z, -c61.x
    cmp_pp r1.x, r1.x, c1.z, r4.w
    add r4.w, -c60.z, c60.w
    rcp r4.w, r4.w
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.w, -r2.w, c1.z
    cmp_pp r2.w, -c61.x, r9.z, r2.w
    mul_pp r1.x, r1.x, r2.w
    dp3_pp r2.w, r4, -r8
    mul_pp r9.xyz, c58.w, c58
    mul_pp r9.xyz, r2.w, r9
    cmp_pp r9.xyz, r2.w, r9, c1.w
    mad_pp r5.xyz, r1.x, r9, r5
    add_pp r0.yzw, r0, r5.xxyz
    mul_pp r0.yzw, r0, c16.xxyz
    add_pp r5.xyz, c22, -v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    mad_pp r3.xyz, r5, r2.w, -r3
    nrm_pp r9.xyz, r3
    dp3_sat_pp r3.x, r9, r4
    texld_pp r9, v0, s2
    texld_pp r10, v0, s3
    lrp_pp r3.y, v8.x, r10.x, r9.x
    mul_pp r3.yz, r3.y, c20
    mul_pp r3.yz, r3, c2.xzww
    max_pp r4.w, r3.y, c1.z
    min r3.y, r4.w, c0.w
    pow r4.w, r3.x, r3.y
    mul_pp r9.xyz, r3.z, c43
    mul_pp r9.xyz, r4.w, r9
    mul_pp r9.xyz, r1.z, r9
    mad_pp r2.xyz, r5, r2.w, -r2
    nrm_pp r10.xyz, r2
    dp3_sat_pp r1.z, r10, r4
    pow r2.x, r1.z, r3.y
    mul_pp r10.xyz, r3.z, c39
    mul_pp r2.xyz, r2.x, r10
    mad_pp r2.xyz, r1.y, r2, r9
    mad_pp r6.xyz, r5, r2.w, -r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r1.y, r9, r4
    pow r4.w, r1.y, r3.y
    mul_pp r6.xyz, r3.z, c47
    mul_pp r6.xyz, r4.w, r6
    mad_pp r1.yzw, r1.w, r6.xxyz, r2.xxyz
    mad_pp r2.xyz, r5, r2.w, -r7
    nrm_pp r6.xyz, r2
    dp3_sat_pp r2.x, r6, r4
    pow r4.w, r2.x, r3.y
    mul_pp r2.xyz, r3.z, c51
    mul_pp r2.xyz, r4.w, r2
    mad_pp r1.yzw, r3.w, r2.xxyz, r1
    mad_pp r2.xyz, r5, r2.w, -c10
    mad_pp r5.xyz, r5, r2.w, -r8
    nrm_pp r6.xyz, r5
    dp3_sat_pp r2.w, r6, r4
    pow r4.w, r2.w, r3.y
    nrm_pp r5.xyz, r2
    dp3_sat_pp r2.x, r5, r4
    pow r4.x, r2.x, r3.y
    mul_pp r2.xyz, r3.z, c37
    mul_pp r2.xyz, r4.x, r2
    mad_pp r1.yzw, r2.xxyz, r0.x, r1
    mul_pp r2.xyz, c59.w, c59
    mul_pp r2.xyz, r3.z, r2
    mul_pp r2.xyz, r4.w, r2
    mad_pp r1.xyz, r1.x, r2, r1.yzww
    mul_pp r1.xyz, r1, c18
    mul_pp r1.xyz, r1, v2.w
    texld_pp r2, v0, s0
    texld_pp r3, v0, s1
    lrp_pp r4, v8.x, r3, r2
    mad_pp r0.xyz, r0.yzww, r4, r1
    mul_pp r1.x, r4.w, c16.w
    mul_pp r0.w, r1.x, v8.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 237 instruction slots used (9 texture, 228 arithmetic)
