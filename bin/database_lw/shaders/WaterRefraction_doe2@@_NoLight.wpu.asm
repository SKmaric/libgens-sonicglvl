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
//   float4 g_OffsetParam;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampOffset;
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
//   mrgTexcoordIndex         c26      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Specular     c59      1
//   mrgEyeLight_Range        c60      1
//   mrgFresnelParam          c62      1
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_MtxView                c90      3
//   mrgGlassRefractionParam  c150     1
//   g_OffsetParam            c151     1
//   sampDif                  s0       1
//   sampEnv                  s1       1
//   sampOffset               s2       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -2
    def c1, 4, -0.707106769, 0.5, -0.5
    def c2, 1, 0, -1, 10
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_color_pp v5
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s2
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    frc r0.xy, c26.xwzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c26.xwzw
    mov r1.xy, c3
    cmp r0.zw, c26.xyxw, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.xz, -r2_abs.x, v0.xyyw, c3.x
    cmp r1.xz, -r2_abs.y, v0.zyww, r1
    cmp r1.xz, -r2_abs.z, v1.xyyw, r1
    cmp r1.xz, -r2_abs.w, v1.zyww, r1
    cmp r2.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s2
    mad r0.xy, r0.wyzw, c0.x, c0.y
    mad r0.zw, r0.xyxy, c151.xyxy, r1.xyxz
    texld_pp r2, r0.zwzw, s0
    mul_pp r0.z, r2.w, c16.w
    mad r0.w, r0.z, -v5.w, c3.y
    mul_pp r0.z, r0.z, v5.w
    mul r0.w, r0.w, c63.x
    mul r1.x, c64.z, c64.x
    mov r3.xz, c64
    mad r1.z, r3.x, -r3.z, r3.z
    texld r3, v0.zwzw, s10
    mad_pp r1.x, r3.w, r1.z, r1.x
    mul r0.w, r0.w, r1.x
    add_pp r1.xzw, c22.xyyz, -v2.xyyz
    dp3_pp r2.w, r1.xzww, r1.xzww
    rsq_pp r2.w, r2.w
    mul r4.xyz, r1.xzww, r2.w
    mad_pp r1.xzw, r1, r2.w, -c10.xyyz
    rcp r2.w, r2.w
    mad_sat_pp r2.w, -r2.w, c60.z, c60.w
    nrm_pp r5.xyz, r1.xzww
    nrm r6.xyz, v3
    dp3 r1.x, -r4, r6
    add r1.x, r1.x, r1.x
    mad_pp r1.xzw, r6.xyyz, -r1.x, -r4.xyyz
    mad_pp r7.xy, r0, c151, r1.xzzw
    mov_pp r7.z, -r1.w
    texld_pp r7, r7, s1
    mul_pp r1.xzw, r0.w, r7.xyyz
    mul_pp r7.xyz, r2.w, c59
    mul r8.xyz, r2.w, c58
    mov r9, c2
    mul_pp r0.w, r9.w, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.x
    add_pp r10.xyz, r4, r4
    dp3_sat_pp r2.w, r6, r4
    nrm_pp r4.xyz, r10
    dp3_sat_pp r4.x, r4, r6
    pow_pp r5.w, r4.x, r0.w
    mul_pp r4.x, r5.w, c20.z
    mul_pp r4.xyz, r7, r4.x
    dp3_sat_pp r4.w, r5, r6
    pow_pp r5.x, r4.w, r0.w
    mul_pp r0.w, r3.w, c20.z
    mul_pp r0.w, r5.x, r0.w
    mad_pp r4.xyz, r0.w, c37, r4
    mad_pp r1.xzw, r4.xyyz, c18.xyyz, r1
    mul_pp r4.xyz, r8, r2.w
    add_pp r0.w, -r2.w, c3.y
    dp3_sat_pp r2.w, r6, -c10
    mul r2.w, r2.w, r3.w
    mul_pp r3.xyz, r3, r3
    mad_pp r4.xyz, r2.w, c36, r4
    mad_pp r3.xyz, r3, c17, r4
    mul_pp r3.xyz, r3, c16
    mul_pp r2.xyz, r2, r3
    mul_pp r3.xyz, r6.y, c91
    mad_pp r3.xyz, r6.x, c90, r3
    mad_pp r3.xyz, r6.z, c92, r3
    mad r2.w, r3.z, -r3.z, c3.y
    mul r3.w, c150.x, c150.x
    mad r2.w, r3.w, -r2.w, c3.y
    cmp r3.w, r2.w, c3.y, c3.x
    mul r2.w, r2.w, r3.w
    mul r3.w, r3.w, c150.x
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    mad r2.w, r3.w, -r3.z, r2.w
    mul_pp r3.xy, r3, r2.w
    add r3.zw, c0.z, vPos.xyxy
    mul r3.zw, r3, c24
    mad r4, c24.zzww, r9.xyyz, r9.yxzy
    mad r4.xy, r3.zwzw, c0.xwzw, r4
    texld r5, r3.zwzw, s11
    add_pp r3.zw, r4, r4.xyxy
    mad_pp r3.xy, r3, c1.y, r3.zwzw
    mad_pp r0.xy, r0, c151, r3
    mad r0.xy, r0, c1.zwzw, c1.z
    texld_pp r3, r0, s11
    mad r2.xyz, r2, v5, -r3
    mad_pp r0.xyz, r0.z, r2, r3
    mul_pp r2.x, r0.w, r0.w
    mul_pp r2.x, r2.x, r2.x
    mul_pp r0.w, r0.w, r2.x
    lrp_pp r2.x, r0.w, r1.y, c62.x
    mad_pp r0.xyz, r2.x, r1.xzww, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xyz, -r0, r5
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0
    mov_pp oC0.w, c3.y

// approximately 120 instruction slots used (7 texture, 113 arithmetic)
