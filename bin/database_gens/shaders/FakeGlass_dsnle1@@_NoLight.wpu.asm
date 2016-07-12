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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgChrEmissionParam;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampSpec;
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
//   mrgTexcoordIndex                      c26      2
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
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   mrgChrEmissionParam                   c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampEmi                               s4       1
//   g_VerticalShadowMapSampler            s7       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, -0.0500000007, 1.05263162
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, -2, 3, 500, 5
    def c3, 0.5, -0.5, 4, 0
    def c4, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9
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
    mad_pp r1.y, r0.x, c2.x, c2.y
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
    add_pp r1.xyz, c22, -v2
    dp3_pp r1.w, r1, r1
    rsq_pp r1.w, r1.w
    mad_pp r2.yzw, r1.xxyz, r1.w, -r0
    mad_pp r1.xyz, r1, r1.w, -c10
    nrm_pp r3.xyz, r1
    nrm_pp r1.xyz, r2.yzww
    frc r2.yzw, c26.xxzw
    cmp r4.xyz, -r2.yzww, c4.x, c4.y
    add r2.yzw, -r2, c26.xxzw
    cmp r4.xyz, c26.xzww, r2.x, r4
    add r2.yzw, r2, r4.xxyz
    add r4, r2.w, -c4
    cmp r5.xy, -r4_abs.x, v0, c4.x
    cmp r4.xy, -r4_abs.y, v0.zwzw, r5
    cmp r4.xy, -r4_abs.z, v1, r4
    cmp r4.xy, -r4_abs.w, v1.zwzw, r4
    texld_pp r4, r4, s2
    mul_pp r4.x, r4.w, r4.x
    mad_pp r4.xy, r4, c0.x, c0.y
    nrm_pp r5.xyz, v8
    mul_pp r5.xyz, r4.y, r5
    nrm_pp r6.xyz, v7
    mad_pp r5.xyz, r4.x, r6, r5
    dp2add_pp r1.w, r4, -r4, c4.y
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r4.xyz, v3
    mad_pp r4.xyz, r1.w, r4, r5
    dp3_sat_pp r1.x, r1, r4
    mov_pp r1.zw, c2
    mul_pp r1.yz, r1.xzww, c20
    max_pp r2.w, r1.y, c4.y
    min r1.y, r2.w, c1.w
    pow r2.w, r1.x, r1.y
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r1.z, r5
    mul_pp r1.xzw, r1.z, c37.xyyz
    mul_pp r5.xyz, r2.w, r5
    mul_pp r5.xyz, r0.x, r5
    max r2.w, v4.z, c4.x
    add r3.w, r2.w, -v4.w
    cmp r6.z, r3.w, c4.x, r2.w
    mov r6.xyw, v4
    texldp_pp r6, r6, s13
    max r2.w, v5.z, c4.x
    add r3.w, r2.w, -v5.w
    cmp r7.z, r3.w, c4.x, r2.w
    mov r7.xyw, v5
    texldp_pp r7, r7, s7
    min_pp r2.w, r7.x, r6.x
    lrp_pp r3.w, v6.z, c4.y, r2.w
    rcp r2.w, v4.w
    mul r6.xy, r2.w, v4
    mad r6.xy, r6, c0.x, c0.y
    abs_sat r6.xy, r6
    add_sat r6.xy, r6, -c65.x
    mul r6.xy, r6, c65.y
    max r2.w, r6.x, r6.y
    lrp_pp r4.w, r2.w, c4.y, r3.w
    texld_pp r6, v0.zwzw, s10
    mul r2.w, r4.w, r6.w
    dp3_sat_pp r3.x, r3, r4
    pow r5.w, r3.x, r1.y
    mul_pp r1.xyz, r1.xzww, r5.w
    mad_pp r1.xyz, r1, r2.w, r5
    mul_pp r1.xyz, r1, c18
    mul r3, r4.y, c91
    mad r3, r4.x, c90, r3
    mad r3, r4.z, c92, r3
    dp4 r1.w, r3, r3
    rsq r1.w, r1.w
    mul r3.xy, r1.w, r3
    mad_pp r3.xy, r3, c3, c3.x
    texld_pp r3, r3, s3
    mul r5.xyz, r3, c63.x
    mad_pp r3.xyz, r5, r3.w, r3
    add r5, r2.z, -c4
    add r7, r2.y, -c4
    cmp r2.yz, -r5_abs.x, v0.xxyw, c4.x
    cmp r2.yz, -r5_abs.y, v0.xzww, r2
    cmp r2.yz, -r5_abs.z, v1.xxyw, r2
    cmp r2.yz, -r5_abs.w, v1.xzww, r2
    texld_pp r5, r2.yzzw, s1
    mul_pp r3.xyz, r3, r5.w
    mul r1.w, c64.z, c64.x
    mov r8.xz, c64
    mad r2.y, r8.x, -r8.z, r8.z
    mad_pp r1.w, r2.w, r2.y, r1.w
    mul_pp r3.xyz, r1.w, r3
    mad_pp r1.xyz, r1, r5, r3
    mul_pp r1.xyz, r1, v3.w
    mul_pp r3.xyz, r6, r6
    dp3_pp r1.w, r3, c1
    mad_pp r3.xyz, r6, r6, -r1.w
    mad_sat_pp r3.xyz, r3, c71.w, r1.w
    mul_pp r5.xyz, r3, c70
    mul r5.xyz, r5, c70.w
    mad r3.xyz, r3, c70, -r5
    mad_pp r3.xyz, r4.w, r3, r5
    dp3_pp r0.y, r4, -r0.yzww
    dp3_pp r0.z, r4, -c10
    add_pp r0.yz, r0, c0.z
    mul_sat_pp r0.yz, r0, c0.w
    mul_pp r4.xyz, r0.z, c36
    mul r5.xyz, c58.w, c58
    mul_pp r0.yzw, r0.y, r5.xxyz
    mul_pp r0.xyz, r0.yzww, r0.x
    mad_pp r0.xyz, r4, r2.w, r0
    add_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, c16
    cmp r2.yz, -r7_abs.x, v0.xxyw, c4.x
    cmp r2.yz, -r7_abs.y, v0.xzww, r2
    cmp r2.yz, -r7_abs.z, v1.xxyw, r2
    cmp r2.yz, -r7_abs.w, v1.xzww, r2
    texld_pp r4, r2.yzzw, s0
    add_sat_pp r0.w, r3.w, r4.w
    mul_pp r3.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r4, r1
    frc r0.w, c27.y
    cmp r1.x, -r0.w, c4.x, c4.y
    add r0.w, -r0.w, c27.y
    cmp r1.x, c27.y, r2.x, r1.x
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c4
    cmp r2.xy, -r1_abs.x, v0, c4.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld r1, r1, s4
    add_pp r1.xyz, r1, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r3.xyz, r1, c150.w, r0
    mul_pp r0, r3, v9
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 181 instruction slots used (8 texture, 173 arithmetic)
