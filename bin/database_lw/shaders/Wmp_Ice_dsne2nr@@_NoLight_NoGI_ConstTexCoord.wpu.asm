//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   float4 g_IceParam;
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
//   samplerCUBE sampEnv;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   samplerCUBE sampRef;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_aLightField            c77      6
//   g_IceParam               c150     1
//   sampDif                  s0       1
//   sampSpec                 s1       1
//   sampNrm0                 s3       1
//   sampNrm1                 s4       1
//   sampEnv                  s5       1
//   sampRef                  s6       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 0.5, 10, 4, 0
    def c1, 2, -1, 0, 1
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_cube s6
    dcl_2d s9
    texld_pp r0, v1.zwzw, s4
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c1.x, c1.y
    dp2add_sat_pp r0.z, r0, r0, c1.z
    add r0.z, -r0.z, c1.w
    rsq r0.z, r0.z
    rcp_pp r0.z, r0.z
    nrm_pp r1.xyz, v6
    mul_pp r2.xyz, r0.y, r1
    nrm_pp r3.xyz, v5
    mad_pp r0.xyw, r0.x, r3.xyzz, r2.xyzz
    nrm_pp r2.xyz, v3
    mad_pp r0.xyz, r0.z, r2, r0.xyww
    add_pp r4.xyz, c22, -v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    mul_pp r5.xyz, r0.w, r4
    mad_pp r4.xyz, r4, r0.w, -c10
    nrm_pp r6.xyz, r4
    dp3_pp r0.w, -r5, r0
    mad_pp r1.w, r0.w, -r0.w, c1.w
    mul_pp r2.w, c150.x, c150.x
    mad_pp r1.w, r2.w, -r1.w, c1.w
    cmp_pp r2.w, r1.w, c1.w, c1.z
    mul_pp r1.w, r1.w, r2.w
    mul_pp r2.w, r2.w, c150.x
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    mad_pp r0.w, r2.w, r0.w, r1.w
    mul_pp r0.xyz, r0, r0.w
    mad_pp r0.xyz, r2.w, -r5, -r0
    mov_pp r0.w, -r0.z
    texld_pp r0, r0.xyww, s6
    texld_pp r4, v0, s1
    mul_pp r0.xyz, r0, r4
    mul r0.w, c64.z, c64.x
    mov r7.xz, c64
    mad r1.w, r7.x, -r7.z, r7.z
    mad_pp r0.w, c77.w, r1.w, r0.w
    mov_pp r7.yz, c150
    mul r7.xy, r7.zyzw, c63.x
    mul r7.xy, r0.w, r7
    mov_sat_pp r0.w, v3.w
    add_pp r1.w, -r0.w, c1.w
    mul r0.w, r7.y, r0.w
    mul r1.w, r1.w, r7.x
    texld_pp r7, v1, s3
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c1.x, c1.y
    mul_pp r1.xyz, r1, r7.y
    mad_pp r1.xyz, r7.x, r3, r1
    dp2add_sat_pp r2.w, r7, r7, c1.z
    add r2.w, -r2.w, c1.w
    rsq r2.w, r2.w
    rcp_pp r2.w, r2.w
    mad_pp r1.xyz, r2.w, r2, r1
    dp3 r2.x, -r5, r1
    add r2.x, r2.x, r2.x
    mad_pp r2.xyz, r1, -r2.x, -r5
    mov_pp r2.w, -r2.z
    texld_pp r2, r2.xyww, s5
    mul_pp r2.xyz, r4, r2
    mul r2.xyz, r0.w, r2
    mad r0.xyz, r1.w, r0, r2
    mad_pp r2.xyz, r1, c0.x, c0.x
    mov r3.xyz, c80
    mad r3.xyz, r3, r2.y, c79
    mul_pp r5.xyz, r1, r1
    mul r3.xyz, r3, r5.y
    mov r7, c77
    mad r2.xyw, c78.xyzz, r2.x, r7.xyzz
    mov r7.xyz, c82
    mad r7.xyz, r7, r2.z, c81
    mad_pp r2.xyz, r5.x, r2.xyww, r3
    mad_pp r2.xyz, r5.z, r7, r2
    dp3_sat_pp r0.w, r1, -c10
    dp3_sat_pp r1.x, r6, r1
    mul r0.w, r0.w, c77.w
    mul_pp r1.yzw, r0.w, c36.xxyz
    mad_pp r1.yzw, r2.xxyz, c17.xxyz, r1
    mul_pp r1.yzw, r1, c16.xxyz
    mov r2.y, c0.y
    mul_pp r0.w, r2.y, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c0.z
    pow_pp r2.x, r1.x, r0.w
    mul_pp r0.w, r7.w, c20.z
    mul_pp r0.w, r2.x, r0.w
    mul_pp r2.xyz, r0.w, c37
    mul_pp r2.xyz, r2, c18
    mul_pp r2.xyz, r4, r2
    mul_pp r2.xyz, r2, v3.w
    texld_pp r3, v0, s0
    mad_pp r1.xyz, r1.yzww, r3, r2
    mov r2.yw, c1
    mad r0.w, c16.w, r3.w, r2.y
    mad_pp oC0.w, c16.y, r0.w, r2.w
    add_pp r0.xyz, r0, r1
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mul_pp oC0.xyz, r0, c16

// approximately 113 instruction slots used (7 texture, 106 arithmetic)
