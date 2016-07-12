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
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_PowerGlossLevel;
//   sampler2D g_ReflectionMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_WaterParam;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDecal;
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
//   g_aLightField            c77      6
//   g_WaterParam             c150     1
//   sampDecal                s0       1
//   sampNrm1                 s1       1
//   sampNrm2                 s2       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//   g_DepthSampler           s12      1
//   g_ReflectionMapSampler   s14      1
//

    ps_3_0
    def c0, 2, -2, 0.5, -0.5
    def c1, 2, -1, 0.5, 0.0500000007
    def c2, 0.00389099144, 1.51991853e-005, 0.99609381, 0.100000001
    def c3, 500, 5, 4, 0
    def c8, 1, 0, -1, 1024
    def c9, 0.212500006, 0.715399981, 0.0720999986, 0
    def c11, 0, 1, 2, 3
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
    dcl_2d s9
    dcl_2d s11
    dcl_2d s12
    dcl_2d s14
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
    nrm_pp r1.xyz, v4
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v3
    mad_pp r1.xyz, r2.x, r3, r1
    nrm_pp r3.xyz, v2
    mad_pp r1.xyz, r2.z, r3, r1
    mad_pp r3.xyz, r1, c1.z, c1.z
    mov r4.xyz, c77
    mad r4.xyz, c78, r3.x, r4
    mul_pp r5.xyz, r1, r1
    mov r6.xyz, c80
    mad r3.xyw, r6.xyzz, r3.y, c79.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r3.z, c81
    mul r3.xyz, r3.xyww, r5.y
    mad_pp r3.xyz, r5.x, r4, r3
    mad_pp r3.xyz, r5.z, r6, r3
    mul_pp r3.xyz, r3, c17
    dp3_sat_pp r1.w, r1, -c10
    mul_pp r4.xyz, r1.w, c36
    mul_pp r4.xyz, r4, c16
    mad_pp r4.xyz, r4, c77.w, r3
    mov r1.w, c1.w
    add r1.w, r1.w, c150.z
    mul r2.zw, c24, vPos.xyxy
    mov r5.xyz, c8
    mad r5, c24.zzww, r5.xyyz, r5.yxzy
    mad r2.zw, r2, c0.xyxy, r5.xyxy
    add r2.zw, r5, r2
    mad r5.xy, r1.w, r2, r2.zwzw
    mad r2.xy, r1.w, -r2, r2.zwzw
    mad r2.xy, r2, c1.z, c1.z
    texld_pp r6, r2, s14
    mad r2.xy, r5, c0.zwzw, c0.z
    texld r5, r2, s12
    texld_pp r7, r2, s11
    dp3 r1.w, r5.xyww, c2
    rcp r2.x, v1.w
    mad r1.w, v1.z, -r2.x, r1.w
    mad r2.xy, r2.zwzw, c0.zwzw, c0.z
    texld_pp r5, r2, s11
    texld r8, r2, s12
    dp3 r2.x, r8.xyww, c2
    cmp_pp r5.xyz, r1.w, r7, r5
    cmp r7.xy, -r0_abs.x, v5, c11.x
    cmp r0.xy, -r0_abs.y, v5.zwzw, r7
    cmp r0.xy, -r0_abs.z, v6, r0
    cmp r0.xy, -r0_abs.w, v6.zwzw, r0
    add r0.z, r0.y, v1.x
    texld_pp r0, r0.xzzw, s0
    mul_pp r0, r0, v7
    mad_pp r0.xyz, r0, r4, -r5
    mul_pp r0.w, r0.w, c16.w
    mul r2.yw, r2.w, c5.xzzw
    mad r2.yz, r2.z, c4.xzww, r2.xyww
    mad r2.xy, r2.x, c6.zwzw, r2.yzzw
    add r2.xy, r2, c7.zwzw
    rcp r1.w, r2.y
    mad r1.w, r2.x, -r1.w, v8.w
    mul_sat_pp r1.w, r1.w, c1.z
    mul_pp r0.w, r0.w, r1.w
    mad_pp r0.xyz, r0.w, r0, r5
    dp3 r0.w, r1, c23
    mov_pp r2.xy, c3
    mul_pp r2.xy, r2, c20.yzzw
    max_pp r1.w, r2.x, c11.y
    min_pp r2.x, r1.w, c8.w
    pow r1.w, r0_abs.w, r2.x
    mul r3.xyz, r3, r1.w
    add_pp r4.xyz, c22, -v0
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    mul_pp r5.xyz, r0.w, r4
    mad_pp r4.xyz, r4, r0.w, -c10
    nrm_pp r7.xyz, r4
    dp3_sat_pp r0.w, r7, r1
    dp3_pp r1.x, r1, r5
    add_pp r1.x, -r1_abs.x, c11.y
    mul_pp r1.x, r1.x, r1.x
    mad r1.y, r1.x, -r1.x, c11.y
    mul_pp r1.x, r1.x, r1.x
    mul_pp r1.xzw, r1.x, r6.xyyz
    mul r3.xyz, r1.y, r3
    mul_pp r1.y, r2.x, c2.w
    mul_pp r2.xzw, r2.x, c18.xyyz
    exp_pp r1.y, r1.y
    mul_pp r1.y, r1.y, c3.z
    pow_pp r3.w, r0.w, r1.y
    mul_pp r0.w, r2.y, r3.w
    mul_pp r4.xyz, r0.w, c37
    mul_pp r2.xyz, r2.xzww, r4
    mad_pp r2.xyz, r2, c77.w, r3
    add_pp r0.xyz, r0, r2
    dp3_sat r0.w, r2, c9
    add r0.w, -r0.w, c11.y
    mad_pp r0.xyz, r1.xzww, r0.w, r0
    texld_pp r1, v8.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, c11.y

// approximately 149 instruction slots used (9 texture, 140 arithmetic)
