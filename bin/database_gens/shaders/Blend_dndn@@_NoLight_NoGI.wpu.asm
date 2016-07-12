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
//   float4 mrgTexcoordIndex[4];
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
//   mrgTexcoordIndex           c26      2
//   mrgGlobalLight_Diffuse     c36      1
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
    def c0, 2, -1, 0.5, -3
    def c1, 4, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s5
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
    mad_pp r1.y, r0.x, -c0.x, -c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c2
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c2.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c2.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c2.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c2.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c2.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c2.y, r3.x
    lrp_pp r1.y, v6.z, c2.y, r2.y
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c0.x, c0.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.y, r1.z, r1.w
    lrp_pp r3.x, r2.y, c2.y, r1.y
    lrp_pp r3.y, r2.y, c2.y, r1.x
    mul_pp r1.x, r3.x, c77.w
    frc r1.yz, c27.xxyw
    cmp r2.yz, -r1, c2.x, c2.y
    add r1.yz, -r1, c27.xxyw
    cmp r2.yz, c27.xxyw, r2.x, r2
    add r1.yz, r1, r2
    add r4, r1.y, -c2
    add r5, r1.z, -c2
    cmp r1.yz, -r4_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r4_abs.y, v0.xzww, r1
    cmp r1.yz, -r4_abs.z, v1.xxyw, r1
    cmp r1.yz, -r4_abs.w, v1.xzww, r1
    texld_pp r4, r1.yzzw, s4
    cmp r1.yz, -r5_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r5_abs.y, v0.xzww, r1
    cmp r1.yz, -r5_abs.z, v1.xxyw, r1
    cmp r1.yz, -r5_abs.w, v1.xzww, r1
    texld_pp r5, r1.yzzw, s5
    lrp_pp r6.yzw, v9.x, r5.xxyw, r4.xxyw
    mul_pp r6.x, r6.w, r6.y
    mad_pp r1.yz, r6.xxzw, c0.x, c0.y
    nrm_pp r4.xyz, v8
    mul_pp r2.yzw, r1.z, r4.xxyz
    nrm_pp r4.xyz, v7
    mad_pp r2.yzw, r1.y, r4.xxyz, r2
    dp2add_pp r1.y, r1.yzzw, -r1.yzzw, c2.y
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    nrm_pp r4.xyz, v3
    mad_pp r1.yzw, r1.y, r4.xxyz, r2
    dp3_pp r2.y, r1.yzww, -c10
    mul r3.xzw, r2.y, c36.xyyz
    mul_pp r3.xzw, r1.x, r3
    cmp_pp r2.yzw, r2.y, r3.xxzw, c2.x
    dp3_pp r0.y, r1.yzww, -r0.yzww
    mul_pp r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r0.y, r3
    cmp_pp r0.yzw, r0.y, r3.xxzw, c2.x
    mad_pp r0.xyz, r0.x, r0.yzww, r2.yzww
    mad_pp r2.yzw, r1, c0.z, c0.z
    mul_pp r1.xyz, r1.yzww, r1.yzww
    mov r4.xyz, c79
    add r3.xzw, -r4.xyyz, c80.xyyz
    mad r3.xzw, r2.z, r3, c79.xyyz
    mul r3.xzw, r1.y, r3
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r4.xyz, r2.y, r4, c77
    mad_pp r1.xyw, r1.x, r4.xyzz, r3.xzzw
    mov r4.xyz, c81
    add r3.xzw, -r4.xyyz, c82.xyyz
    mad r2.yzw, r2.w, r3.xxzw, c81.xxyz
    mad_pp r1.xyz, r1.z, r2.yzww, r1.xyww
    mul_pp r2.yzw, r1.xxyz, c17.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.xyz, r1, c17, -r2.yzww
    mad_pp r1.xyz, r3.y, r1, r2.yzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    frc r1.xy, c26
    cmp r1.zw, -r1.xyxy, c2.x, c2.y
    add r1.xy, -r1, c26
    cmp r1.zw, c26.xyxy, r2.x, r1
    add r1.xy, r1.zwzw, r1
    add r2, r1.x, -c2
    add r1, r1.y, -c2
    cmp r3.xy, -r2_abs.x, v0, c2.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    cmp r3.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r3
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s1
    lrp_pp r3, v9.x, r1, r2
    mul_pp r0.xyz, r0, r3
    mul_pp r1.x, r3.w, c16.w
    mul_pp r0.w, r1.x, v9.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.x
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 140 instruction slots used (6 texture, 134 arithmetic)
