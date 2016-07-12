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
    def c0, 0.5, 0.298900008, 0.586600006, 0.114399999
    def c1, 0, 1, 2, -1
    def c2, -2, 3, 0.5, -0.5
    def c3, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_color_pp v5
    dcl vPos.y
    dcl_2d s0
    dcl_2d s5
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v3.w
    mul r0.xy, r0.x, v3
    mad r0.xy, r0, c1.z, c1.w
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v3.z, c1.x
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c1.x, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v4.z, c1.y, r0.x
    lrp_pp r0.x, r1.x, c1.y, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c0.yzww
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
    add r1.yzw, -c22.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    mul_pp r1.yzw, r1, r2.x
    rcp r2.x, r2.x
    add r2.x, r2.x, -c60.z
    dp3_pp r2.y, r1.yzww, c23
    add_pp r2.y, r2.y, -c61.z
    mul_sat_pp r0.w, r0.w, r2.y
    mad_pp r2.y, r0.w, c2.x, c2.y
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov_pp r3.y, c1.y
    add r0.w, r3.y, -c61.x
    cmp_pp r0.w, r0.w, c1.y, r2.y
    add r2.y, -c60.z, c60.w
    rcp r2.y, r2.y
    mul_sat r2.x, r2.y, r2.x
    add_pp r2.x, -r2.x, c1.y
    cmp_pp r2.x, -c61.x, r3.y, r2.x
    mul_pp r0.w, r0.w, r2.x
    nrm_pp r2.xyz, v2
    dp3_pp r2.w, r2, -c10
    mul r3.xyz, r2.w, c36
    mul_pp r3.xyz, r1.x, r3
    cmp_pp r3.xyz, r2.w, r3, c1.x
    dp3_pp r1.y, r2, -r1.yzww
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r1.y, r4
    cmp_pp r1.yzw, r1.y, r4.xxyz, c1.x
    mad_pp r1.yzw, r0.w, r1, r3.xxyz
    add_pp r0.xyz, r0, r1.yzww
    mul_pp r0.xyz, r0, c16
    mul r3, r2.y, c91
    mad r3, r2.x, c90, r3
    mad r2, r2.z, c92, r3
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r1.yz, r0.w, r2.xxyw
    mad_pp r1.yz, r1, c2.xzww, c2.z
    texld_pp r2, r1.yzzw, s5
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
    add_pp r2.xyz, r2, c1.w
    mul_pp r1.w, r2.w, c16.w
    mul_pp r1.w, r1.w, v5.w
    mul_pp r3.w, r1.w, c21.x
    mad_pp r2.xyz, r2, r0.w, c1.y
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r3.xyz, r0, v5
    mul_pp r0, r3, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 98 instruction slots used (4 texture, 94 arithmetic)
