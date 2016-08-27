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
//   float4 g_OffsetParam;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampOffset0;
//   sampler2D sampOffsetMask;
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
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_OffsetParam                         c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampOffset0                           s3       1
//   sampOffsetMask                        s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, -2, 3, 500, 5
    def c2, 2, -1, 3, 1
    def c3, 1024, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
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
    mov_pp r1.w, c2.w
    add r0.x, r1.w, -c61.x
    cmp_pp r0.x, r0.x, c2.w, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.w
    cmp_pp r1.x, -c61.x, r1.w, r1.x
    mul_pp r0.x, r0.x, r1.x
    texld_pp r1, v0, s3
    mad r1.xy, r1.wxzw, c2.x, c2.y
    mul_pp r1.xy, r1, c150
    texld r2, v0, s5
    mul_pp r1.xy, r1, r2.x
    mul_pp r1.xy, r1, v7.w
    mad r1.xy, r1, c2.z, v0
    texld_pp r2, r1, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r1.zw, r2.xyxy, c2.x, c2.y
    nrm_pp r2.xyz, v6
    mul_pp r2.xyz, r1.w, r2
    nrm_pp r3.xyz, v5
    mad_pp r2.xyz, r1.z, r3, r2
    dp2add_pp r1.z, r1.zwzw, -r1.zwzw, c2.w
    rsq_pp r1.z, r1.z
    rcp_pp r1.z, r1.z
    nrm_pp r3.xyz, v2
    mad_pp r2.xyz, r1.z, r3, r2
    add_pp r3.xyz, c22, -v1
    dp3_pp r1.z, r3, r3
    rsq_pp r1.z, r1.z
    mad_pp r4.xyz, r3, r1.z, -r0.yzww
    dp3_pp r0.y, r2, -r0.yzww
    mad_pp r3.xyz, r3, r1.z, -c10
    nrm_pp r5.xyz, r3
    dp3_sat_pp r0.z, r5, r2
    nrm_pp r3.xyz, r4
    dp3_sat_pp r0.w, r3, r2
    dp3_pp r1.z, r2, -c10
    texld_pp r2, r1, s1
    texld_pp r3, r1, s0
    mul_pp r1.xy, r2.x, c20.yzzw
    mul_pp r1.xy, r1, c1.zwzw
    max_pp r2.x, r1.x, c2.w
    min r1.x, r2.x, c3.x
    pow r2.x, r0.w, r1.x
    pow r2.y, r0.z, r1.x
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r1.y, r4
    mul_pp r1.xyw, r1.y, c37.xyzz
    mul_pp r1.xyw, r2.y, r1
    mul_pp r2.xyz, r2.x, r4
    mul_pp r2.xyz, r0.x, r2
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, c2.x, c2.y
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r2.w, r0.z, r0.w
    max r0.z, v3.z, c0.w
    add r0.w, r0.z, -v3.w
    cmp r4.z, r0.w, c0.w, r0.z
    mov r4.xyw, v3
    texldp_pp r4, r4, s13
    lrp_pp r0.z, v4.z, c2.w, r4.x
    lrp_pp r4.x, r2.w, c2.w, r0.z
    mad_pp r1.xyw, r1, r4.x, r2.xyzz
    mul_pp r1.xyw, r1, c18.xyzz
    mul_pp r1.xyw, r1, v2.w
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c0.w
    mul r2.xyz, r1.z, c36
    mul_pp r2.xyz, r4.x, r2
    cmp_pp r2.xyz, r1.z, r2, c0.w
    mad_pp r0.xyz, r0.x, r0.yzww, r2
    texld_pp r2, v0.zwzw, s10
    mul_pp r4.yzw, r2.xxyz, r2.xxyz
    dp3_pp r0.w, r4.yzww, c0
    mad_pp r2.xyz, r2, r2, -r0.w
    mad_sat_pp r2.xyz, r2, c71.w, r0.w
    mul_pp r2.xyz, r2, c70
    mul_pp r4.yzw, r2.xxyz, c17.xxyz
    mul r4.yzw, r4, c70.w
    mad r2.xyz, r2, c17, -r4.yzww
    mad_pp r2.xyz, r4.x, r2, r4.yzww
    add_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, c16
    mad_pp r0.xyz, r0, r3, r1.xyww
    mul_pp r0.w, r3.w, c16.w
    mul_pp r1.w, r0.w, c21.x
    add_pp r1.xyz, r0, v7
    mul_pp r0, r1, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 130 instruction slots used (7 texture, 123 arithmetic)