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
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_PowerGlossLevel;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_WaterParam;
//   float4 mrgGlobalLight_Diffuse;
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
//   g_MtxInvProjection       c4       4
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_Specular               c18      1
//   g_PowerGlossLevel        c20      1
//   g_EyePosition            c22      1
//   g_EyeDirection           c23      1
//   g_ViewportSize           c24      1
//   mrgTexcoordIndex         c26      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgGlobalLight_Specular  c37      1
//   g_WaterParam             c150     1
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
    def c0, 2, -2, 0.5, -0.5
    def c1, 2, -1, 0.5, 0.0500000007
    def c2, 0.00389099144, 1.51991853e-005, 0.99609381, 0.100000001
    def c3, 500, 5, 4, 0.25
    def c8, 1, 0, -1, 1024
    def c9, 0.212500006, 0.715399981, 0.0720999986, 0
    def c11, 0, 1, 2, 3
    def c12, 1, -1, 0, 0.5
    dcl_texcoord v0.xyz
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4.xyz
    dcl_texcoord5 v5
    dcl_texcoord6 v6
    dcl_color_pp v7
    dcl_texcoord7_pp v8.xyw
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
    cmp r1.xyz, -r0, c11.x, c11.y
    add r0.xyz, -r0, c26.xzww
    mov r2.x, c11.x
    cmp r1.xyz, c26.xzww, r2.x, r1
    add r0.xyz, r0, r1
    add r1, r0.y, -c11
    cmp r0.yw, -r1_abs.x, v5.xxzy, c11.x
    cmp r0.yw, -r1_abs.y, v5.xzzw, r0
    cmp r0.yw, -r1_abs.z, v6.xxzy, r0
    cmp r1.xy, -r1_abs.w, v6.zwzw, r0.ywzw
    add r1.z, r1.y, v1.x
    texld_pp r1, r1.xzzw, s1
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c1.x, c1.y
    dp2add r0.y, r1, -r1, c11.y
    rsq r0.y, r0.y
    rcp_pp r1.z, r0.y
    add r2, r0.z, -c11
    add r0, r0.x, -c11
    cmp r3.xy, -r2_abs.x, v5, c11.x
    cmp r2.xy, -r2_abs.y, v5.zwzw, r3
    cmp r2.xy, -r2_abs.z, v6, r2
    cmp r2.xy, -r2_abs.w, v6.zwzw, r2
    add r2.z, r2.y, v1.y
    texld_pp r2, r2.xzzw, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c1.x, c1.y
    dp2add r1.w, r2, -r2, c11.y
    rsq r1.w, r1.w
    rcp_pp r2.z, r1.w
    add_pp r1.xyz, r1, r2
    mul_pp r1.xyz, r1, c1.z
    nrm_pp r2.xyz, r1
    mov r1.w, c1.w
    add r1.x, r1.w, c150.z
    mul r1.yz, c24.xzww, vPos.xxyw
    mov r3.xyz, c8
    mad r3, c24.zzww, r3.xyyz, r3.yxzy
    mad r1.yz, r1, c0.xxyw, r3.xxyw
    add r1.yz, r3.xzww, r1
    mad r1.xw, r1.x, r2.xyzy, r1.yyzz
    mad r1.xw, r1, c0.zyzw, c0.z
    texld r3, r1.xwzw, s12
    texld_pp r4, r1.xwzw, s11
    dp3 r1.x, r3.xyww, c2
    rcp r1.w, v1.w
    mad r1.x, v1.z, -r1.w, r1.x
    mad r3.xy, r1.yzzw, c0.zwzw, c0.z
    texld_pp r5, r3, s11
    texld r3, r3, s12
    dp3 r1.w, r3.xyww, c2
    cmp_pp r3.xyz, r1.x, r4, r5
    nrm_pp r4.xyz, v4
    mul_pp r4.xyz, r2.y, r4
    nrm_pp r5.xyz, v3
    mad_pp r2.xyw, r2.x, r5.xyzz, r4.xyzz
    nrm_pp r4.xyz, v2
    mad_pp r2.xyz, r2.z, r4, r2.xyww
    dp3_sat_pp r1.x, r2, -c10
    mul_pp r4.xyz, r1.x, c36
    mul_pp r4.xyz, r4, c16
    texld_pp r5, v5.zwzw, s10
    mul_pp r5.xyz, r5, r5
    mul_pp r5.xyz, r5, c17
    mad_pp r4.xyz, r4, r5.w, r5
    cmp r6.xy, -r0_abs.x, v5, c11.x
    cmp r0.xy, -r0_abs.y, v5.zwzw, r6
    cmp r0.xy, -r0_abs.z, v6, r0
    cmp r0.xy, -r0_abs.w, v6.zwzw, r0
    add r0.z, r0.y, v1.x
    texld_pp r0, r0.xzzw, s0
    mul_pp r0, r0, v7
    mad_pp r0.xyz, r0, r4, -r3
    mul_pp r0.w, r0.w, c16.w
    mul r1.xz, r1.z, c5.zyww
    mad r1.xy, r1.y, c4.zwzw, r1.xzzw
    mad r1.xy, r1.w, c6.zwzw, r1
    add r1.xy, r1, c7.zwzw
    rcp r1.y, r1.y
    mad r1.x, r1.x, -r1.y, v8.w
    mul_sat_pp r1.x, r1.x, c1.z
    mul_pp r0.w, r0.w, r1.x
    mad_pp r0.xyz, r0.w, r0, r3
    add_pp r1, c22.xyzx, -v0.xyzx
    dp3_pp r0.w, r1.yzww, r1.yzww
    rsq_pp r0.w, r0.w
    mad_pp r3.xyz, r1, r0.w, -c10
    mul_pp r1, r0.w, r1
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.w, r4, r2
    mov_pp r3.xy, c3
    mul_pp r3.xy, r3, c20.yzzw
    max_pp r2.w, r3.x, c11.y
    min_pp r3.x, r2.w, c8.w
    mul_pp r2.w, r3.x, c2.w
    exp_pp r2.w, r2.w
    mul_pp r2.w, r2.w, c3.z
    pow_pp r3.z, r0.w, r2.w
    mul_pp r0.w, r3.z, r3.y
    mul_pp r3.yzw, r0.w, c37.xxyz
    mul_pp r4.xyz, r3.x, c18
    mul_pp r3.yzw, r3, r4.xxyz
    dp3 r0.w, r2, c23
    pow r2.w, r0_abs.w, r3.x
    mul r4.xyz, r5, r2.w
    dp3_pp r0.w, r1.wyzw, r2
    add_pp r2.w, -r0_abs.w, c11.y
    add_pp r0.w, r0.w, r0.w
    mad_pp r1, r0.w, r2.xyzx, -r1
    mul_pp r0.w, r2.w, r2.w
    mad r2.x, r0.w, -r0.w, c11.y
    mul_pp r0.w, r0.w, r0.w
    mul r2.xyz, r2.x, r4
    mad_pp r2.xyz, r3.yzww, r5.w, r2
    add_pp r0.xyz, r0, r2
    dp3_sat r2.x, r2, c9
    add r2.x, -r2.x, c11.y
    mul r3, r1.wyzw, c8.zzxy
    mad r4, r1, c12.xyyz, c12.zzzw
    cmp_pp r1, r1.z, r3, r4
    add_pp r1.z, r1.z, c11.y
    rcp r1.z, r1.z
    mad_pp r1.xy, r1.yxzw, r1.z, c11.y
    mad_pp r3.x, r1.y, c3.w, r1.w
    mul_pp r3.y, r1.x, c1.z
    texld_pp r1, r3, s3
    mul_pp r1.xyz, r0.w, r1
    mad_pp r0.xyz, r1, r2.x, r0
    texld_pp r1, v8.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, c11.y

// approximately 148 instruction slots used (10 texture, 138 arithmetic)
