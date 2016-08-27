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
//   float4 mrgEdgeEmissionParam;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
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
//   mrgTexcoordIndex                      c26      2
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
//   mrgPlayableParam                      c86      1
//   mrgEdgeEmissionParam                  c88      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 500, 5, 4, 0
    def c3, 0, 1, 2, 3
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
    dcl_2d s2
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v4.w
    mul r0.xy, r0.x, v4
    mad r0.xy, r0, c0.y, c0.z
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v4.z, c3.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c3.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v5.z, c3.y, r0.x
    lrp_pp r0.x, r1.x, c3.y, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c1
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r0.yzw, r0, c70.xxyz
    mul_pp r1.x, r0.x, r1.w
    mul_pp r1.yzw, r0, c17.xxyz
    mul r1.yzw, r1, c70.w
    mad r0.yzw, r0, c17.xxyz, -r1
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    frc r0.w, c27.x
    cmp r1.y, -r0.w, c3.x, c3.y
    add r0.w, -r0.w, c27.x
    mov r2.xy, c3
    cmp r1.y, c27.x, r2.x, r1.y
    add r0.w, r0.w, r1.y
    add r3, r0.w, -c3
    cmp r1.yz, -r3_abs.x, v0.xxyw, c3.x
    cmp r1.yz, -r3_abs.y, v0.xzww, r1
    cmp r1.yz, -r3_abs.z, v1.xxyw, r1
    cmp r1.yz, -r3_abs.w, v1.xzww, r1
    texld_pp r3, r1.yzzw, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r1.yz, r3.xxyw, c0.y, c0.z
    nrm_pp r3.xyz, v7
    mul_pp r3.xyz, r1.z, r3
    nrm_pp r4.xyz, v6
    mad_pp r3.xyz, r1.y, r4, r3
    dp2add_pp r0.w, r1.yzzw, -r1.yzzw, c3.y
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r4.xyz, v3
    mad_pp r1.yzw, r0.w, r4.xxyz, r3.xxyz
    dp3_pp r0.w, r1.yzww, -c10
    mul r3.xyz, r0.w, c36
    mul_pp r3.xyz, r1.x, r3
    cmp_pp r3.xyz, r0.w, r3, c3.x
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r4.xyz, -c22, v2
    dp3 r2.z, r4, r4
    rsq r2.z, r2.z
    mul_pp r4.xyz, r2.z, r4
    rcp r2.z, r2.z
    add r2.z, r2.z, -c60.z
    dp3_pp r2.w, r4, c23
    add_pp r2.w, r2.w, -c61.z
    mul_sat_pp r0.w, r0.w, r2.w
    mad_pp r2.w, r0.w, -c0.y, -c0.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.w
    pow_sat_pp r2.w, r0.w, c61.w
    add r0.w, r2.y, -c61.x
    cmp_pp r0.w, r0.w, c3.y, r2.w
    add r2.w, -c60.z, c60.w
    rcp r2.w, r2.w
    mul_sat r2.z, r2.w, r2.z
    add_pp r2.z, -r2.z, c3.y
    cmp_pp r2.y, -c61.x, r2.y, r2.z
    mul_pp r0.w, r0.w, r2.y
    dp3_pp r2.y, r1.yzww, -r4
    mul_pp r5.xyz, c58.w, c58
    mul_pp r5.xyz, r2.y, r5
    cmp_pp r2.yzw, r2.y, r5.xxyz, c3.x
    mad_pp r2.yzw, r0.w, r2, r3.xxyz
    add_pp r0.xyz, r0, r2.yzww
    mul_pp r0.xyz, r0, c16
    add_pp r2.yzw, c22.xxyz, -v2.xxyz
    dp3_pp r3.x, r2.yzww, r2.yzww
    rsq_pp r3.x, r3.x
    mad_pp r3.yzw, r2, r3.x, -r4.xxyz
    nrm_pp r4.xyz, r3.yzww
    dp3_sat_pp r3.y, r4, r1.yzww
    frc r3.zw, c26.xyxw
    cmp r4.xy, -r3.zwzw, c3.x, c3.y
    add r3.zw, -r3, c26.xyxw
    cmp r4.xy, c26.xwzw, r2.x, r4
    add r3.zw, r3, r4.xyxy
    add r4, r3.w, -c3
    add r5, r3.z, -c3
    cmp r3.zw, -r4_abs.x, v0.xyxy, c3.x
    cmp r3.zw, -r4_abs.y, v0, r3
    cmp r3.zw, -r4_abs.z, v1.xyxy, r3
    cmp r3.zw, -r4_abs.w, v1, r3
    texld_pp r4, r3.zwzw, s2
    mul_pp r3.zw, r4.x, c20.xyyz
    mul_pp r3.zw, r3, c2.xyxy
    max_pp r2.x, r3.z, c3.y
    min r3.z, r2.x, c1.w
    pow r2.x, r3.y, r3.z
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r3.w, r4
    mul_pp r6.xyz, r3.w, c37
    mul_pp r4.xyz, r2.x, r4
    mul_pp r4.xyz, r0.w, r4
    mad_pp r7.xyz, r2.yzww, r3.x, -c10
    mul_pp r2.xyz, r2.yzww, r3.x
    dp3_sat_pp r0.w, r2, r1.yzww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add r0.w, -r0.w, c3.y
    mul r2.xyz, r0.w, c88
    nrm_pp r8.xyz, r7
    dp3_sat_pp r0.w, r8, r1.yzww
    pow r1.y, r0.w, r3.z
    mul_pp r1.yzw, r1.y, r6.xxyz
    mad_pp r1.xyz, r1.yzww, r1.x, r4
    mul_pp r1.xyz, r1, c18
    mul_pp r1.xyz, r1, v3.w
    cmp r3.xy, -r5_abs.x, v0, c3.x
    cmp r3.xy, -r5_abs.y, v0.zwzw, r3
    cmp r3.xy, -r5_abs.z, v1, r3
    cmp r3.xy, -r5_abs.w, v1.zwzw, r3
    texld_pp r3, r3, s0
    mul_pp r0.w, r3.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r4.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r5.x, c86.x
    mad r0.w, r0.w, c24.w, -r5.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r5.xyz, r0.w, r3, c3.y
    mad_pp r0.xyz, r0, r5, r1
    mad_pp r4.xyz, r0, v8, r2
    mul_pp r0, r4, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 161 instruction slots used (5 texture, 156 arithmetic)