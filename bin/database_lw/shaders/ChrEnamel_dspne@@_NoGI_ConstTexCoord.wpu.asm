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
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLocalLight4_Color;
//   float4 mrgLocalLight4_Position;
//   float4 mrgLocalLight4_Range;
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
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgLocalLight4_Position               c54      1
//   mrgLocalLight4_Color                  c55      1
//   mrgLocalLight4_Range                  c56      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_aLightField                         c77      6
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 10, 4, 0.25
    def c2, 1, -1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_texcoord7 v4.xyz
    dcl_texcoord8 v5.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    add_pp r1.xyz, -c50, v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c52.z, c52.w
    mul r2.xyz, r0.w, c51
    add_pp r3.xyz, -c42, v1
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_sat_pp r0.w, -r1.w, c44.z, c44.w
    mul r4.xyz, r0.w, c43
    add_pp r5.xyz, -c46, v1
    dp3_pp r0.w, r5, r5
    rsq_pp r0.w, r0.w
    rcp_pp r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_sat_pp r0.w, -r1.w, c48.z, c48.w
    mul r6.xyz, r0.w, c47
    nrm_pp r7, v5.xyzx
    texld_pp r8, v0, s2
    mul_pp r8.x, r8.w, r8.x
    mad_pp r8.xy, r8, c0.x, c0.y
    mul_pp r7, r7, r8.y
    nrm_pp r9, v4.xyzx
    mad_pp r7, r8.x, r9, r7
    dp2add_sat_pp r0.w, r8, r8, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r8, v2.xyzx
    mad_pp r7, r0.w, r8, r7
    add_pp r8, c22.xyzx, -v1.xyzx
    dp3_pp r0.w, r8.yzww, r8.yzww
    rsq_pp r0.w, r0.w
    mad_pp r9.xyz, r8, r0.w, -r5
    dp3_sat_pp r1.w, r7.wyzw, -r5
    mul_pp r5.xyz, r6, r1.w
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.w, r10, r7
    mov r9.y, c1.y
    mul_pp r2.w, r9.y, c20.y
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c1.z
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mul_pp r6.xyz, r6, r1.w
    mad_pp r9.xyz, r8, r0.w, -r3
    dp3_sat_pp r1.w, r7.wyzw, -r3
    mad_pp r3.xyz, r1.w, r4, r5
    nrm_pp r5.xyz, r9
    dp3_sat_pp r1.w, r5, r7
    pow_pp r3.w, r1.w, r2.w
    mul_pp r1.w, r3.w, c20.z
    mad_pp r4.xyz, r1.w, r4, r6
    mad_pp r5.xyz, r8, r0.w, -r1
    dp3_sat_pp r1.x, r7.wyzw, -r1
    mad_pp r1.xyz, r1.x, r2, r3
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r2.xyz, r1.w, r2, r4
    add_pp r3.xyz, -c54, v1
    dp3_pp r1.w, r3, r3
    rsq_pp r1.w, r1.w
    rcp_pp r3.w, r1.w
    mul_pp r3.xyz, r1.w, r3
    mad_sat_pp r1.w, -r3.w, c56.z, c56.w
    mul r4.xyz, r1.w, c55
    mad_pp r5.xyz, r8, r0.w, -r3
    dp3_sat_pp r1.w, r7.wyzw, -r3
    mad_pp r1.xyz, r1.w, r4, r1
    nrm_pp r3.xyz, r5
    dp3_sat_pp r1.w, r3, r7
    pow_pp r3.x, r1.w, r2.w
    mul_pp r1.w, r3.x, c20.z
    mad_pp r2.xyz, r1.w, r4, r2
    mad_pp r3.xyz, r8, r0.w, -c10
    mul_pp r4, r0.w, r8
    nrm_pp r5.xyz, r3
    dp3_sat_pp r0.w, r5, r7
    pow_pp r1.w, r0.w, r2.w
    mov r3, c77
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r1.w, r0.w
    mad_pp r2.xyz, r0.w, c37, r2
    mul_pp r2.xyz, r2, c18
    dp3_pp r0.w, r4.yzww, r7.yzww
    add_pp r0.w, r0.w, r0.w
    mad_pp r4, r0.w, r7, -r4
    mul r5, r4.wyzw, c0.yywz
    mad_pp r6, r4, c2.xyyz, c2.zzzw
    cmp_pp r4, r4.z, r5, r6
    add_pp r0.w, r4.z, c0.w
    rcp r0.w, r0.w
    mad_pp r4.xy, r4.yxzw, r0.w, c0.w
    mad_pp r5.x, r4.y, c1.w, r4.w
    mul_pp r5.y, r4.x, c1.x
    texld_pp r4, r5, s3
    mul_pp r4.xyz, r4, c63.x
    texld_pp r5, v0, s1
    mul_pp r4.xyz, r4, r5.w
    mul r0.w, c64.z, c64.x
    mov r6.xz, c64
    mad r1.w, r6.x, -r6.z, r6.z
    mad_pp r0.w, c77.w, r1.w, r0.w
    mul_pp r4.xyz, r0.w, r4
    mad_pp r2.xyz, r2, r5, r4
    mul_pp r2.xyz, r2, v2.w
    mad_pp r4.xyz, r7.wyzw, c1.x, c1.x
    mov r5.xyz, c80
    mad r5.xyz, r5, r4.y, c79
    mul_pp r6.xyz, r7.wyzw, r7.wyzw
    dp3_sat_pp r0.w, r7.wyzw, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r1
    mul r5.xyz, r5, r6.y
    mad r3.xyz, c78, r4.x, r3
    mov r7.xyz, c82
    mad r4.xyz, r7, r4.z, c81
    mad_pp r3.xyz, r6.x, r3, r5
    mad_pp r3.xyz, r6.z, r4, r3
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    texld_pp r1, v3.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 160 instruction slots used (5 texture, 155 arithmetic)
