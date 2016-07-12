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
//   float4 g_SonicEyeHighLightColor;
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
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampPower;
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
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_SonicEyeHighLightColor              c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, -2, 3, 1024
    def c2, 500, 5, 0.699999988, 0.300000012
    def c3, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4_pp v4.xyz
    dcl_texcoord6_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_color_pp v7
    dcl_texcoord8 v8
    dcl_texcoord5 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_cube s3
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v6.xxyz
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
    mov r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c52.z, c52.w
    rcp r1.x, r1.x
    add r1.yzw, -c50.xxyz, v6.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c52.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c0.z
    add r2.x, -c48.z, c48.w
    rcp r2.x, r2.x
    add r2.yzw, -c46.xxyz, v6.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c48.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c0.z
    add r3.x, -c40.z, c40.w
    rcp r3.x, r3.x
    add r3.yzw, -c38.xxyz, v6.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c40.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c0.z
    add r4.x, -c44.z, c44.w
    rcp r4.x, r4.x
    add r4.yzw, -c42.xxyz, v6.xxyz
    dp3 r5.x, r4.yzww, r4.yzww
    rsq r5.x, r5.x
    rcp r5.y, r5.x
    mul_pp r4.yzw, r4, r5.x
    add r5.x, r5.y, -c44.z
    mul_sat r4.x, r4.x, r5.x
    add_pp r4.x, -r4.x, c0.z
    nrm_pp r5.xyz, v3
    dp3_pp r5.w, r5, -r4.yzww
    mul_pp r6.xyz, r5.w, c43
    cmp_pp r6.xyz, r5.w, r6, c1.x
    mul_pp r6.xyz, r4.x, r6
    dp3_pp r5.w, r5, -r3.yzww
    mul_pp r7.xyz, r5.w, c39
    cmp_pp r7.xyz, r5.w, r7, c1.x
    mad_pp r6.xyz, r3.x, r7, r6
    dp3_pp r5.w, r5, -r2.yzww
    mul_pp r7.xyz, r5.w, c47
    cmp_pp r7.xyz, r5.w, r7, c1.x
    mad_pp r6.xyz, r2.x, r7, r6
    dp3_pp r5.w, r5, -r1.yzww
    mul_pp r7.xyz, r5.w, c51
    cmp_pp r7.xyz, r5.w, r7, c1.x
    mad_pp r6.xyz, r1.x, r7, r6
    max r5.w, v8.z, c1.x
    add r6.w, r5.w, -v8.w
    cmp r7.z, r6.w, c1.x, r5.w
    mov r7.xyw, v8
    texldp_pp r7, r7, s13
    max r5.w, v9.z, c1.x
    add r6.w, r5.w, -v9.w
    cmp r8.z, r6.w, c1.x, r5.w
    mov r8.xyw, v9
    texldp_pp r8, r8, s7
    min_pp r5.w, r8.x, r7.x
    lrp_pp r6.w, v4.z, c0.z, r8.x
    lrp_pp r7.x, v4.z, c0.z, r5.w
    rcp r5.w, v8.w
    mul r7.yz, r5.w, v8.xxyw
    mad r7.yz, r7, c0.x, c0.y
    abs_sat r7.yz, r7
    add_sat r7.yz, r7, -c65.x
    mul r7.yz, r7, c65.y
    max r5.w, r7.y, r7.z
    lrp_pp r8.x, r5.w, c0.z, r7.x
    lrp_pp r7.x, r5.w, c0.z, r6.w
    mul r5.w, r8.x, c77.w
    dp3_pp r6.w, r5, -c10
    mul r7.yzw, r6.w, c36.xxyz
    mul_pp r7.yzw, r5.w, r7
    cmp_pp r7.yzw, r6.w, r7, c1.x
    add_pp r6.xyz, r6, r7.yzww
    mul_pp r7.yzw, c58.w, c58.xxyz
    dp3_pp r6.w, r5, -r0.yzww
    mul_pp r7.yzw, r6.w, r7
    cmp_pp r7.yzw, r6.w, r7, c1.x
    mad_pp r6.xyz, r0.x, r7.yzww, r6
    mov r8.xyz, c79
    add r7.yzw, -r8.xxyz, c80.xxyz
    mad_pp r8.xyz, r5, c0.w, c0.w
    mad r7.yzw, r8.y, r7, c79.xxyz
    mul_pp r9.xyz, r5, r5
    mul r7.yzw, r7, r9.y
    mov r10.xyz, c77
    add r10.xyz, -r10, c78
    mad r8.xyw, r8.x, r10.xyzz, c77.xyzz
    mad_pp r7.yzw, r9.x, r8.xxyw, r7
    mov r10.xyz, c81
    add r8.xyw, -r10.xyzz, c82.xyzz
    mad r8.xyz, r8.z, r8.xyww, c81
    mad_pp r7.yzw, r9.z, r8.xxyz, r7
    mul_pp r8.xyz, r7.yzww, c17
    mul r8.xyz, r8, c70.w
    mad r7.yzw, r7, c17.xxyz, -r8.xxyz
    mad_pp r7.xyz, r7.x, r7.yzww, r8
    add_pp r6.xyz, r6, r7
    mul_pp r6.xyz, r6, c16
    mul r6.w, c64.z, c64.x
    mov r7.xz, c64
    mad r7.x, r7.x, -r7.z, r7.z
    mad_pp r6.w, r5.w, r7.x, r6.w
    add_pp r7.xyz, c22, -v6
    dp3_pp r7.w, r7, r7
    rsq_pp r7.w, r7.w
    mad_pp r4.yzw, r7.xxyz, r7.w, -r4
    nrm_pp r8.xyz, r4.yzww
    dp3_sat_pp r4.y, r8, r5
    texld_pp r9, v0, s1
    mov r10.xy, c2
    mul_pp r10, r10.xyxy, c20.yzyz
    mul_pp r9, r9.xxyy, r10
    max_pp r4.zw, r9.xyxz, c0.z
    min r9.xz, r4.zyww, c1.w
    pow r8.w, r4.y, r9.x
    mul_pp r4.yzw, r9.y, c43.xxyz
    mul_pp r4.yzw, r8.w, r4
    mul_pp r4.yzw, r4, r4.x
    mad_pp r3.yzw, r7.xxyz, r7.w, -r3
    nrm_pp r10.xyz, r3.yzww
    dp3_sat_pp r3.y, r10, r5
    pow r8.w, r3.y, r9.x
    mul_pp r3.yzw, r9.y, c39.xxyz
    mul_pp r3.yzw, r8.w, r3
    mad_pp r3.yzw, r3.x, r3, r4
    mad_pp r2.yzw, r7.xxyz, r7.w, -r2
    nrm_pp r11.xyz, r2.yzww
    dp3_sat_pp r2.y, r11, r5
    pow r4.y, r2.y, r9.x
    mul_pp r2.yzw, r9.y, c47.xxyz
    mul_pp r2.yzw, r4.y, r2
    mad_pp r2.yzw, r2.x, r2, r3
    mad_pp r1.yzw, r7.xxyz, r7.w, -r1
    nrm_pp r12.xyz, r1.yzww
    dp3_sat_pp r1.y, r12, r5
    pow r3.y, r1.y, r9.x
    mul_pp r1.yzw, r9.y, c51.xxyz
    mul_pp r1.yzw, r3.y, r1
    mad_pp r1.yzw, r1.x, r1, r2
    mul_pp r2.yzw, r9.y, c37.xxyz
    mad_pp r3.yzw, r7.xxyz, r7.w, -c10.xxyz
    nrm_pp r13.xyz, r3.yzww
    dp3_sat_pp r3.y, r13, r5
    pow r4.y, r3.y, r9.x
    mul_pp r2.yzw, r2, r4.y
    mad_pp r1.yzw, r2, r5.w, r1
    mad_pp r0.yzw, r7.xxyz, r7.w, -r0
    mul_pp r2.yzw, r7.w, r7.xxyz
    nrm_pp r7.xyz, r0.yzww
    dp3_sat_pp r0.y, r7, r5
    pow r3.y, r0.y, r9.x
    mul_pp r0.yzw, c59.w, c59.xxyz
    mul_pp r4.yzw, r9.y, r0
    mul_pp r0.yzw, r9.w, r0
    mul_pp r3.yzw, r3.y, r4
    mad_pp r1.yzw, r0.x, r3, r1
    dp3_pp r3.y, v5, v5
    rsq_pp r3.y, r3.y
    mad_pp r3.yzw, v5.xxyz, r3.y, r2
    nrm_pp r14.xyz, r3.yzww
    texld r15, v0, s2
    mad_pp r15, r15, c0.x, c0.y
    dp2add_pp r3.y, r15, -r15, c0.z
    rsq_pp r3.y, r3.y
    rcp_pp r3.y, r3.y
    nrm_pp r16.xyz, v1
    nrm_pp r17.xyz, v2
    mul_pp r4.yzw, r15.y, r17.xxyz
    mul_pp r17.xyz, r15.w, r17
    mad_pp r17.xyz, r15.z, r16, r17
    mad_pp r4.yzw, r15.x, r16.xxyz, r4
    dp2add_pp r3.z, r15.zwzw, -r15.zwzw, c0.z
    rsq_pp r3.z, r3.z
    rcp_pp r3.z, r3.z
    mad_pp r15.xyz, r3.z, r5, r17
    mad_pp r3.yzw, r3.y, r5.xxyz, r4
    dp3_sat_pp r3.y, r14, r3.yzww
    pow r4.y, r3.y, r9.x
    mul_pp r3.yzw, r9.y, c150.xxyz
    mul_pp r3.yzw, r4.y, r3
    mad_pp r1.yzw, r1, c18.xxyz, r3
    dp3 r3.y, -r2.yzww, r5
    add r3.y, r3.y, r3.y
    mad_pp r3.yzw, r5.xxyz, -r3.y, -r2
    dp3_sat_pp r2.y, r15, r2.yzww
    add_pp r2.y, -r2.y, c0.z
    texld_pp r14, r3.yzww, s3
    mul r3.yzw, r14.xxyz, c63.x
    mad_pp r3.yzw, r3, r14.w, r14.xxyz
    mul_pp r3.yzw, r3, v7.w
    mad_pp r1.yzw, r3, r6.w, r1
    mul_pp r1.yzw, r1, v3.w
    texld_pp r14, v0, s0
    mad_pp r1.yzw, r6.xxyz, r14.xxyz, r1
    dp3_sat_pp r2.z, r8, r15
    pow r3.y, r2.z, r9.z
    mul_pp r4.yzw, r9.w, c43.xxyz
    mul_pp r3.yzw, r3.y, r4
    mul_pp r3.yzw, r3, r4.x
    dp3_sat_pp r2.z, r10, r15
    pow r4.x, r2.z, r9.z
    mul_pp r4.yzw, r9.w, c39.xxyz
    mul_pp r4.xyz, r4.x, r4.yzww
    mad_pp r3.xyz, r3.x, r4, r3.yzww
    dp3_sat_pp r2.z, r11, r15
    pow r3.w, r2.z, r9.z
    mul_pp r4.xyz, r9.w, c47
    mul_pp r4.xyz, r3.w, r4
    mad_pp r2.xzw, r2.x, r4.xyyz, r3.xyyz
    dp3_sat_pp r3.x, r12, r15
    pow r4.x, r3.x, r9.z
    mul_pp r3.xyz, r9.w, c51
    mul_pp r4.yzw, r9.w, c37.xxyz
    mul_pp r3.xyz, r4.x, r3
    mad_pp r2.xzw, r1.x, r3.xyyz, r2
    dp3_sat_pp r1.x, r13, r15
    dp3_sat_pp r3.x, r7, r15
    pow r4.x, r3.x, r9.z
    pow r3.x, r1.x, r9.z
    mul_pp r3.xyz, r3.x, r4.yzww
    mad_pp r2.xzw, r3.xyyz, r5.w, r2
    mul_pp r0.yzw, r0, r4.x
    mad_pp r0.xyz, r0.x, r0.yzww, r2.xzww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r14, r0
    mul_pp r0.w, r14.w, c16.w
    mul_pp r3.w, r0.w, c21.x
    mul_pp r0.w, r2.y, r2.y
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r2.y, r0.w
    mad_pp r0.w, r0.w, c2.z, c2.w
    mad_pp r0.xyz, r0, r0.w, r1.yzww
    mul_pp r3.xyz, r0, v7
    mul_pp r0, r3, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 324 instruction slots used (6 texture, 318 arithmetic)
