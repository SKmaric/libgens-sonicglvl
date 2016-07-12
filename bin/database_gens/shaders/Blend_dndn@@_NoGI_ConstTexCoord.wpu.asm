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
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
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
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      6
//   g_ForceAlphaColor          c89      1
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampNrm0                   s4       1
//   sampNrm1                   s5       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, -2, 3, 4
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s5
    dcl_2d s7
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
    add_pp r0.x, -r0.x, c0.z
    nrm_pp r1.xyz, v7
    texld_pp r2, v0, s4
    texld_pp r3, v0, s5
    lrp_pp r4.yzw, v8.x, r3.xxyw, r2.xxyw
    mul_pp r4.x, r4.w, r4.y
    mad_pp r2.xy, r4.xzzw, c0.x, c0.y
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v6
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_pp r1.w, r2, -r2, c0.z
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r2.xyz, v2
    mad_pp r1.xyz, r1.w, r2, r1
    dp3_pp r0.y, r1, -r0.yzww
    mul_pp r2.xyz, r0.y, c43
    cmp_pp r0.yzw, r0.y, r2.xxyz, c1.x
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
    add_pp r0.w, -r0.w, c0.z
    mul_pp r2.xyz, r1.w, c39
    cmp_pp r2.xyz, r1.w, r2, c1.x
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
    add_pp r0.w, -r0.w, c0.z
    mul_pp r2.xyz, r1.w, c47
    cmp_pp r2.xyz, r1.w, r2, c1.x
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
    add_pp r0.w, -r0.w, c0.z
    mul_pp r2.xyz, r1.w, c51
    cmp_pp r2.xyz, r1.w, r2, c1.x
    mad_pp r0.xyz, r0.w, r2, r0
    max r0.w, v3.z, c1.x
    add r1.w, r0.w, -v3.w
    cmp r2.z, r1.w, c1.x, r0.w
    mov r2.xyw, v3
    texldp_pp r2, r2, s13
    max r0.w, v4.z, c1.x
    add r1.w, r0.w, -v4.w
    cmp r3.z, r1.w, c1.x, r0.w
    mov r3.xyw, v4
    texldp_pp r3, r3, s7
    min_pp r0.w, r3.x, r2.x
    lrp_pp r1.w, v5.z, c0.z, r3.x
    lrp_pp r2.x, v5.z, c0.z, r0.w
    rcp r0.w, v3.w
    mul r2.yz, r0.w, v3.xxyw
    mad r2.yz, r2, c0.x, c0.y
    abs_sat r2.yz, r2
    add_sat r2.yz, r2, -c65.x
    mul r2.yz, r2, c65.y
    max r0.w, r2.y, r2.z
    lrp_pp r3.x, r0.w, c0.z, r2.x
    lrp_pp r2.x, r0.w, c0.z, r1.w
    mul_pp r0.w, r3.x, c77.w
    dp3_pp r1.w, r1, -c10
    mul r2.yzw, r1.w, c36.xxyz
    mul_pp r2.yzw, r0.w, r2
    cmp_pp r2.yzw, r1.w, r2, c1.x
    add_pp r0.xyz, r0, r2.yzww
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r2.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.w, r2.yzww, r2.yzww
    rsq r1.w, r1.w
    mul_pp r2.yzw, r1.w, r2
    rcp r1.w, r1.w
    add r1.w, r1.w, -c60.z
    dp3_pp r3.x, r2.yzww, c23
    dp3_pp r2.y, r1, -r2.yzww
    add_pp r2.z, r3.x, -c61.z
    mul_sat_pp r0.w, r0.w, r2.z
    mad_pp r2.z, r0.w, c1.y, c1.z
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.z
    pow_sat_pp r2.z, r0.w, c61.w
    mov_pp r3.z, c0.z
    add r0.w, r3.z, -c61.x
    cmp_pp r0.w, r0.w, c0.z, r2.z
    add r2.z, -c60.z, c60.w
    rcp r2.z, r2.z
    mul_sat r1.w, r1.w, r2.z
    add_pp r1.w, -r1.w, c0.z
    cmp_pp r1.w, -c61.x, r3.z, r1.w
    mul_pp r0.w, r0.w, r1.w
    mul_pp r3.xyz, c58.w, c58
    mul_pp r3.xyz, r2.y, r3
    cmp_pp r2.yzw, r2.y, r3.xxyz, c1.x
    mad_pp r0.xyz, r0.w, r2.yzww, r0
    mad_pp r2.yzw, r1.xxyz, c0.w, c0.w
    mul_pp r1.xyz, r1, r1
    mov r3.xyz, c79
    add r3.xyz, -r3, c80
    mad r3.xyz, r2.z, r3, c79
    mul r3.xyz, r1.y, r3
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r4.xyz, r2.y, r4, c77
    mad_pp r1.xyw, r1.x, r4.xyzz, r3.xyzz
    mov r3.xyz, c81
    add r3.xyz, -r3, c82
    mad r2.yzw, r2.w, r3.xxyz, c81.xxyz
    mad_pp r1.xyz, r1.z, r2.yzww, r1.xyww
    mul_pp r2.yzw, r1.xxyz, c17.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.xyz, r1, c17, -r2.yzww
    mad_pp r1.xyz, r2.x, r1, r2.yzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    texld_pp r2, v0, s1
    lrp_pp r3, v8.x, r2, r1
    mul_pp r0.xyz, r0, r3
    mul_pp r1.x, r3.w, c16.w
    mul_pp r0.w, r1.x, v8.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 167 instruction slots used (6 texture, 161 arithmetic)
