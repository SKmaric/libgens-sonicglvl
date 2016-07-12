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
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
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
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 4, 0, 0, 0
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
    dcl_cube s5
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
    mul r1.x, r3.x, c77.w
    nrm r4.xyz, v3
    dp3_pp r1.y, r4, -c10
    mul r2.yzw, r1.y, c36.xxyz
    mul_pp r2.yzw, r1.x, r2
    cmp_pp r1.yzw, r1.y, r2, c2.x
    mul_pp r2.yzw, c58.w, c58.xxyz
    dp3_pp r0.y, r4, -r0.yzww
    mul_pp r2.yzw, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2, c2.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    mov r5.xyz, c79
    add r1.yzw, -r5.xxyz, c80.xxyz
    mad_pp r2.yzw, r4.xxyz, c0.x, c0.x
    mad r1.yzw, r2.z, r1, c79.xxyz
    mul_pp r3.xzw, r4.xyyz, r4.xyyz
    mul r1.yzw, r1, r3.z
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r5.xyz, r2.y, r5, c77
    mad_pp r1.yzw, r3.x, r5.xxyz, r1
    mov r5.xyz, c81
    add r5.xyz, -r5, c82
    mad r2.yzw, r2.w, r5.xxyz, c81.xxyz
    mad_pp r1.yzw, r3.w, r2, r1
    mul_pp r2.yzw, r1, c17.xxyz
    mul r2.yzw, r2, c70.w
    mad r1.yzw, r1, c17.xxyz, -r2
    mad_pp r1.yzw, r3.y, r1, r2
    add_pp r0.xyz, r0, r1.yzww
    mul_pp r0.xyz, r0, c16
    frc r0.w, c26.x
    cmp r1.y, -r0.w, c2.x, c2.y
    add r0.w, -r0.w, c26.x
    cmp r1.y, c26.x, r2.x, r1.y
    add r0.w, r0.w, r1.y
    add r2, r0.w, -c2
    cmp r1.yz, -r2_abs.x, v0.xxyw, c2.x
    cmp r1.yz, -r2_abs.y, v0.xzww, r1
    cmp r1.yz, -r2_abs.z, v1.xxyw, r1
    cmp r1.yz, -r2_abs.w, v1.xzww, r1
    texld_pp r2, r1.yzzw, s0
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0.w, r0.w, v7.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r5.x, c86.x
    mad r0.w, r0.w, c24.w, -r5.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r1.yzw, r0.w, r2.xxyz, c2.y
    add_pp r2.xyz, c22, -v2
    nrm r5.xyz, r2
    dp3 r0.w, -r5, r4
    add r0.w, r0.w, r0.w
    mad_pp r2.xyz, r4, -r0.w, -r5
    texld_pp r2, r2, s5
    mul r4.xyz, r2, c63.x
    mad_pp r2.xyz, r4, r2.w, r2
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r2.w, r4.x, -r4.z, r4.z
    mad_pp r0.w, r1.x, r2.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mul_pp r2.xyz, r2, v3.w
    mad_pp r0.xyz, r0, r1.yzww, r2
    mul_pp r3.xyz, r0, v7
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.x
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 123 instruction slots used (4 texture, 119 arithmetic)
