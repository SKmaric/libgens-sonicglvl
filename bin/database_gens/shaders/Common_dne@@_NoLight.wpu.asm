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
//   mrgTexcoordIndex                      c26      2
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
//   sampDif                               s0       1
//   sampNrm                               s3       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0.25
    def c1, 4, 0, 0, 0
    def c2, 0.5, 2, -1, -3
    def c3, 0, 1, 2, 3
    def c4, -1, 1, 0, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.y
    dcl_2d s0
    dcl_2d s3
    dcl_2d s5
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
    mad_pp r1.y, r0.x, -c2.y, -c2.w
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
    texld_pp r1, r1, s3
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c2.y, c2.z
    nrm_pp r3, v7.xyzx
    mul_pp r3, r1.y, r3
    nrm_pp r4, v6.xyzx
    mad_pp r3, r1.x, r4, r3
    dp2add_pp r1.x, r1, -r1, c3.y
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r4, v3.xyzx
    mad r1, r1.x, r4, r3
    dp3_pp r2.y, r1.wyzw, -c10
    mul r3.xyz, r2.y, c36
    rcp r2.z, v4.w
    mul r2.zw, r2.z, v4.xyxy
    mad r2.zw, r2, c2.y, c2.z
    abs_sat r2.zw, r2
    add_sat r2.zw, r2, -c65.x
    mul r2.zw, r2, c65.y
    max r3.w, r2.z, r2.w
    max r2.z, v4.z, c3.x
    add r2.w, r2.z, -v4.w
    cmp r4.z, r2.w, c3.x, r2.z
    mov r4.xyw, v4
    texldp_pp r4, r4, s13
    lrp_pp r2.z, v5.z, c3.y, r4.x
    lrp_pp r4.x, r3.w, c3.y, r2.z
    texld_pp r5, v0.zwzw, s10
    mul r2.z, r4.x, r5.w
    mul_pp r3.xyz, r2.z, r3
    cmp_pp r3.xyz, r2.y, r3, c3.x
    dp3_pp r0.y, r1.wyzw, -r0.yzww
    mul_pp r4.yzw, c58.w, c58.xxyz
    mul_pp r4.yzw, r0.y, r4
    cmp_pp r0.yzw, r0.y, r4, c3.x
    mad_pp r0.xyz, r0.x, r0.yzww, r3
    mul_pp r3.xyz, r5, r5
    dp3_pp r0.w, r3, c0
    mad_pp r3.xyz, r5, r5, -r0.w
    mad_sat_pp r3.xyz, r3, c71.w, r0.w
    mul_pp r3.xyz, r3, c70
    mul_pp r4.yzw, r3.xxyz, c17.xxyz
    mul r4.yzw, r4, c70.w
    mad r3.xyz, r3, c17, -r4.yzww
    mad_pp r3.xyz, r4.x, r3, r4.yzww
    add_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, c16
    add_pp r3, c22.xyzx, -v2.xyzx
    dp3_pp r0.w, r3.yzww, r3.yzww
    rsq_pp r0.w, r0.w
    mul r3, r0.w, r3
    dp3 r0.w, r3.yzww, r1.yzww
    add r0.w, r0.w, r0.w
    mad r1, r0.w, r1, -r3
    mad r3, r1.wyzw, c4.xxyz, c4.zzzw
    mul r4, r1, c4.yxxz
    cmp r1, r1.z, r3, r4
    add r0.w, r1.z, c3.y
    rcp r0.w, r0.w
    mad r1.xy, r1.yxzw, r0.w, c3.y
    mad_pp r3.x, r1.y, c0.w, r1.w
    mul_pp r3.y, r1.x, c2.x
    texld_pp r1, r3, s5
    mul r3.xyz, r1, c63.x
    mad_pp r1.xyz, r3, r1.w, r1
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, r2.z, r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mul_pp r1.xyz, r1, v3.w
    frc r0.w, c26.x
    cmp r1.w, -r0.w, c3.x, c3.y
    add r0.w, -r0.w, c26.x
    cmp r1.w, c26.x, r2.x, r1.w
    add r0.w, r0.w, r1.w
    add r2, r0.w, -c3
    cmp r3.xy, -r2_abs.x, v0, c3.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c2.x, vPos.y
    mov r4.x, c86.x
    mad r0.w, r0.w, c24.w, -r4.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r2, c3.y
    mad_pp r0.xyz, r0, r4, r1
    mul_pp r3.xyz, r0, v8
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 141 instruction slots used (5 texture, 136 arithmetic)
