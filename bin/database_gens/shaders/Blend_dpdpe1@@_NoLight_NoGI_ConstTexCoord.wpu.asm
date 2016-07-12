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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampEnv;
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
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   mrgLuminanceRange          c63      1
//   mrgInShadowScale           c64      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      6
//   g_ForceAlphaColor          c89      1
//   g_MtxView                  c90      3
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampPower0                 s2       1
//   sampPower1                 s3       1
//   sampEnv                    s5       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.5, 0, 1, -2
    def c1, 1024, 0.5, -0.5, 4
    def c2, -2, 3, 500, 5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    max r0.x, v3.z, c0.y
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c0.y, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c0.y
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c0.y, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c0.z, r1.x
    lrp_pp r0.y, v5.z, c0.z, r2.x
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, -c0.w, -c0.z
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c0.z, r0.y
    lrp_pp r2.y, r1.x, c0.z, r0.x
    mul_pp r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v1
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, c2.x, c2.y
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov_pp r2.z, c0.z
    add r0.y, r2.z, -c61.x
    cmp_pp r0.y, r0.y, c0.z, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c0.z
    cmp_pp r0.z, -c61.x, r2.z, r0.z
    mul_pp r0.y, r0.y, r0.z
    mul_pp r2.xzw, c59.w, c59.xyyz
    texld_pp r3, v0, s2
    texld_pp r4, v0, s3
    lrp_pp r0.z, v6.x, r4.x, r3.x
    mul_pp r3.xy, r0.z, c20.yzzw
    mul_pp r3.xy, r3, c2.zwzw
    mul_pp r2.xzw, r2, r3.y
    max_pp r0.w, r3.x, c0.z
    mul_pp r3.xyz, r3.y, c37
    min r1.w, r0.w, c1.x
    add_pp r4.xyz, c22, -v1
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    mad_pp r5.xyz, r4, r0.w, -r1
    mad_pp r4.xyz, r4, r0.w, -c10
    nrm_pp r6.xyz, r4
    nrm_pp r4.xyz, r5
    nrm_pp r5.xyz, v2
    dp3_sat_pp r0.w, r4, r5
    pow r3.w, r0.w, r1.w
    mul_pp r2.xzw, r2, r3.w
    mul_pp r2.xzw, r0.y, r2
    dp3_sat_pp r0.w, r6, r5
    pow r3.w, r0.w, r1.w
    mul_pp r3.xyz, r3.w, r3
    mad_pp r2.xzw, r3.xyyz, r0.x, r2
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, r0.x, r1.w, r0.w
    mul r3, r5.y, c91
    mad r3, r5.x, c90, r3
    mad r3, r5.z, c92, r3
    dp4 r1.w, r3, r3
    rsq r1.w, r1.w
    mul r3.xy, r1.w, r3
    mad_pp r3.xy, r3, c1.yzzw, c1.y
    texld_pp r3, r3, s5
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mul_pp r3.xyz, r0.z, r3
    mul_pp r3.xyz, r0.w, r3
    mad_pp r2.xzw, r2, c18.xyyz, r3.xyyz
    mul_pp r2.xzw, r2, v2.w
    dp3_pp r0.z, r5, -c10
    mul r3.xyz, r0.z, c36
    mul_pp r3.xyz, r0.x, r3
    cmp_pp r0.xzw, r0.z, r3.xyyz, c0.y
    dp3_pp r1.x, r5, -r1
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r1.x, r1
    cmp_pp r1.xyz, r1.x, r1.yzww, c0.y
    mad_pp r0.xyz, r0.y, r1, r0.xzww
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r3.xyz, r5, c0.x, c0.x
    mul_pp r4.xyz, r5, r5
    mad r1.xyz, r3.y, r1, c79
    mul r1.xyz, r1, r4.y
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r3.xyw, r3.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyz, r4.x, r3.xyww, r1
    mov r5.xyz, c81
    add r3.xyw, -r5.xyzz, c82.xyzz
    mad r3.xyz, r3.z, r3.xyww, c81
    mad_pp r1.xyz, r4.z, r3, r1
    mul_pp r3.xyz, r1, c17
    mul r3.xyz, r3, c70.w
    mad r1.xyz, r1, c17, -r3
    mad_pp r1.xyz, r2.y, r1, r3
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    texld_pp r3, v0, s1
    lrp_pp r4, v6.x, r3, r1
    mad_pp r0.xyz, r0, r4, r2.xzww
    mul_pp r1.x, r4.w, c16.w
    mul_pp r0.w, r1.x, v6.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 143 instruction slots used (7 texture, 136 arithmetic)
