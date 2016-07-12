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
//   float4 g_GIModeParam;
//   float4 g_PowerGlossLevel;
//   sampler2D g_ReflectionMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
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
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   sampDecal                s0       1
//   sampNrm1                 s1       1
//   sampNrm2                 s2       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//   g_DepthSampler           s12      1
//   g_ReflectionMapSampler   s14      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -2
    def c1, 0.00389099144, 1.51991853e-005, 0.99609381, 1024
    def c2, 0.5, -0.5, 500, 5
    def c3, 0.100000001, 4, 0, 0
    def c4, 0.212500006, 0.715399981, 0.0720999986, 0
    def c5, 1, 0, -1, 0.0500000007
    def c6, 0, 1, 2, 3
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
    dcl_2d s9
    dcl_2d s11
    dcl_2d s12
    dcl_2d s14
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
    mul_pp r0.x, r1.w, v7.w
    mul_pp oC0.w, r0.x, c16.w
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
    nrm_pp r0.xyz, v4
    mul_pp r0.xyz, r0, r2.y
    nrm_pp r3.xyz, v3
    mad_pp r0.xyz, r2.x, r3, r0
    nrm_pp r3.xyz, v2
    mad_pp r0.xyz, r2.z, r3, r0
    mad_pp r3.xyz, r0, c0.z, c0.z
    mov r4.xyz, c77
    mad r4.xyz, c78, r3.x, r4
    mul_pp r5.xyz, r0, r0
    mov r6.xyz, c80
    mad r3.xyw, r6.xyzz, r3.y, c79.xyzz
    mov r6.xyz, c82
    mad r6.xyz, r6, r3.z, c81
    mul r3.xyz, r3.xyww, r5.y
    mad_pp r3.xyz, r5.x, r4, r3
    mad_pp r3.xyz, r5.z, r6, r3
    mul_pp r3.xyz, r3, c17
    dp3 r0.w, r0, c23
    mov_pp r2.zw, c2
    mul_pp r2.zw, r2, c20.xyyz
    max_pp r1.w, r2.z, c6.y
    min_pp r2.z, r1.w, c1.w
    pow r1.w, r0_abs.w, r2.z
    mul r3.xyz, r3, r1.w
    add_pp r4.xyz, c22, -v0
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    mul_pp r5.xyz, r0.w, r4
    mad_pp r4.xyz, r4, r0.w, -c10
    nrm_pp r6.xyz, r4
    dp3_sat_pp r0.w, r6, r0
    dp3_pp r0.x, r0, r5
    add_pp r0.x, -r0_abs.x, c6.y
    mul_pp r0.x, r0.x, r0.x
    mad r0.y, r0.x, -r0.x, c6.y
    mul_pp r0.x, r0.x, r0.x
    mul r3.xyz, r0.y, r3
    mul_pp r0.y, r2.z, c3.x
    mul_pp r4.xyz, r2.z, c18
    exp_pp r0.y, r0.y
    mul_pp r0.y, r0.y, c3.y
    pow_pp r1.w, r0.w, r0.y
    mul_pp r0.y, r1.w, r2.w
    mul_pp r0.yzw, r0.y, c37.xxyz
    mul_pp r0.yzw, r4.xxyz, r0
    mad_pp r0.yzw, r0, c77.w, r3.xxyz
    mul r2.zw, c24, vPos.xyxy
    mov r3.xyz, c5
    mad r3, c24.zzww, r3.xyyz, r3.yxzy
    mad r2.zw, r2, c0.xyxw, r3.xyxy
    add r2.zw, r3, r2
    mad r3.xy, r2, c5.w, r2.zwzw
    mad r2.xy, r2, -c5.w, r2.zwzw
    mad r2.zw, r2, c2.xyxy, c2.x
    texld_pp r4, r2.zwzw, s11
    mad r2.xy, r2, c0.z, c0.z
    texld_pp r2, r2, s14
    mul_pp r2.xyz, r0.x, r2
    mad r3.xy, r3, c2, c2.x
    texld r5, r3, s12
    texld_pp r3, r3, s11
    dp3 r0.x, r5.xyww, c1
    rcp r1.w, v1.w
    mad r0.x, v1.z, -r1.w, r0.x
    cmp_pp r3.xyz, r0.x, r3, r4
    mad_pp r1.xyz, r1, v7, r3
    add_pp r1.xyz, r0.yzww, r1
    dp3_sat r0.x, r0.yzww, c4
    add r0.x, -r0.x, c6.y
    mad_pp r0.xyz, r2, r0.x, r1
    texld_pp r1, v8.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v8.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 137 instruction slots used (9 texture, 128 arithmetic)
