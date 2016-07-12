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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampPow;
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
//   mrgTexcoordIndex                      c26      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
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
//   sampPow                               s2       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 0.298900008, 0.586600006, 0.114399999
    def c1, 2, -1, -2, 3
    def c2, 500, 5, 1024, 0.25
    def c3, 4, 0, 0, 0
    def c4, 0, 1, 2, 3
    def c5, -1, 1, 0, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
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
    mad_pp r1.y, r0.x, c1.z, c1.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c4
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c4.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    frc r1.xy, c26.xwzw
    cmp r1.zw, -r1.xyxy, c4.x, c4.y
    add r1.xy, -r1, c26.xwzw
    cmp r1.zw, c26.xyxw, r2.x, r1
    add r1.xy, r1.zwzw, r1
    add r2, r1.y, -c4
    add r1, r1.x, -c4
    cmp r3.xy, -r2_abs.x, v0, c4.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s2
    mul_pp r2.yz, r2.x, c20
    mul_pp r2.yz, r2, c2.xxyw
    mul_pp r3.xyz, c59.w, c59
    mul_pp r3.xyz, r2.z, r3
    max_pp r3.w, r2.y, c4.y
    mul_pp r2.yzw, r2.z, c37.xxyz
    min r4.x, r3.w, c2.z
    add_pp r5, c22.xyzx, -v2.xyzx
    dp3_pp r3.w, r5.yzww, r5.yzww
    rsq_pp r3.w, r3.w
    mad_pp r4.yzw, r5.xxyz, r3.w, -r0
    nrm_pp r6.xyz, r4.yzww
    nrm r7, v3.xyzx
    dp3_sat_pp r4.y, r6, r7
    pow r6.x, r4.y, r4.x
    mul_pp r3.xyz, r3, r6.x
    mul_pp r3.xyz, r0.x, r3
    rcp r4.y, v4.w
    mul r4.yz, r4.y, v4.xxyw
    mad r4.yz, r4, c1.x, c1.y
    abs_sat r4.yz, r4
    add_sat r4.yz, r4, -c65.x
    mul r4.yz, r4, c65.y
    max r6.x, r4.y, r4.z
    max r4.y, v4.z, c4.x
    add r4.z, r4.y, -v4.w
    cmp r8.z, r4.z, c4.x, r4.y
    mov r8.xyw, v4
    texldp_pp r8, r8, s13
    lrp_pp r4.y, v5.z, c4.y, r8.x
    lrp_pp r8.x, r6.x, c4.y, r4.y
    texld_pp r6, v0.zwzw, s10
    mul r4.y, r6.w, r8.x
    mad_pp r8.yzw, r5.xxyz, r3.w, -c10.xxyz
    mul r5, r3.w, r5
    nrm_pp r9.xyz, r8.yzww
    dp3_sat_pp r3.w, r9, r7
    pow r6.w, r3.w, r4.x
    mul_pp r2.yzw, r2, r6.w
    mad_pp r2.yzw, r2, r4.y, r3.xxyz
    dp3 r3.x, r5.yzww, r7.yzww
    add r3.x, r3.x, r3.x
    mad r3, r3.x, r7, -r5
    mad r5, r3.wyzw, c5.xxyz, c5.zzzw
    mul r9, r3, c5.yxxz
    cmp r3, r3.z, r5, r9
    add r3.z, r3.z, c4.y
    rcp r3.z, r3.z
    mad r3.xy, r3.yxzw, r3.z, c4.y
    mad_pp r5.x, r3.y, c2.w, r3.w
    mul_pp r5.y, r3.x, c0.x
    texld_pp r3, r5, s5
    mul r4.xzw, r3.xyyz, c63.x
    mad_pp r3.xyz, r4.xzww, r3.w, r3
    mul_pp r3.xyz, r2.x, r3
    mul r2.x, c64.z, c64.x
    mov r4.xz, c64
    mad r3.w, r4.x, -r4.z, r4.z
    mad_pp r2.x, r4.y, r3.w, r2.x
    mul_pp r3.xyz, r2.x, r3
    mad_pp r2.xyz, r2.yzww, c18, r3
    mul_pp r2.xyz, r2, v3.w
    mul_pp r3.xyz, r6, r6
    dp3_pp r2.w, r3, c0.yzww
    mad_pp r3.xyz, r6, r6, -r2.w
    mad_sat_pp r3.xyz, r3, c71.w, r2.w
    mul_pp r3.xyz, r3, c70
    mul_pp r4.xzw, r3.xyyz, c17.xyyz
    mul r4.xzw, r4, c70.w
    mad r3.xyz, r3, c17, -r4.xzww
    mad_pp r3.xyz, r8.x, r3, r4.xzww
    dp3_pp r2.w, r7.wyzw, -c10
    dp3_pp r0.y, r7.wyzw, -r0.yzww
    mul r4.xzw, r2.w, c36.xyyz
    mul_pp r4.xyz, r4.y, r4.xzww
    cmp_pp r4.xyz, r2.w, r4, c4.x
    mul_pp r5.xyz, c58.w, c58
    mul_pp r5.xyz, r0.y, r5
    cmp_pp r0.yzw, r0.y, r5.xxyz, c4.x
    mad_pp r0.xyz, r0.x, r0.yzww, r4
    add_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, c16
    cmp r3.xy, -r1_abs.x, v0, c4.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r3
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v6.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r4.x, c86.x
    mad r0.w, r0.w, c24.w, -r4.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r1, c4.y
    mad_pp r0.xyz, r0, r4, r2
    mul_pp r3.xyz, r0, v6
    mul_pp r0, r3, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 150 instruction slots used (5 texture, 145 arithmetic)
