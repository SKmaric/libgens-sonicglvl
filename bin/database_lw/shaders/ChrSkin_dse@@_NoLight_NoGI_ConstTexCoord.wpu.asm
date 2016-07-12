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
//   mrgInShadowScaleLF                    c146     1
//   g_SonicSkinFalloffParam               c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampEnv                               s4       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 10
    def c1, 4, 1, -1, 0
    def c2, 0.25, 0, 0, 0
    def c3, 1, -1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
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
    add_pp r4.x, r2.w, r2.w
    mad_pp r3, r4.x, r1, -r3
    mul_pp r4, r3.wyzw, c1.zzyw
    mad_pp r5, r3, c3.xyyz, c3.zzzw
    cmp_pp r4, r3.z, r4, r5
    add_pp r3.x, r4.z, c1.y
    rcp r3.x, r3.x
    mad_pp r4.xy, r4.yxzw, r3.x, c1.y
    mad_pp r5.x, r4.y, c2.x, r4.w
    mul_pp r5.y, r4.x, c0.x
    texld_pp r4, r5, s4
    mul_pp r4.xyz, r4, c63.x
    texld_pp r5, v0, s1
    mul_pp r4.xyz, r4, r5.w
    mul_pp r4.xyz, r0.w, r4
    mov r0.w, c0.w
    mul_pp r0.w, r0.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.x
    dp3_sat_pp r1.x, r2, r1
    pow_pp r2.x, r1.x, r0.w
    mov r6, c77
    mul_pp r0.w, r6.w, c20.z
    mul_pp r0.w, r2.x, r0.w
    mul_pp r2.xyz, r0.w, c37
    mul_pp r2.xyz, r2, c18
    mul_pp r2.xyz, r5, r2
    mov_sat_pp r0.w, v4.w
    mad_pp r2.xyz, r2, r0.w, r4
    mul_pp r2.xyz, r2, v2.w
    mad_pp r4.xyz, r1.wyzw, c0.x, c0.x
    mov r5.xyz, c80
    mad r7.xyz, r5, r4.y, c79
    mul_pp r8.xyz, r1.wyzw, r1.wyzw
    dp3_pp r1.x, r1.wyzw, -c10
    add_pp r1.x, r1.x, c0.y
    mul_sat_pp r1.x, r1.x, c0.z
    mul_pp r1.xyz, r1.x, c36
    mul_pp r1.xyz, r1, c77.w
    mul_pp r1.xyz, r0.w, r1
    mul r7.xyz, r7, r8.y
    mad r4.xyw, c78.xyzz, r4.x, r6.xyzz
    mov r9.xyz, c82
    mad r10.xyz, r9, r4.z, c81
    mad_pp r4.xyz, r8.x, r4.xyww, r7
    mad_pp r4.xyz, r8.z, r10, r4
    mad_pp r1.xyz, r4, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    mad_pp r1.xyz, r3.wyzw, c0.x, c0.x
    mul_pp r2.xyz, r3.wyzw, r3.wyzw
    mad r3.xyz, r5, r1.y, c79
    mul r3.xyz, r2.y, r3
    mad r1.xyw, c78.xyzz, r1.x, r6.xyzz
    mad r4.xyz, r9, r1.z, c81
    mad_pp r1.xyz, r2.x, r1.xyww, r3
    mad_pp r1.xyz, r2.z, r4, r1
    mov r2.y, c1.y
    add_pp r1.w, r2.y, c150.w
    add_sat_pp r1.w, -r2.w, r1.w
    pow_pp r2.x, r1.w, c150.z
    mad_pp r1.w, c150.y, r2.x, c150.x
    mul_pp r1.xyz, r1.w, r1
    mul r1.w, c146.w, c146.y
    mov r2.yw, c146
    mad r2.x, r2.y, -r2.w, r2.w
    mad_pp r1.w, c77.w, r2.x, r1.w
    mul_pp r1.xyz, r1.w, r1
    mad_pp r0.xyz, r1, r0.w, r0
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 95 instruction slots used (4 texture, 91 arithmetic)
