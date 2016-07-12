//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
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
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampEnv                               s3       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, 1
    def c1, -1, 1, 0, 0.5
    def c2, 0.25, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, c77.w, r1.x, r0.w
    add_pp r1, c22.xyzx, -v1.xyzx
    dp3_pp r2.x, r1.yzww, r1.yzww
    rsq_pp r2.x, r2.x
    mul_pp r3, r1, r2.x
    mad_pp r1.xyz, r1, r2.x, -c10
    nrm_pp r2.xyz, r1
    nrm_pp r1, v2.xyzx
    dp3_pp r2.w, r3.yzww, r1.yzww
    add_pp r2.w, r2.w, r2.w
    mad_pp r3, r2.w, r1, -r3
    mul_pp r4, r3.wyzw, c1.xxyz
    mad_pp r5, r3, c1.yxxz, c1.zzzw
    cmp_pp r3, r3.z, r4, r5
    add_pp r2.w, r3.z, c0.w
    rcp r2.w, r2.w
    mad_pp r3.xy, r3.yxzw, r2.w, c0.w
    mad_pp r4.x, r3.y, c2.x, r3.w
    mul_pp r4.y, r3.x, c0.x
    texld_pp r3, r4, s3
    mul_pp r3.xyz, r3, c63.x
    texld_pp r4, v0, s1
    mul_pp r3.xyz, r3, r4.w
    mul_pp r3.xyz, r0.w, r3
    mov r5.y, c0.y
    mul_pp r0.w, r5.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    dp3_sat_pp r1.x, r2, r1
    pow_pp r2.x, r1.x, r0.w
    mov r5, c77
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r2.x, r0.w
    mul_pp r2.xyz, r0.w, c37
    mul_pp r2.xyz, r2, c18
    mad_pp r2.xyz, r2, r4, r3
    mul_pp r2.xyz, r2, v2.w
    mad_pp r3.xyz, r1.wyzw, c0.x, c0.x
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul_pp r6.xyz, r1.wyzw, r1.wyzw
    dp3_sat_pp r0.w, r1.wyzw, -c10
    mul r0.w, r0.w, c77.w
    mul_pp r1.xyz, r0.w, c36
    mul r4.xyz, r4, r6.y
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mad_pp r3.xyz, r6.x, r3.xyww, r4
    mad_pp r3.xyz, r6.z, r5, r3
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 67 instruction slots used (4 texture, 63 arithmetic)
