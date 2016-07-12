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
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampSpe;
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
//   g_GIModeParam                         c69      1
//   g_aLightField                         c77      6
//   g_EmissionParam                       c150     1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampEmi                               s4       1
//   sampDLScatter                         s9       1
//   g_FramebufferSampler                  s11      1
//

    ps_3_0
    def c0, 0.5, -0.0500000007, 1.05263162, 10
    def c1, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.zw
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    mov r0.w, c0.w
    mul_pp r0.x, r0.w, c20.y
    exp_pp r0.x, r0.x
    mul_pp r0.x, r0.x, c1.x
    add r0.yzw, c22.xxyz, -v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r1.yzw, r0, r1.x
    mad_pp r0.yzw, r0, r1.x, -c10.xxyz
    rcp r1.x, r1.x
    mad_sat_pp r1.x, -r1.x, c60.z, c60.w
    nrm_pp r2.xyz, r0.yzww
    add_pp r0.yzw, r1, r1
    nrm_pp r3.xyz, r0.yzww
    nrm_pp r4.xyz, v3
    dp3_sat_pp r0.y, r3, r4
    pow_pp r2.w, r0.y, r0.x
    mul_pp r0.y, r2.w, c20.z
    mul_pp r3.xyz, r1.x, c59
    mul_pp r0.yzw, r0.y, r3.xxyz
    dp3_sat_pp r2.x, r2, r4
    pow_pp r3.x, r2.x, r0.x
    mov r2, c77
    mul_pp r0.x, r2.w, c20.z
    mul_pp r0.x, r3.x, r0.x
    mad_pp r0.xyz, r0.x, c37, r0.yzww
    mul_pp r0.xyz, r0, c18
    texld_pp r3, v0, s1
    mul_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, v3.w
    dp3_pp r0.w, r4, r1.yzww
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mul_pp r1.yzw, r0.w, c58.xxyz
    mul_pp r1.xyz, r1.yzww, r1.x
    dp3_pp r0.w, r4, -c10
    add_pp r0.w, r0.w, c0.y
    mul_sat_pp r0.w, r0.w, c0.z
    mul_pp r3.xyz, r0.w, c36
    mad_pp r1.xyz, r3, c77.w, r1
    mad_pp r3.xyz, r4, c0.x, c0.x
    mul_pp r4.xyz, r4, r4
    mov r5.xyz, c80
    mad r5.xyz, r5, r3.y, c79
    mul r5.xyz, r4.y, r5
    mad r2.xyz, c78, r3.x, r2
    mov r6.xyz, c82
    mad r3.xyz, r6, r3.z, c81
    mad_pp r2.xyz, r4.x, r2, r5
    mad_pp r2.xyz, r4.z, r3, r2
    add_pp r1.xyz, r1, r2
    mul_pp r1.xyz, r1, c16
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r1, r2, r0
    mul_pp r1.w, r2.w, c16.w
    texld r2, v1.zwzw, s4
    add_pp r2.xyz, r2, c150
    mul_pp r2.xyz, r2, c17
    mad_pp r1.xyz, r2, c150.w, r0
    mul_pp r0, r1, v5
    mul_pp oC0.w, r0.w, c21.x
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 79 instruction slots used (5 texture, 74 arithmetic)
