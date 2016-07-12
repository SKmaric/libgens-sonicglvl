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
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
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
//   sampNrm                               s3       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 1
    def c1, 0, -2, 3, 4
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.y
    dcl_2d s0
    dcl_2d s3
    dcl_cube s5
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c1.y, c1.z
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.w, c0.w
    add r0.x, r1.w, -c61.x
    cmp_pp r0.x, r0.x, c0.w, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.w
    cmp_pp r1.x, -c61.x, r1.w, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.x
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c1.x, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c1.x
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c1.x, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c0.w, r2.x
    lrp_pp r1.y, v5.z, c0.w, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, c0.y, c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.w, r1.y
    lrp_pp r3.y, r2.x, c0.w, r1.x
    mul r1.x, r3.x, c77.w
    nrm_pp r2.xyz, v7
    texld_pp r4, v0, s3
    mul_pp r4.x, r4.w, r4.x
    mad_pp r1.yz, r4.xxyw, c0.y, c0.z
    mul_pp r2.xyz, r2, r1.z
    nrm_pp r4.xyz, v6
    mad_pp r2.xyz, r1.y, r4, r2
    dp2add_pp r1.y, r1.yzzw, -r1.yzzw, c0.w
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    nrm_pp r4.xyz, v2
    mad r1.yzw, r1.y, r4.xxyz, r2.xxyz
    dp3_pp r2.x, r1.yzww, -c10
    mul r2.yzw, r2.x, c36.xxyz
    mul_pp r2.yzw, r1.x, r2
    cmp_pp r2.xyz, r2.x, r2.yzww, c1.x
    dp3_pp r0.y, r1.yzww, -r0.yzww
    mul_pp r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r0.y, r3
    cmp_pp r0.yzw, r0.y, r3.xxzw, c1.x
    mad_pp r0.xyz, r0.x, r0.yzww, r2
    mad_pp r2.xyz, r1.yzww, c0.x, c0.x
    mov r4.xyz, c79
    add r3.xzw, -r4.xyyz, c80.xyyz
    mad r3.xzw, r2.y, r3, c79.xyyz
    mul_pp r4.xyz, r1.yzww, r1.yzww
    mul r3.xzw, r3, r4.y
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r2.xyw, r2.x, r5.xyzz, c77.xyzz
    mad_pp r2.xyw, r4.x, r2, r3.xzzw
    mov r5.xyz, c81
    add r3.xzw, -r5.xyyz, c82.xyyz
    mad r3.xzw, r2.z, r3, c81.xyyz
    mad_pp r2.xyz, r4.z, r3.xzww, r2.xyww
    mul_pp r3.xzw, r2.xyyz, c17.xyyz
    mul r3.xzw, r3, c70.w
    mad r2.xyz, r2, c17, -r3.xzww
    mad_pp r2.xyz, r3.y, r2, r3.xzww
    add_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, c16
    add_pp r2.xyz, c22, -v1
    nrm r3.xyz, r2
    dp3 r0.w, -r3, r1.yzww
    add r0.w, r0.w, r0.w
    mad_pp r1.yzw, r1, -r0.w, -r3.xxyz
    texld_pp r2, r1.yzww, s5
    mul r1.yzw, r2.xxyz, c63.x
    mad_pp r1.yzw, r1, r2.w, r2.xxyz
    mul r0.w, c64.z, c64.x
    mov r2.xz, c64
    mad r2.x, r2.x, -r2.z, r2.z
    mad_pp r0.w, r1.x, r2.x, r0.w
    mul_pp r1.xyz, r0.w, r1.yzww
    mul_pp r1.xyz, r1, v2.w
    add r0.w, c0.x, vPos.y
    mov r2.x, c86.x
    mad r0.w, r0.w, c24.w, -r2.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r2, v0, s0
    add_pp r2.xyz, r2, c0.z
    mul_pp r1.w, r2.w, c16.w
    mul_pp r1.w, r1.w, v8.w
    mul_pp r3.w, r1.w, c21.x
    mad_pp r2.xyz, r2, r0.w, c0.w
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r3.xyz, r0, v8
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 130 instruction slots used (5 texture, 125 arithmetic)
