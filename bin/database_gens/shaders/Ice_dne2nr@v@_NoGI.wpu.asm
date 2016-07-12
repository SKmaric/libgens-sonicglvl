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
//   float4 g_LightScatteringColor;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   samplerCUBE sampRef;
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
//   mrgTexcoordIndex           c26      2
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgLocalLight0_Position    c38      1
//   mrgLocalLight0_Color       c39      1
//   mrgLocalLight0_Range       c40      1
//   mrgLocalLight1_Position    c42      1
//   mrgLocalLight1_Color       c43      1
//   mrgLocalLight1_Range       c44      1
//   mrgLocalLight2_Position    c46      1
//   mrgLocalLight2_Color       c47      1
//   mrgLocalLight2_Range       c48      1
//   mrgLocalLight3_Position    c50      1
//   mrgLocalLight3_Color       c51      1
//   mrgLocalLight3_Range       c52      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   mrgLuminanceRange          c63      1
//   mrgInShadowScale           c64      1
//   g_ShadowMapParams          c65      1
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      6
//   g_ForceAlphaColor          c89      1
//   sampDif                    s0       1
//   sampNrm0                   s3       1
//   sampNrm1                   s4       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -3
    def c1, 500, 5, 1024, 0.763941944
    def c2, 0.583607316, 1, 4, 0
    def c3, 0, 1, 2, 3
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
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_cube s6
    dcl_2d s7
    dcl_2d s13
    frc r0.x, c26.x
    cmp r0.y, -r0.x, c3.x, c3.y
    add r0.x, -r0.x, c26.x
    mov r1.xy, c3
    cmp r0.y, c26.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c3
    cmp r1.zw, -r0_abs.x, v0.xyxy, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s0
    mul_pp r2.w, r0.w, c16.w
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r3.xyz, -c22, v2
    dp3 r1.z, r3, r3
    rsq r1.z, r1.z
    mul_pp r3.xyz, r1.z, r3
    rcp r1.z, r1.z
    add r1.z, r1.z, -c60.z
    dp3_pp r1.w, r3, c23
    add_pp r1.w, r1.w, -c61.z
    mul_sat_pp r0.w, r0.w, r1.w
    mad_pp r1.w, r0.w, -c0.x, -c0.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r1.w
    pow_sat_pp r1.w, r0.w, c61.w
    add r0.w, r1.y, -c61.x
    cmp_pp r0.w, r0.w, c3.y, r1.w
    add r1.w, -c60.z, c60.w
    rcp r1.w, r1.w
    mul_sat r1.z, r1.w, r1.z
    add_pp r1.z, -r1.z, c3.y
    cmp_pp r1.y, -c61.x, r1.y, r1.z
    mul_pp r0.w, r0.w, r1.y
    add r1.y, -c48.z, c48.w
    rcp r1.y, r1.y
    add r4.xyz, -c46, v2
    dp3 r1.z, r4, r4
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r4.xyz, r1.z, r4
    add r1.z, r1.w, -c48.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c40.z, c40.w
    rcp r1.z, r1.z
    add r5.xyz, -c38, v2
    dp3 r1.w, r5, r5
    rsq r1.w, r1.w
    rcp r3.w, r1.w
    mul_pp r5.xyz, r1.w, r5
    add r1.w, r3.w, -c40.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c44.z, c44.w
    rcp r1.w, r1.w
    add r6.xyz, -c42, v2
    dp3 r3.w, r6, r6
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r6.xyz, r3.w, r6
    add r3.w, r4.w, -c44.z
    mul_sat r1.w, r1.w, r3.w
    add_pp r1.yzw, -r1, c3.y
    frc r7.xy, c27
    cmp r7.zw, -r7.xyxy, c3.x, c3.y
    add r7.xy, -r7, c27
    cmp r7.zw, c27.xyxy, r1.x, r7
    add r7.xy, r7.zwzw, r7
    add r8, r7.x, -c3
    add r7, r7.y, -c3
    cmp r9.xy, -r8_abs.x, v0, c3.x
    cmp r8.xy, -r8_abs.y, v0.zwzw, r9
    cmp r8.xy, -r8_abs.z, v1, r8
    cmp r8.xy, -r8_abs.w, v1.zwzw, r8
    texld_pp r8, r8, s3
    mul_pp r8.x, r8.w, r8.x
    mad_pp r8.xy, r8, c0.x, c0.y
    dp2add_pp r1.x, r8, -r8, c3.y
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r9.xyz, v8
    mul_pp r8.yzw, r8.y, r9.xxyz
    nrm_pp r10.xyz, v7
    mad_pp r8.xyz, r8.x, r10, r8.yzww
    nrm_pp r11.xyz, v3
    mad_pp r8.xyz, r1.x, r11, r8
    dp3_pp r1.x, r8, -r6
    mul_pp r12.xyz, r1.x, c43
    cmp_pp r12.xyz, r1.x, r12, c3.x
    mul_pp r12.xyz, r1.w, r12
    dp3_pp r1.x, r8, -r5
    mul_pp r13.xyz, r1.x, c39
    cmp_pp r13.xyz, r1.x, r13, c3.x
    mad_pp r12.xyz, r1.z, r13, r12
    dp3_pp r1.x, r8, -r4
    mul_pp r13.xyz, r1.x, c47
    cmp_pp r13.xyz, r1.x, r13, c3.x
    mad_pp r12.xyz, r1.y, r13, r12
    add r1.x, -c52.z, c52.w
    rcp r1.x, r1.x
    add r13.xyz, -c50, v2
    dp3 r3.w, r13, r13
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r13.xyz, r3.w, r13
    add r3.w, r4.w, -c52.z
    mul_sat r1.x, r1.x, r3.w
    add_pp r1.x, -r1.x, c3.y
    dp3_pp r3.w, r8, -r13
    mul_pp r14.xyz, r3.w, c51
    cmp_pp r14.xyz, r3.w, r14, c3.x
    mad_pp r12.xyz, r1.x, r14, r12
    max r3.w, v4.z, c3.x
    add r4.w, r3.w, -v4.w
    cmp r14.z, r4.w, c3.x, r3.w
    mov r14.xyw, v4
    texldp_pp r14, r14, s13
    max r3.w, v5.z, c3.x
    add r4.w, r3.w, -v5.w
    cmp r15.z, r4.w, c3.x, r3.w
    mov r15.xyw, v5
    texldp_pp r15, r15, s7
    min_pp r3.w, r15.x, r14.x
    lrp_pp r4.w, v6.z, c3.y, r3.w
    rcp r3.w, v4.w
    mul r14.xy, r3.w, v4
    mad r14.xy, r14, c0.x, c0.y
    abs_sat r14.xy, r14
    add_sat r14.xy, r14, -c65.x
    mul r14.xy, r14, c65.y
    max r3.w, r14.x, r14.y
    lrp_pp r5.w, r3.w, c3.y, r4.w
    mul r3.w, r5.w, c77.w
    dp3_pp r4.w, r8, -c10
    mul r14.xyz, r4.w, c36
    mul_pp r14.xyz, r3.w, r14
    cmp_pp r14.xyz, r4.w, r14, c3.x
    add_pp r12.xyz, r12, r14
    dp3_pp r4.w, r8, -r3
    mul_pp r14.xyz, c58.w, c58
    mul_pp r14.xyz, r4.w, r14
    cmp_pp r14.xyz, r4.w, r14, c3.x
    mad_pp r12.xyz, r0.w, r14, r12
    mov r14.xyz, c79
    add r14.xyz, -r14, c80
    mad_pp r15.xyz, r8, c0.z, c0.z
    mad r14.xyz, r15.y, r14, c79
    mul_pp r16.xyz, r8, r8
    mul r14.xyz, r14, r16.y
    mov r17.xyz, c77
    add r17.xyz, -r17, c78
    mad r15.xyw, r15.x, r17.xyzz, c77.xyzz
    mad_pp r14.xyz, r16.x, r15.xyww, r14
    mov r17.xyz, c81
    add r15.xyw, -r17.xyzz, c82.xyzz
    mad r15.xyz, r15.z, r15.xyww, c81
    mad_pp r14.xyz, r16.z, r15, r14
    mad_pp r12.xyz, r14, c17, r12
    mul_pp r12.xyz, r12, c16
    mul_pp r2.xyz, r0, r12
    mul_pp r2, r2, v9
    add_pp r0.xyz, c22, -v2
    dp3_pp r4.w, r0, r0
    rsq_pp r4.w, r4.w
    mad_pp r6.xyz, r0, r4.w, -r6
    nrm_pp r12.xyz, r6
    dp3_sat_pp r5.w, r12, r8
    mov_pp r6.xy, c1
    mul_pp r6.xy, r6, c20.yzzw
    max_pp r8.w, r6.x, c3.y
    min r6.x, r8.w, c1.z
    pow r8.w, r5.w, r6.x
    mul_pp r12.xyz, r6.y, c43
    mul_pp r12.xyz, r8.w, r12
    mul_pp r12.xyz, r1.w, r12
    mad_pp r5.xyz, r0, r4.w, -r5
    nrm_pp r14.xyz, r5
    dp3_sat_pp r1.w, r14, r8
    pow r5.x, r1.w, r6.x
    mul_pp r5.yzw, r6.y, c39.xxyz
    mul_pp r5.xyz, r5.x, r5.yzww
    mad_pp r5.xyz, r1.z, r5, r12
    mad_pp r4.xyz, r0, r4.w, -r4
    nrm_pp r12.xyz, r4
    dp3_sat_pp r1.z, r12, r8
    pow r4.x, r1.z, r6.x
    mul_pp r12.xyz, r6.y, c47
    mul_pp r4.xyz, r4.x, r12
    mad_pp r1.yzw, r1.y, r4.xxyz, r5.xxyz
    mad_pp r4.xyz, r0, r4.w, -r13
    nrm_pp r5.xyz, r4
    dp3_sat_pp r4.x, r5, r8
    pow r5.x, r4.x, r6.x
    mul_pp r4.xyz, r6.y, c51
    mul_pp r4.xyz, r5.x, r4
    mad_pp r1.xyz, r1.x, r4, r1.yzww
    mad_pp r4.xyz, r0, r4.w, -c10
    nrm_pp r5.xyz, r4
    dp3_sat_pp r1.w, r5, r8
    pow r4.x, r1.w, r6.x
    mul_pp r5.xyz, r6.y, c37
    mul_pp r4.xyz, r4.x, r5
    mad_pp r1.xyz, r4, r3.w, r1
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r6.y, r4
    mad_pp r3.xyz, r0, r4.w, -r3
    mul_pp r0.xyz, r0, r4.w
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.w, r5, r8
    pow r3.x, r1.w, r6.x
    mul_pp r3.xyz, r3.x, r4
    mad_pp r1.xyz, r0.w, r3, r1
    mul_pp r1.xyz, r1, c18
    mad_pp r1.xyz, r1, v3.w, r2
    cmp r3.xy, -r7_abs.x, v0, c3.x
    cmp r3.xy, -r7_abs.y, v0.zwzw, r3
    cmp r3.xy, -r7_abs.z, v1, r3
    cmp r3.xy, -r7_abs.w, v1.zwzw, r3
    texld_pp r4, r3, s4
    mul_pp r4.x, r4.w, r4.x
    mad_pp r3.xy, r4, c0.x, c0.y
    mul_pp r4.xyz, r9, r3.y
    mad_pp r4.xyz, r3.x, r10, r4
    dp2add_pp r0.w, r3, -r3, c3.y
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad_pp r3.xyz, r0.w, r11, r4
    dp3_pp r0.w, -r0, r3
    mad_pp r1.w, r0.w, -r0.w, c3.y
    mad_pp r1.w, r1.w, -c2.x, c2.y
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    mad_pp r0.w, r0.w, c1.w, r1.w
    mul_pp r3.xyz, r3, r0.w
    mad_pp r3.xyz, r0, -c1.w, -r3
    texld_pp r4, r3, s6
    mul r3.xyz, r4, c63.x
    mad_pp r3.xyz, r3, r4.w, r4
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r1.w, r4.x, -r4.z, r4.z
    mad_pp r0.w, r3.w, r1.w, r0.w
    dp3 r1.w, -r0, r8
    add r1.w, r1.w, r1.w
    mad_pp r0.xyz, r8, -r1.w, -r0
    texld_pp r4, r0, s5
    mul r0.xyz, r4, c63.x
    mad_pp r0.xyz, r0, r4.w, r4
    mad_pp r0.xyz, r0, r0.w, -r3
    mov_sat_pp r0.w, v3.w
    mad_pp r0.xyz, r0.w, r0, r3
    add_pp r2.xyz, r0, r1
    mul_pp r0, r2, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 292 instruction slots used (7 texture, 285 arithmetic)
