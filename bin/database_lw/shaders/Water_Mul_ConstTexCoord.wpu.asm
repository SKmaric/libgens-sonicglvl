//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   sampler2D g_DepthSampler;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   sampler2D g_FramebufferSampler;
//   sampler2D g_GISampler;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDecal;
//   sampler2D sampEnv;
//   sampler2D sampNrm1;
//   sampler2D sampNrm2;
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
//   g_EyeDirection           c23      1
//   g_ViewportSize           c24      1
//   mrgTexcoordIndex         c26      1
//   mrgGlobalLight_Specular  c37      1
//   sampDecal                s0       1
//   sampNrm1                 s1       1
//   sampNrm2                 s2       1
//   sampEnv                  s3       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//   g_DepthSampler           s12      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -2
    def c1, 0.00389099144, 1.51991853e-005, 0.99609381, 1024
    def c2, 0.5, -0.5, 500, 5
    def c3, 0.100000001, 4, 0.25, 0
    def c4, 0.212500006, 0.715399981, 0.0720999986, 0
    def c5, 1, 0, -1, 0.0500000007
    def c6, 0, 1, 2, 3
    def c7, 1, -1, 0, 0.5
    dcl_texcoord v0.xyz
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4.xyz
    dcl_texcoord5 v5
    dcl_texcoord6 v6
    dcl_color_pp v7
    dcl_texcoord7 v8.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    dcl_2d s12
    frc r0.xyz, c26.xzww
    cmp r1.xyz, -r0, c6.x, c6.y
    add r0.xyz, -r0, c26.xzww
    mov r2.x, c6.x
    cmp r1.xyz, c26.xzww, r2.x, r1
    add r0.xyz, r0, r1
    add r1, r0.x, -c6
    cmp r0.xw, -r1_abs.x, v5.xyzy, c6.x
    cmp r0.xw, -r1_abs.y, v5.zyzw, r0
    cmp r0.xw, -r1_abs.z, v6.xyzy, r0
    cmp r1.xy, -r1_abs.w, v6.zwzw, r0.xwzw
    add r1.z, r1.y, v1.x
    texld_pp r1, r1.xzzw, s0
    mul_pp r1, r1, v7
    mul_pp oC0.w, r1.w, c16.w
    add r2, r0.y, -c6
    add r0, r0.z, -c6
    cmp r3.xy, -r2_abs.x, v5, c6.x
    cmp r2.xy, -r2_abs.y, v5.zwzw, r3
    cmp r2.xy, -r2_abs.z, v6, r2
    cmp r2.xy, -r2_abs.w, v6.zwzw, r2
    add r2.z, r2.y, v1.x
    texld_pp r2, r2.xzzw, s1
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.x, c0.y
    dp2add r1.w, r2, -r2, c6.y
    rsq r1.w, r1.w
    rcp_pp r2.z, r1.w
    cmp r3.xy, -r0_abs.x, v5, c6.x
    cmp r0.xy, -r0_abs.y, v5.zwzw, r3
    cmp r0.xy, -r0_abs.z, v6, r0
    cmp r0.xy, -r0_abs.w, v6.zwzw, r0
    add r0.z, r0.y, v1.y
    texld_pp r0, r0.xzzw, s2
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c0.x, c0.y
    dp2add r0.w, r0, -r0, c6.y
    rsq r0.w, r0.w
    rcp_pp r0.z, r0.w
    add_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, c0.z
    nrm_pp r2.xyz, r0
    mul r0.xy, c24.zwzw, vPos
    mov r3.xyz, c5
    mad r3, c24.zzww, r3.xyyz, r3.yxzy
    mad r0.xy, r0, c0.xwzw, r3
    add r0.xy, r3.zwzw, r0
    mad r0.zw, r2.xyxy, c5.w, r0.xyxy
    mad r0.xy, r0, c2, c2.x
    texld_pp r3, r0, s11
    mad r0.xy, r0.zwzw, c2, c2.x
    texld r4, r0, s12
    texld_pp r0, r0, s11
    dp3 r0.w, r4.xyww, c1
    rcp r1.w, v1.w
    mad r0.w, v1.z, -r1.w, r0.w
    cmp_pp r0.xyz, r0.w, r0, r3
    nrm_pp r3.xyz, v4
    mul_pp r3.xyz, r2.y, r3
    nrm_pp r4.xyz, v3
    mad_pp r2.xyw, r2.x, r4.xyzz, r3.xyzz
    nrm_pp r3.xyz, v2
    mad_pp r2.xyz, r2.z, r3, r2.xyww
    add_pp r3, c22.xyzx, -v0.xyzx
    dp3_pp r0.w, r3.yzww, r3.yzww
    rsq_pp r0.w, r0.w
    mad_pp r4.xyz, r3, r0.w, -c10
    mul_pp r3, r0.w, r3
    nrm_pp r5.xyz, r4
    dp3_sat_pp r0.w, r5, r2
    mov_pp r4.zw, c2
    mul_pp r4.xy, r4.zwzw, c20.yzzw
    max_pp r1.w, r4.x, c6.y
    min_pp r2.w, r1.w, c1.w
    mul_pp r1.w, r2.w, c3.x
    exp_pp r1.w, r1.w
    mul_pp r1.w, r1.w, c3.y
    pow_pp r4.x, r0.w, r1.w
    mul_pp r0.w, r4.x, r4.y
    mul_pp r4.xyz, r0.w, c37
    mul_pp r5.xyz, r2.w, c18
    mul_pp r4.xyz, r4, r5
    dp3 r0.w, r2, c23
    pow r1.w, r0_abs.w, r2.w
    texld_pp r5, v5.zwzw, s10
    mul_pp r5.xyz, r5, r5
    mul_pp r5.xyz, r5, c17
    mul r5.xyz, r1.w, r5
    dp3_pp r0.w, r3.wyzw, r2
    add_pp r1.w, -r0_abs.w, c6.y
    add_pp r0.w, r0.w, r0.w
    mad_pp r2, r0.w, r2.xyzx, -r3
    mul_pp r0.w, r1.w, r1.w
    mad r1.w, r0.w, -r0.w, c6.y
    mul_pp r0.w, r0.w, r0.w
    mul r3.xyz, r1.w, r5
    mad_pp r3.xyz, r4, r5.w, r3
    mad_pp r0.xyz, r0, r1, r3
    dp3_sat r1.x, r3, c4
    add r1.x, -r1.x, c6.y
    mul r3, r2.wyzw, c5.zzxy
    mad_pp r4, r2, c7.xyyz, c7.zzzw
    cmp_pp r2, r2.z, r3, r4
    add_pp r1.y, r2.z, c6.y
    rcp r1.y, r1.y
    mad_pp r1.yz, r2.xyxw, r1.y, c6.y
    mad_pp r2.x, r1.z, c3.z, r2.w
    mul_pp r2.y, r1.y, c0.z
    texld_pp r2, r2, s3
    mul_pp r1.yzw, r0.w, r2.xxyz
    mad_pp r0.xyz, r1.yzww, r1.x, r0
    texld_pp r1, v8.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 129 instruction slots used (9 texture, 120 arithmetic)
