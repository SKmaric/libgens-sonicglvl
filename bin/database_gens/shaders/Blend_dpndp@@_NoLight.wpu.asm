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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
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
//   mrgTexcoordIndex           c26      2
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
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
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 2, -1, -2, 3
    def c2, 500, 5, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s7
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
    mad_pp r1.y, r0.x, c1.z, c1.w
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
    frc r1.x, c27.x
    cmp r1.y, -r1.x, c3.x, c3.y
    add r1.x, -r1.x, c27.x
    cmp r1.y, c27.x, r2.x, r1.y
    add r1.x, r1.y, r1.x
    add r1, r1.x, -c3
    cmp r2.yz, -r1_abs.x, v0.xxyw, c3.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2.yzzw
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s4
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c1.x, c1.y
    nrm_pp r3.xyz, v8
    mul_pp r2.yzw, r1.y, r3.xxyz
    nrm_pp r3.xyz, v7
    mad_pp r2.yzw, r1.x, r3.xxyz, r2
    dp2add_pp r1.x, r1, -r1, c3.y
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r3.xyz, v3
    mad_pp r1.xyz, r1.x, r3, r2.yzww
    dp3_pp r1.w, r1, -c10
    mul r2.yzw, r1.w, c36.xxyz
    max r3.x, v4.z, c3.x
    add r3.y, r3.x, -v4.w
    cmp r3.z, r3.y, c3.x, r3.x
    mov r3.xyw, v4
    texldp_pp r3, r3, s13
    max r3.y, v5.z, c3.x
    add r3.z, r3.y, -v5.w
    cmp r4.z, r3.z, c3.x, r3.y
    mov r4.xyw, v5
    texldp_pp r4, r4, s7
    min_pp r5.x, r4.x, r3.x
    lrp_pp r3.x, v6.z, c3.y, r4.x
    lrp_pp r3.y, v6.z, c3.y, r5.x
    rcp r3.z, v4.w
    mul r3.zw, r3.z, v4.xyxy
    mad r3.zw, r3, c1.x, c1.y
    abs_sat r3.zw, r3
    add_sat r3.zw, r3, -c65.x
    mul r3.zw, r3, c65.y
    max r4.x, r3.z, r3.w
    lrp_pp r5.x, r4.x, c3.y, r3.y
    lrp_pp r5.y, r4.x, c3.y, r3.x
    texld_pp r3, v0.zwzw, s10
    mul_pp r3.w, r5.x, r3.w
    mul_pp r2.yzw, r2, r3.w
    cmp_pp r2.yzw, r1.w, r2, c3.x
    dp3_pp r1.w, r1, -r0.yzww
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r1.w, r4
    cmp_pp r4.xyz, r1.w, r4, c3.x
    mad_pp r2.yzw, r0.x, r4.xxyz, r2
    mul_pp r4.xyz, r3, r3
    dp3_pp r1.w, r4, c0
    mad_pp r3.xyz, r3, r3, -r1.w
    mad_sat_pp r3.xyz, r3, c71.w, r1.w
    mul_pp r3.xyz, r3, c70
    mul_pp r4.xyz, r3, c17
    mul r4.xyz, r4, c70.w
    mad r3.xyz, r3, c17, -r4
    mad_pp r3.xyz, r5.y, r3, r4
    add_pp r2.yzw, r2, r3.xxyz
    mul_pp r2.yzw, r2, c16.xxyz
    add_pp r3.xyz, c22, -v2
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    mad_pp r0.yzw, r3.xxyz, r1.w, -r0
    mad_pp r3.xyz, r3, r1.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r1.w, r4, r1
    nrm_pp r3.xyz, r0.yzww
    dp3_sat_pp r0.y, r3, r1
    frc r4, c26
    cmp r5, -r4, c3.x, c3.y
    add r4, -r4, c26
    cmp r5, c26, r2.x, r5
    add r4, r4, r5
    add r5, r4.z, -c3
    cmp r0.zw, -r5_abs.x, v0.xyxy, c3.x
    cmp r0.zw, -r5_abs.y, v0, r0
    cmp r0.zw, -r5_abs.z, v1.xyxy, r0
    cmp r0.zw, -r5_abs.w, v1, r0
    texld_pp r5, r0.zwzw, s2
    add r6, r4.w, -c3
    cmp r0.zw, -r6_abs.x, v0.xyxy, c3.x
    cmp r0.zw, -r6_abs.y, v0, r0
    cmp r0.zw, -r6_abs.z, v1.xyxy, r0
    cmp r0.zw, -r6_abs.w, v1, r0
    texld_pp r6, r0.zwzw, s3
    lrp_pp r0.z, v9.x, r6.x, r5.x
    mul_pp r0.zw, r0.z, c20.xyyz
    mul_pp r0.zw, r0, c2.xyxy
    max_pp r1.x, r0.z, c3.y
    min r0.z, r1.x, c0.w
    pow r1.x, r0.y, r0.z
    pow r2.x, r1.w, r0.z
    mul_pp r1.yzw, c59.w, c59.xxyz
    mul_pp r1.yzw, r0.w, r1
    mul_pp r0.yzw, r0.w, c37.xxyz
    mul_pp r0.yzw, r2.x, r0
    mul_pp r1.xyz, r1.x, r1.yzww
    mul_pp r1.xyz, r0.x, r1
    mad_pp r0.xyz, r0.yzww, r3.w, r1
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v3.w
    add r1, r4.x, -c3
    add r3, r4.y, -c3
    cmp r4.xy, -r1_abs.x, v0, c3.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r4
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    cmp r4.xy, -r3_abs.x, v0, c3.x
    cmp r3.xy, -r3_abs.y, v0.zwzw, r4
    cmp r3.xy, -r3_abs.z, v1, r3
    cmp r3.xy, -r3_abs.w, v1.zwzw, r3
    texld_pp r3, r3, s1
    lrp_pp r4, v9.x, r3, r1
    mad_pp r0.xyz, r2.yzww, r4, r0
    mul_pp r1.x, r4.w, c16.w
    mul_pp r0.w, r1.x, v9.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 170 instruction slots used (8 texture, 162 arithmetic)
