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
    mul r0.x, c64.z, c64.x
    mov r1.xz, c64
    mad r0.y, r1.x, -r1.z, r1.z
    mad_pp r0.x, c77.w, r0.y, r0.x
    add r0.yzw, c22.xxyz, -v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    rcp r1.y, r1.x
    mad_sat_pp r1.y, -r1.y, c60.z, c60.w
    mul_pp r2.xyz, r1.y, c59
    mov r1.w, c0.w
    mul_pp r1.z, r1.w, c20.y
    exp_pp r1.z, r1.z
    mul_pp r1.z, r1.z, c1.x
    mul_pp r3.xyz, r0.yzww, r1.x
    mad_pp r0.yzw, r0, r1.x, -c10.xxyz
    nrm_pp r4.xyz, r0.yzww
    add_pp r0.yzw, r3.xxyz, r3.xxyz
    nrm_pp r5.xyz, r0.yzww
    nrm_pp r6.xyz, v3
    dp3_sat_pp r0.y, r5, r6
    pow_pp r2.w, r0.y, r1.z
    mul_pp r0.y, r2.w, c20.z
    mul_pp r0.yzw, r2.xxyz, r0.y
    dp3_sat_pp r1.x, r4, r6
    pow_pp r2.x, r1.x, r1.z
    mov r4, c77
    mul_pp r1.x, r4.w, c20.z
    mul_pp r1.x, r2.x, r1.x
    mad_pp r0.yzw, r1.x, c37.xxyz, r0
    mul_pp r0.yzw, r0, c18.xxyz
    texld_pp r2, v0, s1
    mul_pp r0.yzw, r0, r2.xxyz
    mul r5, r6.y, c91
    mad r5, r6.x, c90, r5
    mad r5, r6.z, c92, r5
    dp4 r1.x, r5, r5
    rsq r1.x, r1.x
    mul r1.xz, r1.x, r5.xyyw
    mad_pp r1.xz, r1, c1.yyzw, c1.y
    texld_pp r5, r1.xzzw, s3
    mul_pp r1.xzw, r5.xyyz, c63.x
    mul_pp r1.xzw, r2.w, r1
    mad_pp r0.xzw, r1, r0.x, r0.yyzw
    mul_pp r0.xzw, r0, v3.w
    dp3_pp r1.x, r6, r3
    add_pp r1.x, r1.x, c0.y
    mul_sat_pp r1.x, r1.x, c0.z
    mul_pp r1.xzw, r1.x, c58.xyyz
    mul_pp r1.xyz, r1.xzww, r1.y
    dp3_pp r1.w, r6, -c10
    add_pp r1.w, r1.w, c0.y
    mul_sat_pp r1.w, r1.w, c0.z
    mul_pp r2.xyz, r1.w, c36
    mad_pp r1.xyz, r2, c77.w, r1
    mad_pp r2.xyz, r6, c0.x, c0.x
    mul_pp r3.xyz, r6, r6
    mov r5.xyz, c80
    mad r5.xyz, r5, r2.y, c79
    mul r5.xyz, r3.y, r5
    mad r2.xyw, c78.xyzz, r2.x, r4.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r2.z, c81
    mad_pp r2.xyz, r3.x, r2.xyww, r5
    mad_pp r2.xyz, r3.z, r4, r2
    add_pp r1.xyz, r1, r2
    mul_pp r1.xyz, r1, c16
    texld_pp r2, v0, s0
    add_sat_pp r1.w, r5.w, r2.w
    mul_pp r3.w, r1.w, c16.w
    mad_pp r0.xzw, r1.xyyz, r2.xyyz, r0
    texld r1, v1.zwzw, s4
    add_pp r1.xyz, r1, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r3.xyz, r1, c150.w, r0.xzww
    mul_pp r1, r3, v5
    mad_pp oC0.w, r1.w, c21.x, r0.y
    texld_pp r0, v4.yxzw, s9
    mad_pp r0.xyz, r1, r0.w, r0
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 95 instruction slots used (6 texture, 89 arithmetic)
