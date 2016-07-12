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
//   row_major float4x4 g_MtxView;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
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
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -2, 10, 4
    def c1, 0.5, 1, 0, -1
    def c2, 0.5, -0.5, -0.707106769, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord5 v3.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s11
    nrm_pp r0.xyz, v2
    mad_pp r1.xyz, r0, c1.x, c1.x
    mov r2.xyz, c80
    mad r2.xyz, r2, r1.y, c79
    mul_pp r3.xyz, r0, r0
    mul r2.xyz, r2, r3.y
    mov r4, c77
    mad r1.xyw, c78.xyzz, r1.x, r4.xyzz
    mov r4.xyz, c82
    mad r4.xyz, r4, r1.z, c81
    mad_pp r1.xyz, r3.x, r1.xyww, r2
    mad_pp r1.xyz, r3.z, r4, r1
    add_pp r2.xyz, c22, -v1
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    rcp r1.w, r0.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    mul r3.xyz, r1.w, c58
    mul_pp r4.xyz, r1.w, c59
    mul_pp r5.xyz, r0.w, r2
    mad_pp r2.xyz, r2, r0.w, -c10
    nrm_pp r6.xyz, r2
    dp3_sat_pp r0.w, r6, r0
    dp3_sat_pp r1.w, r0, r5
    add_pp r2.xyz, r5, r5
    nrm_pp r5.xyz, r2
    dp3_sat_pp r2.x, r5, r0
    mul_pp r2.yzw, r3.xxyz, r1.w
    add_pp r1.w, -r1.w, c1.y
    dp3_sat_pp r3.x, r0, -c10
    mul r3.x, r3.x, c77.w
    mad_pp r2.yzw, r3.x, c36.xxyz, r2
    mad_pp r1.xyz, r1, c17, r2.yzww
    mul_pp r1.xyz, r1, c16
    mul r3, r0.y, c91
    mad r3, r0.x, c90, r3
    mad r3, r0.z, c92, r3
    mad r0.x, r3.z, -r3.z, c1.y
    mul r0.y, c150.x, c150.x
    mad r0.x, r0.y, -r0.x, c1.y
    cmp r0.y, r0.x, c1.y, c1.z
    mul r0.x, r0.y, r0.x
    mul r0.y, r0.y, c150.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mad r0.x, r0.y, -r3.z, r0.x
    mul_pp r0.xy, r3, r0.x
    add r2.yz, c1.x, vPos.xxyw
    mul r2.yz, r2, c24.xzww
    mov r5.yzw, c1
    mad r6, c24.zzww, r5.yzzw, r5.zywz
    mad r5.xz, r2.yyzw, c0.xyyw, r6.xyyw
    texld r7, r2.yzzw, s11
    add_pp r2.yz, r6.xzww, r5.xxzw
    mad_pp r0.xy, r0, c2.z, r2.yzzw
    mad r0.xy, r0, c2, c2.x
    texld_pp r6, r0, s11
    texld_pp r8, v0, s0
    mad r0.xyz, r1, r8, -r6
    mul_pp r1.x, r8.w, c16.w
    mad r1.y, c16.w, -r8.w, r5.y
    mul r1.y, r1.y, c63.x
    mad_pp r0.xyz, r1.x, r0, r6
    dp4 r1.x, r3, r3
    rsq r1.x, r1.x
    mul r1.xz, r1.x, r3.xyyw
    mad_pp r1.xz, r1, c2.xyyw, c2.x
    texld_pp r3, r1.xzzw, s1
    mul r1.x, c64.z, c64.x
    mov r5.xz, c64
    mad r1.z, r5.x, -r5.z, r5.z
    mad_pp r1.x, c77.w, r1.z, r1.x
    mul r1.x, r1.x, r1.y
    mul_pp r1.xyz, r1.x, r3
    mov r2.z, c0.z
    mul_pp r2.y, r2.z, c20.y
    exp_pp r2.y, r2.y
    mul_pp r2.y, r2.y, c0.w
    pow_pp r3.x, r2.x, r2.y
    pow_pp r3.y, r0.w, r2.y
    mul_pp r0.w, r3.x, c20.z
    mul_pp r2.xyz, r4, r0.w
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r3.y, r0.w
    mad_pp r2.xyz, r0.w, c37, r2
    mad_pp r1.xyz, r2, c18, r1
    mul_pp r0.w, r1.w, r1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r1.w, r0.w
    lrp_pp r1.w, r0.w, r5.y, c62.x
    mad_pp r0.xyz, r1.w, r1, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xyz, -r0, r7
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0
    mov_pp oC0.w, c1.y

// approximately 107 instruction slots used (5 texture, 102 arithmetic)
