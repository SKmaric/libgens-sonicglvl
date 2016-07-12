//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgInShadowScaleLF;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampFalloff;
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
//   mrgInShadowScaleLF                    c146     1
//   g_SonicSkinFalloffParam               c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampFalloff                           s3       1
//   sampEnv                               s4       1
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
    dcl_2d s4
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    nrm_pp r1.xyz, v6
    texld_pp r2, v1, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.x, c0.y
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_sat_pp r1.w, r2, r2, c0.z
    add r1.w, -r1.w, c0.w
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r2.xyz, v3
    mad_pp r1.xyz, r1.w, r2, r1
    mul r2, r1.y, c91
    mad r2, r1.x, c90, r2
    mad r2, r1.z, c92, r2
    dp4 r1.w, r2, r2
    rsq r1.w, r1.w
    mul r2.xy, r1.w, r2
    mad_pp r2.xy, r2, c2.yzzw, c2.y
    texld_pp r2, r2, s4
    mul_pp r2.xyz, r2, c63.x
    texld_pp r3, v0, s1
    mul_pp r2.xyz, r2, r3.w
    mul_pp r2.xyz, r0.w, r2
    mov r0.w, c1.w
    mul_pp r0.w, r0.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c2.x
    add_pp r4.xyz, c22, -v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mad_pp r5.xyz, r4, r1.w, -c10
    mul_pp r4.xyz, r1.w, r4
    nrm_pp r6.xyz, r5
    dp3_sat_pp r1.w, r6, r1
    pow_pp r2.w, r1.w, r0.w
    mov r5, c77
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mul_pp r6.xyz, r0.w, c37
    mul_pp r6.xyz, r6, c18
    mul_pp r3.xyz, r3, r6
    mov_sat_pp r0.w, v7.w
    mad_pp r2.xyz, r3, r0.w, r2
    mul_pp r2.xyz, r2, v3.w
    mad_pp r3.xyz, r1, c1.x, c1.x
    mov r6.xyz, c80
    mad r7.xyz, r6, r3.y, c79
    mul_pp r8.xyz, r1, r1
    mul r7.xyz, r7, r8.y
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r9.xyz, c82
    mad r10.xyz, r9, r3.z, c81
    mad_pp r3.xyz, r8.x, r3.xyww, r7
    mad_pp r3.xyz, r8.z, r10, r3
    dp3_pp r1.w, r1, -c10
    add_pp r1.w, r1.w, c1.y
    mul_sat_pp r1.w, r1.w, c1.z
    mul_pp r7.xyz, r1.w, c36
    mul_pp r7.xyz, r7, c77.w
    mul_pp r7.xyz, r0.w, r7
    mad_pp r3.xyz, r3, c17, r7
    mul_pp r3.xyz, r3, c16
    mad_pp r0.xyz, r3, r0, r2
    dp3_pp r1.w, r4, r1
    add_pp r2.x, r1.w, r1.w
    mad_pp r1.xyz, r2.x, r1, -r4
    mad_pp r2.xyz, r1, c1.x, c1.x
    mul_pp r1.xyz, r1, r1
    mad r3.xyz, c78, r2.x, r5
    mad r2.xyw, r6.xyzz, r2.y, c79.xyzz
    mad r4.xyz, r9, r2.z, c81
    mul r2.xyz, r1.y, r2.xyww
    mad_pp r2.xyz, r1.x, r3, r2
    mad_pp r1.xyz, r1.z, r4, r2
    texld_pp r2, v0, s3
    mul_pp r1.xyz, r1, r2
    mov_pp r2.w, c0.w
    add_pp r2.x, r2.w, c150.w
    add_sat_pp r1.w, -r1.w, r2.x
    pow_pp r2.x, r1.w, c150.z
    mad_pp r1.w, c150.y, r2.x, c150.x
    mul_pp r1.xyz, r1.w, r1
    mul r1.w, c146.w, c146.y
    mov r2.yw, c146
    mad r2.x, r2.y, -r2.w, r2.w
    mad_pp r1.w, c77.w, r2.x, r1.w
    mul_pp r1.xyz, r1.w, r1
    mad_pp r0.xyz, r1, r0.w, r0
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 113 instruction slots used (6 texture, 107 arithmetic)
