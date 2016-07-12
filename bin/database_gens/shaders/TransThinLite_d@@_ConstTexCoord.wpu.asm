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
//   float4 g_TransColorMask;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
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
//   sampler2D sampDif;
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
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   g_TransColorMask           c150     1
//   sampDif                    s0       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, 1, 2, -1, 1024
    def c2, 500, 5, -2, 3
    def c3, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl vFace
    dcl_2d s0
    dcl_2d s7
    dcl_2d s10
    dcl_2d s13
    max r0.x, v3.z, c0.w
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c0.w, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c0.w
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c0.w, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c1.x, r2.x
    rcp r0.y, v3.w
    mul r0.yz, r0.y, v3.xxyw
    mad r0.yz, r0, c1.y, c1.z
    abs_sat r0.yz, r0
    add_sat r0.yz, r0, -c65.x
    mul r0.yz, r0, c65.y
    max r1.x, r0.y, r0.z
    lrp_pp r2.x, r1.x, c1.x, r0.x
    texld_pp r0, v0.zwzw, s10
    mul_pp r0.w, r2.x, r0.w
    mul r1.xyz, r0.w, c37
    mul r2.xyz, r0.w, c36
    cmp_pp r3.xyz, vFace, v2, -v2
    nrm_pp r4.xyz, r3
    dp3_pp r0.w, r4, -c10
    mov_sat_pp r1.w, r0.w
    mov_sat_pp r0.w, -r0.w
    mul r1.xyz, r1.w, r1
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r3.xyz, -c38, v1
    dp3 r3.w, r3, r3
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r3.xyz, r3.w, r3
    add r3.w, r4.w, -c40.z
    mul_sat r2.w, r2.w, r3.w
    add_pp r2.w, -r2.w, c1.x
    mul r5.xyz, r2.w, c39
    dp3_pp r2.w, r4, -r3
    mov_sat_pp r3.w, r2.w
    mov_sat_pp r2.w, -r2.w
    mul r6.xyz, r2.w, r5
    mul r5.xyz, r3.w, r5
    mad_pp r6.xyz, r2, r0.w, r6
    mad_pp r2.xyz, r2, r1.w, r5
    add_pp r7.xyz, c22, -v1
    dp3_pp r0.w, r7, r7
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r7, r0.w, -r3
    nrm_pp r8.xyz, r3
    dp3_sat_pp r1.w, r8, r4
    mov_pp r3.xy, c2
    mul_pp r3.xy, r3, c20.yzzw
    max_pp r2.w, r3.x, c1.x
    mul_pp r3.xyz, r3.y, c18
    min r3.w, r2.w, c1.w
    pow_pp r2.w, r1.w, r3.w
    mul r5.xyz, r2.w, r5
    mad_pp r8.xyz, r7, r0.w, -c10
    nrm_pp r9.xyz, r8
    dp3_sat_pp r1.w, r9, r4
    pow_pp r2.w, r1.w, r3.w
    mad_pp r1.xyz, r1, r2.w, r5
    add r1.w, -c44.z, c44.w
    rcp r1.w, r1.w
    add r5.xyz, -c42, v1
    dp3 r2.w, r5, r5
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r5.xyz, r2.w, r5
    add r2.w, r4.w, -c44.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c1.x
    mul r8.xyz, r1.w, c43
    dp3_pp r1.w, r4, -r5
    mad_pp r5.xyz, r7, r0.w, -r5
    nrm_pp r9.xyz, r5
    dp3_sat_pp r2.w, r9, r4
    pow_pp r4.w, r2.w, r3.w
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r5.xyz, r8, r1.w, r6
    mul r6.xyz, r2.w, r8
    mad_pp r2.xyz, r8, r2.w, r2
    mad_pp r1.xyz, r6, r4.w, r1
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r6.xyz, -c46, v1
    dp3 r2.w, r6, r6
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    add r2.w, r4.w, -c48.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c1.x
    mul r8.xyz, r1.w, c47
    dp3_pp r1.w, r4, -r6
    mad_pp r6.xyz, r7, r0.w, -r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r2.w, r9, r4
    pow_pp r4.w, r2.w, r3.w
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r5.xyz, r8, r1.w, r5
    mul r6.xyz, r2.w, r8
    mad_pp r2.xyz, r8, r2.w, r2
    mad_pp r1.xyz, r6, r4.w, r1
    add r1.w, -c52.z, c52.w
    rcp r1.w, r1.w
    add r6.xyz, -c50, v1
    dp3 r2.w, r6, r6
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    add r2.w, r4.w, -c52.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c1.x
    mul r8.xyz, r1.w, c51
    dp3_pp r1.w, r4, -r6
    mad_pp r6.xyz, r7, r0.w, -r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r2.w, r9, r4
    pow_pp r4.w, r2.w, r3.w
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r5.xyz, r8, r1.w, r5
    mul r6.xyz, r2.w, r8
    mad_pp r2.xyz, r8, r2.w, r2
    mad_pp r1.xyz, r6, r4.w, r1
    add_pp r1.w, -c61.z, c61.y
    rcp_pp r1.w, r1.w
    add r6.xyz, -c22, v1
    dp3 r2.w, r6, r6
    rsq r2.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    rcp r2.w, r2.w
    add r2.w, r2.w, -c60.z
    dp3_pp r4.w, r6, c23
    add_pp r4.w, r4.w, -c61.z
    mul_sat_pp r1.w, r1.w, r4.w
    mad_pp r4.w, r1.w, c2.z, c2.w
    mul_pp r1.w, r1.w, r1.w
    mul_pp r1.w, r1.w, r4.w
    pow_sat_pp r4.w, r1.w, c61.w
    mov r8.x, c1.x
    add r1.w, r8.x, -c61.x
    cmp_pp r1.w, r1.w, c1.x, r4.w
    add r4.w, -c60.z, c60.w
    rcp r4.w, r4.w
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.w, -r2.w, c1.x
    cmp_pp r2.w, -c61.x, r8.x, r2.w
    mul_pp r1.w, r1.w, r2.w
    mul_pp r8.xyz, c59.w, c59
    mul r8.xyz, r1.w, r8
    dp3_pp r2.w, r4, -r6
    mad_pp r6.xyz, r7, r0.w, -r6
    nrm_pp r7.xyz, r6
    dp3_sat_pp r0.w, r7, r4
    pow_pp r4.x, r0.w, r3.w
    mov_sat_pp r0.w, r2.w
    mov_sat_pp r2.w, -r2.w
    mul r4.yzw, r0.w, r8.xxyz
    mad_pp r1.xyz, r4.yzww, r4.x, r1
    mul_pp r1.xyz, r3, r1
    mul_pp r3.xyz, r0, r0
    dp3_pp r3.x, r3, c0
    mad_pp r0.xyz, r0, r0, -r3.x
    mad_sat_pp r0.xyz, r0, c71.w, r3.x
    mul_pp r0.xyz, r0, c70
    mul_pp r3.xyz, c58.w, c58
    mul r3.xyz, r1.w, r3
    mad_pp r2.xyz, r3, r0.w, r2
    mad_pp r3.xyz, r3, r2.w, r5
    mul_pp r3.xyz, r3, c16
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r0, c17, r2
    texld_pp r2, v0, s0
    mul_pp r3.xyz, r2, r3
    mul r3.xyz, r3, c150
    mad_pp r0.xyz, r0, r2, r3
    mul_pp r2.w, r2.w, c16.w
    mad_pp r2.xyz, r1, v2.w, r0
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 219 instruction slots used (4 texture, 215 arithmetic)
