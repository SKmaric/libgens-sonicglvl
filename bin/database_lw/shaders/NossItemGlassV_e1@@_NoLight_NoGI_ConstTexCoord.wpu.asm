//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
//   float4 g_EyePosition;
//   float4 g_FalloffParam;
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
//   sampler2D sampEnv;
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
//   g_FalloffParam                        c151     1
//   sampEnv                               s3       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 10
    def c1, 4, 0.5, -0.5, 1
    dcl_texcoord2 v0.xyz
    dcl_texcoord3_pp v1
    dcl_texcoord5 v2.xy
    dcl_color_pp v3
    dcl_2d s3
    dcl_2d s9
    nrm_pp r0.xyz, v1
    mul r1, r0.y, c91
    mad r1, r0.x, c90, r1
    mad r1, r0.z, c92, r1
    dp4 r0.w, r1, r1
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r1
    mad_pp r1.xy, r1, c1.yzzw, c1.y
    texld_pp r1, r1, s3
    mov_pp r0.w, r1.w
    mul_pp r1.xyz, r1, c63.x
    mul_pp r0.w, r0.w, c16.w
    mul_pp r0.w, r0.w, v3.w
    mov r2, c77
    mul_pp r1.w, r2.w, c20.z
    mov r2.w, c0.w
    mul_pp r2.w, r2.w, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.x
    add_pp r3.xyz, c22, -v0
    dp3_pp r3.w, r3, r3
    rsq_pp r3.w, r3.w
    mad_pp r4.xyz, r3, r3.w, -c10
    mul_pp r3.xyz, r3.w, r3
    dp3_pp r3.x, r0, r3
    nrm_pp r5.xyz, r4
    dp3_sat_pp r3.y, r5, r0
    pow_pp r4.x, r3.y, r2.w
    mul_pp r1.w, r1.w, r4.x
    mul_pp r3.yzw, r1.w, c37.xxyz
    mul_pp r3.yzw, r3, c18.xxyz
    mad_pp r0.w, r0.w, c21.x, r3.y
    mad_pp r1.xyz, r1, c64.z, r3.yzww
    mul_pp r1.xyz, r1, v1.w
    mov r1.w, c1.w
    add_pp r1.w, r1.w, c151.w
    add_sat_pp r1.w, -r3.x, r1.w
    pow_pp r2.w, r1.w, c151.z
    mad_pp r1.w, c151.y, r2.w, c151.x
    mad_pp oC0.w, r1.w, c64.w, r0.w
    mad_pp r3.xyz, r0, c0.x, c0.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul_pp r5.xyz, r0, r0
    dp3_pp r0.x, r0, -c10
    add_pp r0.x, r0.x, c0.y
    mul_sat_pp r0.x, r0.x, c0.z
    mul_pp r0.xyz, r0.x, c36
    mul r4.xyz, r4, r5.y
    mad r2.xyz, c78, r3.x, r2
    mov r6.xyz, c82
    mad r3.xyz, r6, r3.z, c81
    mad_pp r2.xyz, r5.x, r2, r4
    mad_pp r2.xyz, r5.z, r3, r2
    mad_pp r0.xyz, r0, c77.w, r2
    mad_pp r0.xyz, r0, c16, r1
    mad_pp r0.xyz, v3, r1.w, r0
    mov r1.xyz, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r0.xyz, r1, c150.w, r0
    texld_pp r1, v2.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 70 instruction slots used (2 texture, 68 arithmetic)
