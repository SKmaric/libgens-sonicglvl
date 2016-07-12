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
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampEnv;
//   sampler2D sampSpe0;
//   sampler2D sampSpe1;
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
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampSpe0                 s2       1
//   sampSpe1                 s3       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 10, 4, 1, 0.5
    def c1, -1, 1, 0, 0.5
    def c2, 0.25, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    texld_pp r1, v1, s1
    lrp_pp r2, v5.w, r0, r1
    mul_pp oC0.w, r2.w, c16.w
    mov r0.x, c0.x
    mul_pp r0.x, r0.x, c20.y
    exp_pp r0.x, r0.x
    mul_pp r0.x, r0.x, c0.y
    add r1, c22.xyzx, -v2.xyzx
    dp3 r0.y, r1.yzww, r1.yzww
    rsq r0.y, r0.y
    mul_pp r3, r0.y, r1
    mad_pp r1.xyz, r1, r0.y, -c10
    rcp r0.y, r0.y
    mad_sat_pp r0.y, -r0.y, c60.z, c60.w
    nrm_pp r4.xyz, r1
    add_pp r1.xyz, r3.wyzw, r3.wyzw
    nrm_pp r5.xyz, r1
    nrm r1, v3.xyzx
    dp3_sat_pp r0.z, r5, r1
    pow_pp r2.w, r0.z, r0.x
    mul_pp r0.z, r2.w, c20.z
    mul_pp r5.xyz, r0.y, c59
    mul r6.xyz, r0.y, c58
    mul_pp r0.yzw, r0.z, r5.xxyz
    dp3_sat_pp r2.w, r4, r1
    pow_pp r4.x, r2.w, r0.x
    texld_pp r5, v0.zwzw, s10
    mul_pp r0.x, r5.w, c20.z
    mul_pp r0.x, r4.x, r0.x
    mad_pp r0.xyz, r0.x, c37, r0.yzww
    dp3_pp r0.w, r1.yzww, r3.yzww
    add r2.w, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    mul_pp r4.xyz, r6, r0.w
    mad r3, r2.w, r1, -r3
    dp3_sat_pp r0.w, r1.wyzw, -c10
    mul r0.w, r0.w, r5.w
    mad_pp r1.xyz, r0.w, c36, r4
    mul r4, r3.wyzw, c1.xxyz
    mad r6, r3, c1.yxxz, c1.zzzw
    cmp r3, r3.z, r4, r6
    add r0.w, r3.z, c0.z
    rcp r0.w, r0.w
    mad r3.xy, r3.yxzw, r0.w, c0.z
    mad_pp r4.x, r3.y, c2.x, r3.w
    mul_pp r4.y, r3.x, c0.w
    texld_pp r3, r4, s5
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r1.w, r4.x, -r4.z, r4.z
    mad_pp r0.w, r5.w, r1.w, r0.w
    mul_pp r4.xyz, r5, r5
    mad_pp r1.xyz, r4, c17, r1
    mul_pp r1.xyz, r1, c16
    texld_pp r4, v0, s2
    texld_pp r5, v1, s3
    lrp r6, v5.w, r4, r5
    mul r1.w, r6.w, c63.x
    mul r0.w, r0.w, r1.w
    mul_pp r3.xyz, r0.w, r3
    mad_pp r0.xyz, r0, c18, r3
    mul_pp r0.xyz, r6, r0
    mul_pp r0.xyz, r0, v3.w
    mad_pp r0.xyz, r1, r2, r0
    mul_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.w, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 84 instruction slots used (8 texture, 76 arithmetic)
