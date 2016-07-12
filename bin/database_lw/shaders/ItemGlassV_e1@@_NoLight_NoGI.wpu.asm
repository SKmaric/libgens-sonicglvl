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
//   g_FalloffParam                        c151     1
//   sampEnv                               s3       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 10
    def c1, 4, 0.5, -0.5, 1
    dcl_texcoord2 v0.xyz
    dcl_texcoord3_pp v1
    dcl_texcoord5 v2.xy
    dcl_color_pp v3
    dcl vPos.xy
    dcl_2d s3
    dcl_2d s9
    dcl_2d s11
    add r0.xyz, c22, -v0
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
    nrm_pp r0.xyz, v1
    dp3_sat_pp r0.w, r4, r0
    pow_pp r3.w, r0.w, r2.x
    mul_pp r0.w, r3.w, c20.z
    mul_pp r1.yzw, r1, r0.w
    dp3_sat_pp r0.w, r3, r0
    pow_pp r3.x, r0.w, r2.x
    mov r4, c77
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r3.x, r0.w
    mad_pp r1.yzw, r0.w, c37.xxyz, r1
    mul_pp r1.yzw, r1, c18.xxyz
    mul r3, r0.y, c91
    mad r3, r0.x, c90, r3
    mad r3, r0.z, c92, r3
    dp4 r0.w, r3, r3
    rsq r0.w, r0.w
    mul r3.xy, r0.w, r3
    mad_pp r3.xy, r3, c1.yzzw, c1.y
    texld_pp r3, r3, s3
    mov_pp r0.w, r3.w
    mul_pp r3.xyz, r3, c63.x
    mul_pp r0.w, r0.w, c16.w
    mul_pp r0.w, r0.w, v3.w
    mad_pp r0.w, r0.w, c21.x, r1.y
    mul r5.xy, c64.zwzw, c64
    mov r6, c64
    mad r5.zw, r6.xyxy, -r6, r6
    mad_pp r5.xy, c77.w, r5.zwzw, r5
    dp3_pp r2.x, r0, r2.yzww
    mov r2.w, c1.w
    add_pp r2.y, r2.w, c151.w
    add_sat_pp r2.y, -r2.x, r2.y
    add_pp r2.x, r2.x, c0.y
    mul_sat_pp r2.x, r2.x, c0.z
    mul_pp r2.xzw, r2.x, c58.xyyz
    mul_pp r2.xzw, r1.x, r2
    pow_pp r1.x, r2.y, c151.z
    mad_pp r1.x, c151.y, r1.x, c151.x
    mad_pp oC0.w, r1.x, r5.y, r0.w
    mad_pp r1.yzw, r3.xxyz, r5.x, r1
    mul_pp r1.yzw, r1, v1.w
    mad_pp r3.xyz, r0, c0.x, c0.x
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.y, c79
    mul_pp r6.xyz, r0, r0
    dp3_pp r0.x, r0, -c10
    add_pp r0.x, r0.x, c0.y
    mul_sat_pp r0.x, r0.x, c0.z
    mul_pp r0.xyz, r0.x, c36
    mad_pp r0.xyz, r0, c77.w, r2.xzww
    mul r2.xyz, r5, r6.y
    mad r3.xyw, c78.xyzz, r3.x, r4.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r3.z, c81
    mad_pp r2.xyz, r6.x, r3.xyww, r2
    mad_pp r2.xyz, r6.z, r4, r2
    add_pp r0.xyz, r0, r2
    mad_pp r0.xyz, r0, c16, r1.yzww
    mad_pp r0.xyz, v3, r1.x, r0
    mov r1.xyz, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r0.xyz, r1, c150.w, r0
    texld_pp r1, v2.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v2.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 98 instruction slots used (3 texture, 95 arithmetic)
