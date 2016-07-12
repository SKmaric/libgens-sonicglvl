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
//   sampler2D sampSpe;
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
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, -0.5
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add_pp r1.xyz, c22, -v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp r1.w, r0.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    mul_pp r2.xyz, r1.w, c59
    mul r3.xyz, r1.w, c58
    mov r4.y, c0.y
    mul_pp r1.w, r4.y, c20.y
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c0.z
    mul_pp r4.xyz, r0.w, r1
    mad_pp r1.xyz, r1, r0.w, -c10
    nrm_pp r5.xyz, r1
    add_pp r1.xyz, r4, r4
    nrm_pp r6.xyz, r1
    nrm_pp r1.xyz, v2
    dp3_sat_pp r0.w, r6, r1
    pow_pp r2.w, r0.w, r1.w
    mul_pp r0.w, r2.w, c20.z
    mul_pp r2.xyz, r2, r0.w
    dp3_sat_pp r0.w, r5, r1
    pow_pp r2.w, r0.w, r1.w
    texld r5, v0.zwzw, s10
    mul_pp r0.w, r5.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r2.xyz, r0.w, c37, r2
    mul r6, r1.y, c91
    mad r6, r1.x, c90, r6
    mad r6, r1.z, c92, r6
    dp4 r0.w, r6, r6
    rsq r0.w, r0.w
    mul r6.xy, r0.w, r6
    mad_pp r6.xy, r6, c0.xwzw, c0.x
    texld_pp r6, r6, s5
    texld r7, v0, s1
    mul r0.w, r7.w, c63.x
    mul r0.w, r0.w, c64.z
    mul_pp r6.xyz, r0.w, r6
    mad_pp r2.xyz, r2, c18, r6
    mul_pp r2.xyz, r7, r2
    mul_pp r2.xyz, r2, v2.w
    dp3_sat_pp r0.w, r1, r4
    dp3_sat_pp r1.x, r1, -c10
    mul r1.x, r1.x, r5.w
    mul_pp r1.yzw, r5.xxyz, r5.xxyz
    mul_pp r3.xyz, r3, r0.w
    mad_pp r3.xyz, r1.x, c36, r3
    mad_pp r1.xyz, r1.yzww, c17, r3
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 73 instruction slots used (6 texture, 67 arithmetic)
