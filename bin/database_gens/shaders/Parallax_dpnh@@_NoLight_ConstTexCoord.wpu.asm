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
//   sampler2D sampDif;
//   sampler2D sampHeight;
//   sampler2D sampNrm;
//   sampler2D sampPower;
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
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif                    s0       1
//   sampPower                  s2       1
//   sampNrm                    s3       1
//   sampHeight                 s4       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.0299999993, 2, -1, 1
    def c1, 0.298900008, 0.586600006, 0.114399999, 0
    def c2, -2, 3, 500, 5
    def c3, 1024, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4_pp v3
    dcl_texcoord5_pp v4
    dcl_texcoord6 v5
    dcl_texcoord8 v6
    dcl_texcoord7_pp v7
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
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
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.w, c0.w
    add r0.x, r1.w, -c61.x
    cmp_pp r0.x, r0.x, c0.w, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.w
    cmp_pp r1.x, -c61.x, r1.w, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v5.z, c1.w
    add r1.y, r1.x, -v5.w
    cmp r1.z, r1.y, c1.w, r1.x
    mov r1.xyw, v5
    texldp_pp r1, r1, s13
    max r1.y, v6.z, c1.w
    add r1.z, r1.y, -v6.w
    cmp r2.z, r1.z, c1.w, r1.y
    mov r2.xyw, v6
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v7.z, c0.w, r3.x
    rcp r1.y, v5.w
    mul r1.yz, r1.y, v5.xxyw
    mad r1.yz, r1, c0.y, c0.z
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.x, r1.y, r1.z
    lrp_pp r3.x, r2.x, c0.w, r1.x
    texld_pp r1, v0.zwzw, s10
    mul_pp r1.w, r3.x, r1.w
    mov_pp r2.z, v4.w
    mov_pp r2.x, v2.w
    mov_pp r2.y, v3.w
    dp3_pp r2.z, r2, r2
    rsq_pp r2.z, r2.z
    mul_pp r2.xy, r2.z, r2
    texld_pp r3, v0, s4
    mul_pp r2.z, r3.x, c0.x
    mad r2.xy, r2, r2.z, v0
    texld_pp r3, r2, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r2.zw, r3.xyxy, c0.y, c0.z
    nrm_pp r3.xyz, v3
    mul_pp r3.xyz, r2.w, r3
    nrm_pp r4.xyz, v2
    mad_pp r3.xyz, r2.z, r4, r3
    dp2add_pp r2.z, r2.zwzw, -r2.zwzw, c0.w
    rsq_pp r2.z, r2.z
    rcp_pp r2.z, r2.z
    nrm_pp r4.xyz, v4
    mad_pp r3.xyz, r2.z, r4, r3
    dp3_pp r2.z, r3, -c10
    mul r4.xyz, r2.z, c36
    mul_pp r4.xyz, r1.w, r4
    cmp_pp r4.xyz, r2.z, r4, c1.w
    dp3_pp r2.z, r3, -r0.yzww
    mul_pp r5.xyz, c58.w, c58
    mul_pp r5.xyz, r2.z, r5
    cmp_pp r5.xyz, r2.z, r5, c1.w
    mad_pp r4.xyz, r0.x, r5, r4
    mul_pp r5.xyz, r1, r1
    dp3_pp r2.z, r5, c1
    mad_pp r1.xyz, r1, r1, -r2.z
    mad_sat_pp r1.xyz, r1, c71.w, r2.z
    mul_pp r1.xyz, r1, c70
    mad_pp r1.xyz, r1, c17, r4
    mul_pp r1.xyz, r1, c16
    add_pp r4.xyz, c22, -v1
    dp3_pp r2.z, r4, r4
    rsq_pp r2.z, r2.z
    mad_pp r0.yzw, r4.xxyz, r2.z, -r0
    mad_pp r4.xyz, r4, r2.z, -c10
    nrm_pp r5.xyz, r4
    dp3_sat_pp r2.z, r5, r3
    nrm_pp r4.xyz, r0.yzww
    dp3_sat_pp r0.y, r4, r3
    texld_pp r3, r2, s2
    texld_pp r4, r2, s0
    mul_pp r0.zw, r3.x, c20.xyyz
    mul_pp r0.zw, r0, c2
    max_pp r2.x, r0.z, c0.w
    min r0.z, r2.x, c3.x
    pow r2.x, r0.y, r0.z
    pow r3.x, r2.z, r0.z
    mul_pp r2.yzw, c59.w, c59.xxyz
    mul_pp r2.yzw, r0.w, r2
    mul_pp r0.yzw, r0.w, c37.xxyz
    mul_pp r0.yzw, r3.x, r0
    mul_pp r2.xyz, r2.x, r2.yzww
    mul_pp r2.xyz, r0.x, r2
    mad_pp r0.xyz, r0.yzww, r1.w, r2
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v7.w
    mad_pp r0.xyz, r1, r4, r0
    mul_pp r0.w, r4.w, c16.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v7.y
    mad_pp oC0.xyz, r1, v7.x, r0
    mov_pp oC0.w, r1.w

// approximately 133 instruction slots used (7 texture, 126 arithmetic)
