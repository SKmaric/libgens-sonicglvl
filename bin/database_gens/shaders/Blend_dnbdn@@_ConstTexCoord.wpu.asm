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
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
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
//   sampler2D sampBlend;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgGlobalLight_Diffuse     c36      1
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
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampNrm0                   s4       1
//   sampNrm1                   s5       1
//   sampBlend                  s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 4
    def c1, 2, -1, 1, 0
    def c2, -2, 3, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s10
    dcl_2d s13
    add r0.x, -c44.z, c44.w
    rcp r0.x, r0.x
    add r0.yzw, -c42.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    rcp r1.y, r1.x
    mul_pp r0.yzw, r0, r1.x
    add r1.x, r1.y, -c44.z
    mul_sat r0.x, r0.x, r1.x
    add_pp r0.x, -r0.x, c1.z
    nrm_pp r1.xyz, v7
    texld_pp r2, v0, s4
    texld_pp r3, v0, s5
    texld_pp r4, v0, s6
    lrp_pp r5.yzw, r4.x, r3.xxyw, r2.xxyw
    mul_pp r5.x, r5.w, r5.y
    mad_pp r2.xy, r5.xzzw, c1.x, c1.y
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v6
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_pp r1.w, r2, -r2, c1.z
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r2.xyz, v2
    mad_pp r1.xyz, r1.w, r2, r1
    dp3_pp r0.y, r1, -r0.yzww
    mul_pp r2.xyz, r0.y, c43
    cmp_pp r0.yzw, r0.y, r2.xxyz, c1.w
    mul_pp r0.xyz, r0.yzww, r0.x
    add r0.w, -c40.z, c40.w
    rcp r0.w, r0.w
    add r2.xyz, -c38, v1
    dp3 r1.w, r2, r2
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    dp3_pp r1.w, r1, -r2
    add r2.x, r2.w, -c40.z
    mul_sat r0.w, r0.w, r2.x
    add_pp r0.w, -r0.w, c1.z
    mul_pp r2.xyz, r1.w, c39
    cmp_pp r2.xyz, r1.w, r2, c1.w
    mad_pp r0.xyz, r0.w, r2, r0
    add r0.w, -c48.z, c48.w
    rcp r0.w, r0.w
    add r2.xyz, -c46, v1
    dp3 r1.w, r2, r2
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    dp3_pp r1.w, r1, -r2
    add r2.x, r2.w, -c48.z
    mul_sat r0.w, r0.w, r2.x
    add_pp r0.w, -r0.w, c1.z
    mul_pp r2.xyz, r1.w, c47
    cmp_pp r2.xyz, r1.w, r2, c1.w
    mad_pp r0.xyz, r0.w, r2, r0
    add r0.w, -c52.z, c52.w
    rcp r0.w, r0.w
    add r2.xyz, -c50, v1
    dp3 r1.w, r2, r2
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    dp3_pp r1.w, r1, -r2
    add r2.x, r2.w, -c52.z
    mul_sat r0.w, r0.w, r2.x
    add_pp r0.w, -r0.w, c1.z
    mul_pp r2.xyz, r1.w, c51
    cmp_pp r2.xyz, r1.w, r2, c1.w
    mad_pp r0.xyz, r0.w, r2, r0
    dp3_pp r0.w, r1, -c10
    mul r2.xyz, r0.w, c36
    max r1.w, v3.z, c1.w
    add r2.w, r1.w, -v3.w
    cmp r3.z, r2.w, c1.w, r1.w
    mov r3.xyw, v3
    texldp_pp r3, r3, s13
    max r1.w, v4.z, c1.w
    add r2.w, r1.w, -v4.w
    cmp r5.z, r2.w, c1.w, r1.w
    mov r5.xyw, v4
    texldp_pp r5, r5, s7
    min_pp r1.w, r5.x, r3.x
    lrp_pp r2.w, v5.z, c1.z, r5.x
    lrp_pp r3.x, v5.z, c1.z, r1.w
    rcp r1.w, v3.w
    mul r3.yz, r1.w, v3.xxyw
    mad r3.yz, r3, c1.x, c1.y
    abs_sat r3.yz, r3
    add_sat r3.yz, r3, -c65.x
    mul r3.yz, r3, c65.y
    max r1.w, r3.y, r3.z
    lrp_pp r4.y, r1.w, c1.z, r3.x
    lrp_pp r3.x, r1.w, c1.z, r2.w
    texld_pp r5, v0.zwzw, s10
    mul_pp r1.w, r4.y, r5.w
    mul_pp r2.xyz, r1.w, r2
    cmp_pp r2.xyz, r0.w, r2, c1.w
    add_pp r0.xyz, r0, r2
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r2.xyz, -c22, v1
    dp3 r1.w, r2, r2
    rsq r1.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    rcp r1.w, r1.w
    add r1.w, r1.w, -c60.z
    dp3_pp r2.w, r2, c23
    dp3_pp r1.x, r1, -r2
    add_pp r1.y, r2.w, -c61.z
    mul_sat_pp r0.w, r0.w, r1.y
    mad_pp r1.y, r0.w, c2.x, c2.y
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r1.y
    pow_sat_pp r1.y, r0.w, c61.w
    mov_pp r1.z, c1.z
    add r0.w, r1.z, -c61.x
    cmp_pp r0.w, r0.w, c1.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.y, r1.y, r1.w
    add_pp r1.y, -r1.y, c1.z
    cmp_pp r1.y, -c61.x, r1.z, r1.y
    mul_pp r0.w, r0.w, r1.y
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r1.x, r1
    cmp_pp r1.xyz, r1.x, r1.yzww, c1.w
    mad_pp r0.xyz, r0.w, r1, r0
    mul_pp r1.xyz, r5, r5
    dp3_pp r0.w, r1, c0
    mad_pp r1.xyz, r5, r5, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.x, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    texld_pp r2, v0, s1
    lrp_pp r3, r4.x, r2, r1
    mul_pp r0.xyz, r0, r3
    mul_pp r0.w, r3.w, c16.w
    mul_pp r0, r0, v8
    mul_pp r0, r0, c89
    min_pp r1, r0, c0.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 160 instruction slots used (8 texture, 152 arithmetic)
