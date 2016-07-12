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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
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
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif                    s0       1
//   sampNrm0                   s3       1
//   sampNrm1                   s4       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, -2, 3, 500, 5
    def c2, -1, 1, 0, 0.5
    def c3, 0.25, 4, 0, 0
    def c4, 2, -1, 1, 0
    def c5, 0.583607316, 1, 0.763941944, 0.5
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s10
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
    mad_pp r1.y, r0.x, c1.x, c1.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r1.z, c4.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c4.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r1.yzw, -c46.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c48.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c4.z
    add r2.x, -c40.z, c40.w
    rcp r2.x, r2.x
    add r2.yzw, -c38.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c40.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c4.z
    add r3.x, -c44.z, c44.w
    rcp r3.x, r3.x
    add r3.yzw, -c42.xxyz, v1.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c44.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c4.z
    texld_pp r4, v0, s3
    mul_pp r4.x, r4.w, r4.x
    mad_pp r4.xy, r4, c4.x, c4.y
    dp2add_pp r4.z, r4, -r4, c4.z
    rsq_pp r4.z, r4.z
    rcp_pp r4.z, r4.z
    nrm_pp r5, v7.xyzx
    mul_pp r6, r4.y, r5.wyzw
    nrm_pp r7, v6.xyzx
    mad_pp r6, r4.x, r7.wyzw, r6
    nrm_pp r8, v2.xyzx
    mad_pp r4, r4.z, r8.wyzw, r6
    dp3_pp r6.x, r4.wyzw, -r3.yzww
    mul_pp r6.yzw, r6.x, c43.xxyz
    cmp_pp r6.xyz, r6.x, r6.yzww, c4.w
    mul_pp r6.xyz, r3.x, r6
    dp3_pp r6.w, r4.wyzw, -r2.yzww
    mul_pp r9.xyz, r6.w, c39
    cmp_pp r9.xyz, r6.w, r9, c4.w
    mad_pp r6.xyz, r2.x, r9, r6
    dp3_pp r6.w, r4.wyzw, -r1.yzww
    mul_pp r9.xyz, r6.w, c47
    cmp_pp r9.xyz, r6.w, r9, c4.w
    mad_pp r6.xyz, r1.x, r9, r6
    add r6.w, -c52.z, c52.w
    rcp r6.w, r6.w
    add r9.xyz, -c50, v1
    dp3 r9.w, r9, r9
    rsq r9.w, r9.w
    rcp r10.x, r9.w
    mul_pp r9.xyz, r9.w, r9
    add r9.w, r10.x, -c52.z
    mul_sat r6.w, r6.w, r9.w
    add_pp r6.w, -r6.w, c4.z
    dp3_pp r9.w, r4.wyzw, -r9
    mul_pp r10.xyz, r9.w, c51
    cmp_pp r10.xyz, r9.w, r10, c4.w
    mad_pp r6.xyz, r6.w, r10, r6
    max r9.w, v3.z, c4.w
    add r10.x, r9.w, -v3.w
    cmp r10.z, r10.x, c4.w, r9.w
    mov r10.xyw, v3
    texldp_pp r10, r10, s13
    max r9.w, v4.z, c4.w
    add r10.y, r9.w, -v4.w
    cmp r11.z, r10.y, c4.w, r9.w
    mov r11.xyw, v4
    texldp_pp r11, r11, s7
    min_pp r9.w, r11.x, r10.x
    lrp_pp r10.x, v5.z, c4.z, r9.w
    rcp r9.w, v3.w
    mul r10.yz, r9.w, v3.xxyw
    mad r10.yz, r10, c4.x, c4.y
    abs_sat r10.yz, r10
    add_sat r10.yz, r10, -c65.x
    mul r10.yz, r10, c65.y
    max r9.w, r10.y, r10.z
    lrp_pp r11.x, r9.w, c4.z, r10.x
    texld_pp r10, v0.zwzw, s10
    mul r9.w, r11.x, r10.w
    dp3_pp r10.w, r4.wyzw, -c10
    mul r11.xyz, r10.w, c36
    mul_pp r11.xyz, r9.w, r11
    cmp_pp r11.xyz, r10.w, r11, c4.w
    add_pp r6.xyz, r6, r11
    mul_pp r11.xyz, c58.w, c58
    dp3_pp r10.w, r4.wyzw, -r0.yzww
    mul_pp r11.xyz, r10.w, r11
    cmp_pp r11.xyz, r10.w, r11, c4.w
    mad_pp r6.xyz, r0.x, r11, r6
    mul_pp r11.xyz, r10, r10
    dp3_pp r10.w, r11, c0
    mad_pp r10.xyz, r10, r10, -r10.w
    mad_sat_pp r10.xyz, r10, c71.w, r10.w
    mul_pp r10.xyz, r10, c70
    mad_pp r6.xyz, r10, c17, r6
    mul_pp r6.xyz, r6, c16
    texld_pp r10, v0, s0
    mul_pp r11.xyz, r6, r10
    mul_pp r11.w, r10.w, c16.w
    mul_pp r10, r11, v8
    add_pp r11, c22.xyzx, -v1.xyzx
    dp3_pp r6.x, r11.yzww, r11.yzww
    rsq_pp r6.x, r6.x
    mad_pp r3.yzw, r11.xxyz, r6.x, -r3
    nrm_pp r12.xyz, r3.yzww
    dp3_sat_pp r3.y, r12, r4
    mov_pp r3.zw, c1
    mul_pp r3.zw, r3, c20.xyyz
    max_pp r6.y, r3.z, c4.z
    min r3.z, r6.y, c0.w
    pow r6.y, r3.y, r3.z
    mul_pp r12.xyz, r3.w, c43
    mul_pp r12.xyz, r6.y, r12
    mul_pp r12.xyz, r3.x, r12
    mad_pp r2.yzw, r11.xxyz, r6.x, -r2
    nrm_pp r13.xyz, r2.yzww
    dp3_sat_pp r2.y, r13, r4
    pow r6.y, r2.y, r3.z
    mul_pp r2.yzw, r3.w, c39.xxyz
    mul_pp r2.yzw, r6.y, r2
    mad_pp r2.xyz, r2.x, r2.yzww, r12
    mad_pp r1.yzw, r11.xxyz, r6.x, -r1
    nrm_pp r12.xyz, r1.yzww
    dp3_sat_pp r1.y, r12, r4
    pow r2.w, r1.y, r3.z
    mul_pp r1.yzw, r3.w, c47.xxyz
    mul_pp r1.yzw, r2.w, r1
    mad_pp r1.xyz, r1.x, r1.yzww, r2
    mad_pp r2.xyz, r11, r6.x, -r9
    nrm_pp r9.xyz, r2
    dp3_sat_pp r1.w, r9, r4
    pow r2.x, r1.w, r3.z
    mul_pp r2.yzw, r3.w, c51.xxyz
    mul_pp r2.xyz, r2.x, r2.yzww
    mad_pp r1.xyz, r6.w, r2, r1
    mul_pp r2.xyz, r3.w, c37
    mad_pp r6.yzw, r11.xxyz, r6.x, -c10.xxyz
    nrm_pp r9.xyz, r6.yzww
    dp3_sat_pp r1.w, r9, r4
    pow r2.w, r1.w, r3.z
    mul_pp r2.xyz, r2.w, r2
    mad_pp r1.xyz, r2, r9.w, r1
    mul_pp r2.xyz, c59.w, c59
    mul_pp r2.xyz, r3.w, r2
    mad_pp r0.yzw, r11.xxyz, r6.x, -r0
    mul_pp r6, r6.x, r11
    nrm_pp r9.xyz, r0.yzww
    dp3_sat_pp r0.y, r9, r4
    pow r1.w, r0.y, r3.z
    mul_pp r0.yzw, r1.w, r2.xxyz
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r0.xyz, r0, c18
    mad_pp r0.xyz, r0, v2.w, r10
    texld_pp r1, v0, s4
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c4.x, c4.y
    mul_pp r2, r5, r1.y
    mad_pp r2, r1.x, r7, r2
    dp2add_pp r0.w, r1, -r1, c4.z
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad r1, r0.w, r8, r2
    dp3_pp r0.w, r6.yzww, r1.yzww
    mad_pp r2.x, r0.w, -r0.w, c4.z
    mad_pp r2.x, r2.x, -c5.x, c5.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    mad r0.w, r0.w, c5.z, -r2.x
    mul_pp r2, r6.wyzw, c5.z
    mad r1, r1, r0.w, -r2
    mad r2, r1.wyzw, c2.xxyz, c2.zzzw
    mul r3, r1, c4.zyyw
    cmp_pp r1, r1.z, r2, r3
    add_pp r0.w, r1.z, c4.z
    rcp r0.w, r0.w
    mad_pp r1.xy, r1.yxzw, r0.w, c4.z
    mad_pp r2.x, r1.y, c3.x, r1.w
    mul_pp r2.y, r1.x, c5.w
    texld_pp r1, r2, s6
    mul r2.xyz, r1, c63.x
    mad_pp r1.xyz, r2, r1.w, r1
    mul r0.w, c64.z, c64.x
    mov r2.xz, c64
    mad r1.w, r2.x, -r2.z, r2.z
    mad_pp r0.w, r9.w, r1.w, r0.w
    dp3_pp r1.w, r6.yzww, r4.yzww
    add_pp r1.w, r1.w, r1.w
    mad r2, r1.w, r4, -r6
    mad r3, r2.wyzw, c2.xxyz, c2.zzzw
    mul r4, r2, c4.zyyw
    cmp_pp r2, r2.z, r3, r4
    add_pp r1.w, r2.z, c4.z
    rcp r1.w, r1.w
    mad_pp r2.xy, r2.yxzw, r1.w, c4.z
    mad_pp r3.x, r2.y, c3.x, r2.w
    mul_pp r3.y, r2.x, c5.w
    texld_pp r2, r3, s5
    mul r3.xyz, r2, c63.x
    mad_pp r2.xyz, r3, r2.w, r2
    mad_pp r2.xyz, r2, r0.w, -r1
    mov_sat_pp r0.w, v2.w
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r10.xyz, r0, r1
    mul_pp r0, r10, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 277 instruction slots used (8 texture, 269 arithmetic)
