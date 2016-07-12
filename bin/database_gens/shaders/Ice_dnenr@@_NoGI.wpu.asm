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
//   sampler2D sampEnv;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampRef;
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
    def c2, 0.25, 4, 0, 0
    def c3, 0.583607316, 1, -1, 0
    def c4, 0, 1, 2, 3
    def c5, -1, 1, 0, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s13
    frc r0.x, c26.x
    cmp r0.y, -r0.x, c4.x, c4.y
    add r0.x, -r0.x, c26.x
    mov r1.xy, c4
    cmp r0.y, c26.x, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c4
    cmp r1.zw, -r0_abs.x, v0.xyxy, c4.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s0
    add_pp r1.z, -c61.z, c61.y
    rcp_pp r1.z, r1.z
    add r2.xyz, -c22, v2
    dp3 r1.w, r2, r2
    rsq r1.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    rcp r1.w, r1.w
    add r1.w, r1.w, -c60.z
    dp3_pp r2.w, r2, c23
    add_pp r2.w, r2.w, -c61.z
    mul_sat_pp r1.z, r1.z, r2.w
    mad_pp r2.w, r1.z, -c0.x, -c0.w
    mul_pp r1.z, r1.z, r1.z
    mul_pp r1.z, r1.z, r2.w
    pow_sat_pp r2.w, r1.z, c61.w
    add r1.z, r1.y, -c61.x
    cmp_pp r1.z, r1.z, c4.y, r2.w
    add r2.w, -c60.z, c60.w
    rcp r2.w, r2.w
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c4.y
    cmp_pp r1.y, -c61.x, r1.y, r1.w
    mul_pp r1.y, r1.z, r1.y
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r3.xyz, -c46, v2
    dp3 r1.w, r3, r3
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    add r1.w, r2.w, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r4.xyz, -c38, v2
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r3.w, -c40.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.zw, -r1, c4.y
    add r2.w, -c44.z, c44.w
    rcp r2.w, r2.w
    add r5.xyz, -c42, v2
    dp3 r3.w, r5, r5
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r5.xyz, r3.w, r5
    add r3.w, r4.w, -c44.z
    mul_sat r2.w, r2.w, r3.w
    add_pp r2.w, -r2.w, c4.y
    frc r6.xy, c27
    cmp r6.zw, -r6.xyxy, c4.x, c4.y
    add r6.xy, -r6, c27
    cmp r6.zw, c27.xyxy, r1.x, r6
    add r6.xy, r6.zwzw, r6
    add r7, r6.x, -c4
    add r6, r6.y, -c4
    cmp r8.xy, -r7_abs.x, v0, c4.x
    cmp r7.xy, -r7_abs.y, v0.zwzw, r8
    cmp r7.xy, -r7_abs.z, v1, r7
    cmp r7.xy, -r7_abs.w, v1.zwzw, r7
    texld_pp r7, r7, s3
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c0.x, c0.y
    dp2add_pp r1.x, r7, -r7, c4.y
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r8, v8.xyzx
    mul_pp r9, r7.y, r8.wyzw
    nrm_pp r10, v7.xyzx
    mad_pp r7, r7.x, r10.wyzw, r9
    nrm_pp r9, v3.xyzx
    mad_pp r7, r1.x, r9.wyzw, r7
    dp3_pp r1.x, r7.wyzw, -r5
    mul_pp r11.xyz, r1.x, c43
    cmp_pp r11.xyz, r1.x, r11, c4.x
    mul_pp r11.xyz, r2.w, r11
    dp3_pp r1.x, r7.wyzw, -r4
    mul_pp r12.xyz, r1.x, c39
    cmp_pp r12.xyz, r1.x, r12, c4.x
    mad_pp r11.xyz, r1.w, r12, r11
    dp3_pp r1.x, r7.wyzw, -r3
    mul_pp r12.xyz, r1.x, c47
    cmp_pp r12.xyz, r1.x, r12, c4.x
    mad_pp r11.xyz, r1.z, r12, r11
    add r1.x, -c52.z, c52.w
    rcp r1.x, r1.x
    add r12.xyz, -c50, v2
    dp3 r3.w, r12, r12
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r12.xyz, r3.w, r12
    add r3.w, r4.w, -c52.z
    mul_sat r1.x, r1.x, r3.w
    add_pp r1.x, -r1.x, c4.y
    dp3_pp r3.w, r7.wyzw, -r12
    mul_pp r13.xyz, r3.w, c51
    cmp_pp r13.xyz, r3.w, r13, c4.x
    mad_pp r11.xyz, r1.x, r13, r11
    max r3.w, v4.z, c4.x
    add r4.w, r3.w, -v4.w
    cmp r13.z, r4.w, c4.x, r3.w
    mov r13.xyw, v4
    texldp_pp r13, r13, s13
    max r3.w, v5.z, c4.x
    add r4.w, r3.w, -v5.w
    cmp r14.z, r4.w, c4.x, r3.w
    mov r14.xyw, v5
    texldp_pp r14, r14, s7
    min_pp r3.w, r14.x, r13.x
    lrp_pp r4.w, v6.z, c4.y, r3.w
    rcp r3.w, v4.w
    mul r13.xy, r3.w, v4
    mad r13.xy, r13, c0.x, c0.y
    abs_sat r13.xy, r13
    add_sat r13.xy, r13, -c65.x
    mul r13.xy, r13, c65.y
    max r3.w, r13.x, r13.y
    lrp_pp r5.w, r3.w, c4.y, r4.w
    mul r3.w, r5.w, c77.w
    dp3_pp r4.w, r7.wyzw, -c10
    mul r13.xyz, r4.w, c36
    mul_pp r13.xyz, r3.w, r13
    cmp_pp r13.xyz, r4.w, r13, c4.x
    add_pp r11.xyz, r11, r13
    dp3_pp r4.w, r7.wyzw, -r2
    mul_pp r13.xyz, c58.w, c58
    mul_pp r13.xyz, r4.w, r13
    cmp_pp r13.xyz, r4.w, r13, c4.x
    mad_pp r11.xyz, r1.y, r13, r11
    mov r13.xyz, c79
    add r13.xyz, -r13, c80
    mad_pp r14.xyz, r7.wyzw, c0.z, c0.z
    mad r13.xyz, r14.y, r13, c79
    mul_pp r15.xyz, r7.wyzw, r7.wyzw
    mul r13.xyz, r13, r15.y
    mov r16.xyz, c77
    add r16.xyz, -r16, c78
    mad r14.xyw, r14.x, r16.xyzz, c77.xyzz
    mad_pp r13.xyz, r15.x, r14.xyww, r13
    mov r16.xyz, c81
    add r14.xyw, -r16.xyzz, c82.xyzz
    mad r14.xyz, r14.z, r14.xyww, c81
    mad_pp r13.xyz, r15.z, r14, r13
    mad_pp r11.xyz, r13, c17, r11
    mul_pp r11.xyz, r11, c16
    add_pp r13, c22.xyzx, -v2.xyzx
    dp3_pp r4.w, r13.yzww, r13.yzww
    rsq_pp r4.w, r4.w
    mad_pp r5.xyz, r13, r4.w, -r5
    nrm_pp r14.xyz, r5
    dp3_sat_pp r5.x, r14, r7
    mov_pp r14.xy, c1
    mul_pp r5.yz, r14.xxyw, c20
    max_pp r11.w, r5.y, c4.y
    min r5.y, r11.w, c1.z
    pow r11.w, r5.x, r5.y
    mul_pp r14.xyz, r5.z, c43
    mul_pp r14.xyz, r11.w, r14
    mul_pp r14.xyz, r2.w, r14
    mad_pp r4.xyz, r13, r4.w, -r4
    nrm_pp r15.xyz, r4
    dp3_sat_pp r2.w, r15, r7
    pow r4.x, r2.w, r5.y
    mul_pp r15.xyz, r5.z, c39
    mul_pp r4.xyz, r4.x, r15
    mad_pp r4.xyz, r1.w, r4, r14
    mad_pp r3.xyz, r13, r4.w, -r3
    nrm_pp r14.xyz, r3
    dp3_sat_pp r1.w, r14, r7
    pow r2.w, r1.w, r5.y
    mul_pp r3.xyz, r5.z, c47
    mul_pp r3.xyz, r2.w, r3
    mad_pp r3.xyz, r1.z, r3, r4
    mad_pp r4.xyz, r13, r4.w, -r12
    nrm_pp r12.xyz, r4
    dp3_sat_pp r1.z, r12, r7
    pow r2.w, r1.z, r5.y
    mul_pp r4.xyz, r5.z, c51
    mul_pp r4.xyz, r2.w, r4
    mad_pp r1.xzw, r1.x, r4.xyyz, r3.xyyz
    mad_pp r3.xyz, r13, r4.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r2.w, r4, r7
    pow r3.x, r2.w, r5.y
    mul_pp r4.xyz, r5.z, c37
    mul_pp r3.xyz, r3.x, r4
    mad_pp r1.xzw, r3.xyyz, r3.w, r1
    mul_pp r3.xyz, c59.w, c59
    mul_pp r3.xyz, r5.z, r3
    mad_pp r2.xyz, r13, r4.w, -r2
    mul_pp r4, r4.w, r13
    nrm_pp r12.xyz, r2
    dp3_sat_pp r2.x, r12, r7
    pow r11.w, r2.x, r5.y
    mul_pp r2.xyz, r3, r11.w
    mad_pp r1.xyz, r1.y, r2, r1.xzww
    mul_pp r1.xyz, r1, c18
    mul_pp r1.xyz, r1, v3.w
    mad_pp r0.xyz, r11, r0, r1
    mul_pp r1.w, r0.w, c16.w
    cmp r2.xy, -r6_abs.x, v0, c4.x
    cmp r2.xy, -r6_abs.y, v0.zwzw, r2
    cmp r2.xy, -r6_abs.z, v1, r2
    cmp r2.xy, -r6_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s4
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.x, c0.y
    mul_pp r5, r8, r2.y
    mad_pp r5, r2.x, r10, r5
    dp2add_pp r0.w, r2, -r2, c4.y
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad r2, r0.w, r9, r5
    dp3_pp r0.w, r4.yzww, r2.yzww
    mad_pp r3.x, r0.w, -r0.w, c4.y
    mad_pp r3.x, r3.x, -c3.x, c3.y
    rsq_pp r3.x, r3.x
    rcp_pp r3.x, r3.x
    mad r0.w, r0.w, c1.w, -r3.x
    mul_pp r5, r4.wyzw, c1.w
    mad r2, r2, r0.w, -r5
    mad r5, r2.wyzw, c5.xxyz, c5.zzzw
    mul r6, r2, c3.yzzw
    cmp_pp r2, r2.z, r5, r6
    add_pp r0.w, r2.z, c4.y
    rcp r0.w, r0.w
    mad_pp r2.xy, r2.yxzw, r0.w, c4.y
    mad_pp r3.x, r2.y, c2.x, r2.w
    mul_pp r3.y, r2.x, c0.z
    texld_pp r2, r3, s6
    mul r3.xyz, r2, c63.x
    mad_pp r2.xyz, r3, r2.w, r2
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r2.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, r3.w, r2.w, r0.w
    dp3_pp r2.w, r4.yzww, r7.yzww
    add_pp r2.w, r2.w, r2.w
    mad r3, r2.w, r7, -r4
    mad r4, r3.wyzw, c5.xxyz, c5.zzzw
    mul r5, r3, c3.yzzw
    cmp_pp r3, r3.z, r4, r5
    add_pp r2.w, r3.z, c4.y
    rcp r2.w, r2.w
    mad_pp r3.xy, r3.yxzw, r2.w, c4.y
    mad_pp r4.x, r3.y, c2.x, r3.w
    mul_pp r4.y, r3.x, c0.z
    texld_pp r3, r4, s5
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mad_pp r3.xyz, r3, r0.w, -r2
    mov_sat_pp r0.w, v3.w
    mad_pp r2.xyz, r0.w, r3, r2
    add_pp r1.xyz, r0, r2
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.y
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 308 instruction slots used (7 texture, 301 arithmetic)
