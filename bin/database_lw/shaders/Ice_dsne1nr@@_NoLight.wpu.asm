//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   sampler2D g_GISampler;
//   float4 g_IceParam;
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   sampler2D sampEnv;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampRef;
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
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_MtxView                c90      3
//   g_IceParam               c150     1
//   sampDif                  s0       1
//   sampSpec                 s1       1
//   sampNrm0                 s3       1
//   sampNrm1                 s4       1
//   sampEnv                  s5       1
//   sampRef                  s6       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 10, 4, 0.5, -0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp oC0.w, r0.w, c16.w
    texld_pp r1, v1.zwzw, s4
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    dp2add_sat_pp r0.w, r1, r1, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r2.xyz, v6
    mul_pp r1.yzw, r1.y, r2.xxyz
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r1.x, r3, r1.yzww
    nrm_pp r4.xyz, v3
    mad r1.xyz, r0.w, r4, r1
    mul_pp r0.w, c150.x, c150.x
    add r5.xyz, c22, -v2
    dp3 r1.w, r5, r5
    rsq r1.w, r1.w
    mul_pp r6.xyz, r1.w, r5
    mad_pp r5.xyz, r5, r1.w, -c10
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    nrm_pp r7.xyz, r5
    dp3_pp r2.w, r6, r1
    mad_pp r3.w, r2.w, -r2.w, c0.w
    mad_pp r0.w, r0.w, -r3.w, c0.w
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad r0.w, c150.x, r2.w, -r0.w
    mul_pp r5.xyz, r6, c150.x
    mad_pp r5.xyz, r1, r0.w, -r5
    add_pp r5.w, r5.z, c0.w
    dp3_pp r0.w, r5.xyww, r5.xyww
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    add_pp r0.w, r0.w, r0.w
    rcp r0.w, r0.w
    mad_pp r1.xy, r5, r0.w, c1.z
    texld_pp r5, r1, s6
    texld_pp r8, v0, s1
    mul_pp r1.xyz, r5, r8
    texld_pp r5, v1, s3
    mul_pp r5.x, r5.w, r5.x
    mad_pp r5.xy, r5, c0.x, c0.y
    mul_pp r2.xyz, r2, r5.y
    mad_pp r2.xyz, r5.x, r3, r2
    dp2add_sat_pp r0.w, r5, r5, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad_pp r2.xyz, r0.w, r4, r2
    mul r3, r2.y, c91
    mad r3, r2.x, c90, r3
    mad r3, r2.z, c92, r3
    dp4 r0.w, r3, r3
    rsq r0.w, r0.w
    mul r3.xy, r0.w, r3
    mad_pp r3.xy, r3, c1.zwzw, c1.z
    texld_pp r3, r3, s5
    mul_pp r3.xyz, r8, r3
    mov_pp r4.yz, c150
    mul r4.xy, r4.zyzw, c63.x
    mul r0.w, c64.z, c64.x
    mov r5.xz, c64
    mad r2.w, r5.x, -r5.z, r5.z
    texld_pp r5, v0.zwzw, s10
    mad_pp r0.w, r5.w, r2.w, r0.w
    mul r4.xy, r0.w, r4
    mov_sat_pp r0.w, v3.w
    mul r2.w, r4.y, r0.w
    add_pp r0.w, -r0.w, c0.w
    mul r0.w, r0.w, r4.x
    mul r3.xyz, r3, r2.w
    mad r1.xyz, r0.w, r1, r3
    mul r3.xyz, r1.w, c58
    mul_pp r4.xyz, r1.w, c59
    dp3_sat_pp r0.w, r2, r6
    add_pp r6.xyz, r6, r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r1.w, r9, r2
    mul_pp r3.xyz, r3, r0.w
    dp3_sat_pp r0.w, r2, -c10
    dp3_sat_pp r2.x, r7, r2
    mul r0.w, r0.w, r5.w
    mad_pp r2.yzw, r0.w, c36.xxyz, r3.xxyz
    mul_pp r3.xyz, r5, r5
    mul_pp r0.w, r5.w, c20.z
    mad_pp r2.yzw, r3.xxyz, c17.xxyz, r2
    mul_pp r2.yzw, r2, c16.xxyz
    mov r3.x, c1.x
    mul_pp r3.x, r3.x, c20.y
    exp_pp r3.x, r3.x
    mul_pp r3.x, r3.x, c1.y
    pow_pp r4.w, r2.x, r3.x
    pow_pp r2.x, r1.w, r3.x
    mul_pp r1.w, r2.x, c20.z
    mul_pp r3.xyz, r4, r1.w
    mul_pp r0.w, r0.w, r4.w
    mad_pp r3.xyz, r0.w, c37, r3
    mul_pp r3.xyz, r3, c18
    mul_pp r3.xyz, r8, r3
    mul_pp r3.xyz, r3, v3.w
    mad_pp r0.xyz, r2.yzww, r0, r3
    add_pp r0.xyz, r1, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c1.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 129 instruction slots used (9 texture, 120 arithmetic)
