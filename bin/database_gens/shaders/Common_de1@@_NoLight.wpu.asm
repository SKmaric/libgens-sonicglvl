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
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_ViewportSize;
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
//   sampler2D sampEnv;
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
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0, 1, 2, 3
    def c1, 2, -1, -2, 3
    def c2, 0.5, 0.298900008, 0.586600006, 0.114399999
    def c3, 0.5, -0.5, 4, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl vPos.y
    dcl_2d s0
    dcl_2d s5
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v4.w
    mul r0.xy, r0.x, v4
    mad r0.xy, r0, c1.x, c1.y
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v4.z, c0.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c0.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v5.z, c0.y, r0.x
    lrp_pp r0.x, r1.x, c0.y, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c2.yzww
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
    mad_pp r2.y, r0.w, c1.z, c1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov r3.xy, c0
    add r0.w, r3.y, -c61.x
    cmp_pp r0.w, r0.w, c0.y, r2.y
    add r2.y, -c60.z, c60.w
    rcp r2.y, r2.y
    mul_sat r2.x, r2.y, r2.x
    add_pp r2.x, -r2.x, c0.y
    cmp_pp r2.x, -c61.x, r3.y, r2.x
    mul_pp r0.w, r0.w, r2.x
    nrm_pp r2.xyz, v3
    dp3_pp r2.w, r2, -c10
    mul r3.yzw, r2.w, c36.xxyz
    mul_pp r3.yzw, r1.x, r3
    cmp_pp r3.yzw, r2.w, r3, c0.x
    dp3_pp r1.y, r2, -r1.yzww
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r1.y, r4
    cmp_pp r1.yzw, r1.y, r4.xxyz, c0.x
    mad_pp r1.yzw, r0.w, r1, r3
    add_pp r0.xyz, r0, r1.yzww
    mul_pp r0.xyz, r0, c16
    frc r0.w, c26.x
    cmp r1.y, -r0.w, c0.x, c0.y
    add r0.w, -r0.w, c26.x
    cmp r1.y, c26.x, r3.x, r1.y
    add r0.w, r0.w, r1.y
    add r3, r0.w, -c0
    cmp r1.yz, -r3_abs.x, v0.xxyw, c0.x
    cmp r1.yz, -r3_abs.y, v0.xzww, r1
    cmp r1.yz, -r3_abs.z, v1.xxyw, r1
    cmp r1.yz, -r3_abs.w, v1.xzww, r1
    texld_pp r3, r1.yzzw, s0
    mul_pp r0.w, r3.w, c16.w
    mul_pp r0.w, r0.w, v6.w
    mul_pp r4.w, r0.w, c21.x
    add r0.w, c2.x, vPos.y
    mov r5.x, c86.x
    mad r0.w, r0.w, c24.w, -r5.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r1.yzw, r0.w, r3.xxyz, c0.y
    mul r3, r2.y, c91
    mad r3, r2.x, c90, r3
    mad r2, r2.z, c92, r3
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c3, c3.x
    texld_pp r2, r2, s5
    mul r3.xyz, r2, c63.x
    mad_pp r2.xyz, r3, r2.w, r2
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r2.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, r1.x, r2.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    mul_pp r2.xyz, r2, v3.w
    mad_pp r0.xyz, r0, r1.yzww, r2
    mul_pp r4.xyz, r0, v6
    mul_pp r0, r4, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 107 instruction slots used (4 texture, 103 arithmetic)
