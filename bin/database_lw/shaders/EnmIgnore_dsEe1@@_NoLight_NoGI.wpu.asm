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
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
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
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_GIModeParam                         c69      1
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
    def c0, 10, 4, 0.5, -0.5
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
    mov r0.x, c0.x
    mul_pp r0.x, r0.x, c20.y
    exp_pp r0.x, r0.x
    mul_pp r0.x, r0.x, c0.y
    add r0.yzw, c22.xxyz, -v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r1.yzw, r0, r1.x
    mad_pp r0.yzw, r0, r1.x, -c10.xxyz
    rcp r1.x, r1.x
    mad_sat_pp r1.x, -r1.x, c60.z, c60.w
    mul_pp r2.xyz, r1.x, c59
    nrm_pp r3.xyz, r0.yzww
    add_pp r0.yzw, r1, r1
    nrm_pp r1.xyz, r0.yzww
    nrm_pp r4.xyz, v3
    dp3_sat_pp r0.y, r1, r4
    pow_pp r1.x, r0.y, r0.x
    mul_pp r0.y, r1.x, c20.z
    mul_pp r0.yzw, r2.xxyz, r0.y
    dp3_sat_pp r1.x, r3, r4
    pow_pp r2.x, r1.x, r0.x
    mul_pp r0.x, r2.x, c20.z
    mad_pp r0.xyz, r0.x, c37, r0.yzww
    mul_pp r0.xyz, r0, c18
    texld_pp r1, v0, s1
    mul_pp r0.xyz, r0, r1
    mul r2, r4.y, c91
    mad r2, r4.x, c90, r2
    mad r2, r4.z, c92, r2
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r2
    mad_pp r1.xy, r1, c0.zwzw, c0.z
    texld_pp r2, r1, s3
    mul_pp r1.xyz, r2, c63.x
    mul_pp r1.xyz, r1.w, r1
    mad_pp r0.yzw, r1.xxyz, c64.z, r0.xxyz
    texld_pp r1, v0, s0
    add_sat_pp r1.w, r2.w, r1.w
    mul_pp r1, r1, c16
    mad_pp r0.yzw, r0, v3.w, r1.xxyz
    texld r2, v1.zwzw, s4
    add_pp r2.xyz, r2, c150
    mul_pp r2.xyz, r2, c17
    mad_pp r1.xyz, r2, c150.w, r0.yzww
    mul_pp r1, r1, v5
    mad_pp oC0.w, r1.w, c21.x, r0.x
    texld_pp r0, v4.yxzw, s9
    mad_pp r0.xyz, r1, r0.w, r0
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 66 instruction slots used (6 texture, 60 arithmetic)
