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
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampDif2;
//   sampler2D sampEmiMask;
//   sampler2D sampPow;
//   sampler2D sampPow2;
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
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampDif2                              s1       1
//   sampPow                               s2       1
//   sampPow2                              s3       1
//   sampEmiMask                           s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s6
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
    mad_pp r1.y, r0.x, -c0.y, -c0.w
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
    mad r1.zw, r1, c0.y, c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.y, r1.z, r1.w
    lrp_pp r3.x, r2.y, c2.y, r1.y
    lrp_pp r3.y, r2.y, c2.y, r1.x
    mul_pp r1.x, r3.x, c77.w
    nrm_pp r4.xyz, v3
    dp3_pp r1.y, r4, -c10
    mul r2.yzw, r1.y, c36.xxyz
    mul_pp r2.yzw, r1.x, r2
    cmp_pp r1.yzw, r1.y, r2, c2.x
    mul_pp r2.yzw, c58.w, c58.xxyz
    dp3_pp r3.x, r4, -r0.yzww
    mul_pp r2.yzw, r2, r3.x
    cmp_pp r2.yzw, r3.x, r2, c2.x
    mad_pp r1.yzw, r0.x, r2, r1
    mov r5.xyz, c79
    add r2.yzw, -r5.xxyz, c80.xxyz
    mad_pp r3.xzw, r4.xyyz, c0.x, c0.x
    mad r2.yzw, r3.z, r2, c79.xxyz
    mul_pp r5.xyz, r4, r4
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
    add_pp r1.yzw, r1, r2
    mul_pp r1.yzw, r1, c16.xxyz
    add_pp r2.yzw, c22.xxyz, -v2.xxyz
    dp3_pp r3.x, r2.yzww, r2.yzww
    rsq_pp r3.x, r3.x
    mad_pp r0.yzw, r2, r3.x, -r0
    mad_pp r2.yzw, r2, r3.x, -c10.xxyz
    nrm_pp r3.xyz, r2.yzww
    dp3_sat_pp r2.y, r3, r4
    nrm_pp r3.xyz, r0.yzww
    dp3_sat_pp r0.y, r3, r4
    frc r3, c26
    cmp r4, -r3, c2.x, c2.y
    add r3, -r3, c26
    cmp r4, c26, r2.x, r4
    add r3, r3, r4
    add r4, r3.z, -c2
    cmp r0.zw, -r4_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r4_abs.y, v0, r0
    cmp r0.zw, -r4_abs.z, v1.xyxy, r0
    cmp r0.zw, -r4_abs.w, v1, r0
    texld_pp r4, r0.zwzw, s2
    add r5, r3.w, -c2
    cmp r0.zw, -r5_abs.x, v0.xyxy, c2.x
    cmp r0.zw, -r5_abs.y, v0, r0
    cmp r0.zw, -r5_abs.z, v1.xyxy, r0
    cmp r0.zw, -r5_abs.w, v1, r0
    texld_pp r5, r0.zwzw, s3
    lrp_pp r0.z, v7.w, r5.x, r4.x
    mul_pp r0.zw, r0.z, c20.xyyz
    mul_pp r0.zw, r0, c1.xyxy
    max_pp r2.z, r0.z, c2.y
    min r0.z, r2.z, c1.z
    pow r2.z, r0.y, r0.z
    pow r3.z, r2.y, r0.z
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r0.w, r4
    mul_pp r0.yzw, r0.w, c37.xxyz
    mul_pp r0.yzw, r3.z, r0
    mul_pp r2.yzw, r2.z, r4.xxyz
    mul_pp r2.yzw, r0.x, r2
    mad_pp r0.xyz, r0.yzww, r1.x, r2.yzww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v3.w
    add r4, r3.x, -c2
    add r3, r3.y, -c2
    cmp r2.yz, -r4_abs.x, v0.xxyw, c2.x
    cmp r2.yz, -r4_abs.y, v0.xzww, r2
    cmp r2.yz, -r4_abs.z, v1.xxyw, r2
    cmp r2.yz, -r4_abs.w, v1.xzww, r2
    texld_pp r4, r2.yzzw, s0
    cmp r2.yz, -r3_abs.x, v0.xxyw, c2.x
    cmp r2.yz, -r3_abs.y, v0.xzww, r2
    cmp r2.yz, -r3_abs.z, v1.xxyw, r2
    cmp r2.yz, -r3_abs.w, v1.xzww, r2
    texld_pp r3, r2.yzzw, s1
    lrp_pp r5, v7.w, r3, r4
    mul_pp r0.w, r5.w, c16.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r2.yzw, r0.w, r5.xxyz, c2.y
    mad_pp r0.xyz, r1.yzww, r2.yzww, r0
    frc r1.x, c27.z
    cmp r1.y, -r1.x, c2.x, c2.y
    add r1.x, -r1.x, c27.z
    cmp r1.y, c27.z, r2.x, r1.y
    add r1.x, r1.y, r1.x
    add r1, r1.x, -c2
    cmp r2.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld r1, r1, s6
    mul_pp r2.xyz, c17, v7
    mul_pp r1.xyz, r1, r2
    mad_pp r3.xyz, r1, r0.w, r0
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 170 instruction slots used (7 texture, 163 arithmetic)
