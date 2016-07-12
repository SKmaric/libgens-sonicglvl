//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
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
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   g_EmissionParam                       c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, -0.0500000007, 1.05263162, 10
    def c2, 4, 0.5, -0.5, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    nrm_pp r0.xyz, v6
    texld_pp r1, v1, s2
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    mul_pp r0.xyz, r0, r1.y
    nrm_pp r2.xyz, v5
    mad_pp r0.xyz, r1.x, r2, r0
    dp2add_sat_pp r0.w, r1, r1, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r1.xyz, v3
    mad_pp r0.xyz, r0.w, r1, r0
    mul r1, r0.y, c91
    mad r1, r0.x, c90, r1
    mad r1, r0.z, c92, r1
    dp4 r0.w, r1, r1
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r1
    mad_pp r1.xy, r1, c2.yzzw, c2.y
    texld_pp r1, r1, s3
    mul_pp r1.xyz, r1, c63.x
    texld_pp r2, v0, s1
    mul_pp r1.xyz, r1, r2.w
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r3, r0.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r0
    mov r2.w, c1.w
    mul_pp r2.w, r2.w, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c2.x
    pow_pp r3.x, r0.w, r2.w
    mul_pp r0.w, r3.x, c20.z
    mul_pp r3.xyz, r0.w, c37
    mul_pp r3.xyz, r3, c18
    mul_pp r2.xyz, r2, r3
    mad_pp r1.xyz, r1, c64.z, r2
    mul_pp r1.xyz, r1, v3.w
    mad_pp r2.yzw, r0.xxyz, c1.x, c1.x
    mov r3.xyz, c80
    mad r3.xyz, r3, r2.z, c79
    mul_pp r4.xyz, r0, r0
    dp3_pp r0.x, r0, -c10
    add_pp r0.x, r0.x, c1.y
    mul_sat_pp r0.x, r0.x, c1.z
    mul r0.yzw, r3.xxyz, r4.y
    mov r3.xyz, c78
    mad r3.xyz, r3, r2.y, c77
    mov r5.xyz, c82
    mad r2.yzw, r5.xxyz, r2.w, c81.xxyz
    mad_pp r0.yzw, r4.x, r3.xxyz, r0
    mad_pp r0.yzw, r4.z, r2, r0
    mad_pp r0.xyz, c36, r0.x, r0.yzww
    mul_pp r0.xyz, r0, c16
    texld_pp r3, v0, s0
    add_sat_pp r0.w, r1.w, r3.w
    mul_pp r4.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r3, r1
    mov r1.xyz, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r4.xyz, r1, c150.w, r0
    mul_pp r0, r4, v7
    mad_pp oC0.w, r0.w, c21.x, r2.x
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 79 instruction slots used (5 texture, 74 arithmetic)
