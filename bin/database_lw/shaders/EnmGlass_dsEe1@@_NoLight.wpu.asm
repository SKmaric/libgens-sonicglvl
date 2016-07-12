//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampEnv;
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
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_GIModeParam                         c69      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   g_EmissionParam                       c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampEnv                               s3       1
//   sampEmi                               s4       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 10
    def c1, 4, 0.5, -0.5, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    add r0.xyz, c22, -v2
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    rcp r1.x, r0.w
    mad_sat_pp r1.x, -r1.x, c60.z, c60.w
    mul_pp r1.yzw, r1.x, c59.xxyz
    mov r2.w, c0.w
    mul_pp r2.x, r2.w, c20.y
    exp_pp r2.x, r2.x
    mul_pp r2.x, r2.x, c1.x
    mul_pp r2.yzw, r0.w, r0.xxyz
    mad_pp r0.xyz, r0, r0.w, -c10
    nrm_pp r3.xyz, r0
    add_pp r0.xyz, r2.yzww, r2.yzww
    nrm_pp r4.xyz, r0
    nrm_pp r0.xyz, v3
    dp3_sat_pp r0.w, r4, r0
    pow_pp r3.w, r0.w, r2.x
    mul_pp r0.w, r3.w, c20.z
    mul_pp r1.yzw, r1, r0.w
    dp3_sat_pp r0.w, r3, r0
    pow_pp r3.x, r0.w, r2.x
    mul_pp r0.w, r3.x, c20.z
    mad_pp r1.yzw, r0.w, c37.xxyz, r1
    mul_pp r1.yzw, r1, c18.xxyz
    texld_pp r3, v0, s1
    mul_pp r1.yzw, r1, r3.xxyz
    mul r4, r0.y, c91
    mad r4, r0.x, c90, r4
    mad r4, r0.z, c92, r4
    dp4 r0.w, r4, r4
    rsq r0.w, r0.w
    mul r3.xy, r0.w, r4
    mad_pp r3.xy, r3, c1.yzzw, c1.y
    texld_pp r4, r3, s3
    mul_pp r3.xyz, r4, c63.x
    mul_pp r3.xyz, r3.w, r3
    mad_pp r3.xyz, r3, c64.z, r1.yzww
    mul_pp r3.xyz, r3, v3.w
    dp3_pp r0.w, r0, r2.yzww
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mul_pp r2.xyz, r0.w, c58
    mul_pp r1.xzw, r1.x, r2.xyyz
    dp3_pp r0.w, r0, -c10
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mad_pp r1.xzw, c36.xyyz, r0.w, r1
    mad_pp r2.xyz, r0, c0.x, c0.x
    mul_pp r0.xyz, r0, r0
    mov r4.xyz, c80
    mad r4.xyz, r4, r2.y, c79
    mul r4.xyz, r0.y, r4
    mov r5.xyz, c78
    mad r2.xyw, r5.xyzz, r2.x, c77.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mad_pp r0.xyw, r0.x, r2, r4.xyzz
    mad_pp r0.xyz, r0.z, r5, r0.xyww
    add_pp r0.xyz, r1.xzww, r0
    mul_pp r0.xyz, r0, c16
    texld_pp r2, v0, s0
    add_sat_pp r0.w, r4.w, r2.w
    mul_pp r4.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r2, r3
    texld r2, v1.zwzw, s4
    add_pp r1.xzw, r2.xyyz, c150.xyyz
    mul_pp r1.xzw, r1, c17.xyyz
    mad_pp r4.xyz, r1.xzww, c150.w, r0
    mul_pp r0, r4, v5
    mad_pp oC0.w, r0.w, c21.x, r1.y
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 89 instruction slots used (6 texture, 83 arithmetic)
