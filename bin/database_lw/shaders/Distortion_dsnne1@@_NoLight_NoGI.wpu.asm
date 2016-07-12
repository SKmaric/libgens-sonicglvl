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
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
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
//   g_aLightField            c77      6
//   g_MtxView                c90      3
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s3       1
//   sampNrm2                 s4       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 0
    def c1, 10, 4, 0.5, -0.5
    def c2, 0.0500000007, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    mov r1.x, c1.x
    mul_pp r0.w, r1.x, c20.y
    exp_pp r0.w, r0.w
    mul_pp r0.w, r0.w, c1.y
    nrm_pp r1.xyz, v6
    texld r2, v1, s3
    texld r3, v1, s4
    lrp_pp r4.yzw, c0.x, r3.xxyw, r2.xxyw
    mul_pp r4.x, r4.w, r4.y
    mad_pp r2.xy, r4.xzzw, c0.y, c0.z
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_sat_pp r1.w, r2, r2, c0.w
    add r1.w, -r1.w, -c0.z
    rsq r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r2.xyz, v3
    mad_pp r1.xyz, r1.w, r2, r1
    add_pp r2.xyz, c22, -v2
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    mul_pp r3.xyz, r1.w, r2
    mad_pp r2.xyz, r2, r1.w, -c10
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    nrm_pp r4.xyz, r2
    dp3_sat_pp r2.x, r4, r1
    pow_pp r3.w, r2.x, r0.w
    add_pp r2.xyz, r3, r3
    dp3_sat_pp r2.w, r1, r3
    nrm_pp r3.xyz, r2
    dp3_sat_pp r2.x, r3, r1
    pow_pp r3.x, r2.x, r0.w
    mul_pp r0.w, r3.x, c20.z
    mul_pp r2.xyz, r1.w, c59
    mul r3.xyz, r1.w, c58
    mul_pp r3.xyz, r2.w, r3
    mul_pp r2.xyz, r0.w, r2
    mov r4, c77
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r3.w, r0.w
    mad_pp r2.xyz, r0.w, c37, r2
    mul r5, r1.y, c91
    mad r5, r1.x, c90, r5
    mad r5, r1.z, c92, r5
    dp4 r0.w, r5, r5
    rsq r0.w, r0.w
    mul r5.zw, r0.w, r5.xyxy
    mad_pp r5.zw, r5, c1, c1.z
    texld_pp r6, r5.zwzw, s5
    mul r0.w, c64.z, c64.x
    mov r7.xz, c64
    mad r1.w, r7.x, -r7.z, r7.z
    mad_pp r0.w, c77.w, r1.w, r0.w
    texld r7, v0, s1
    mul r1.w, r7.w, c63.x
    mul r0.w, r0.w, r1.w
    mul_pp r6.xyz, r0.w, r6
    mad_pp r2.xyz, r2, c18, r6
    mul_pp r2.xyz, r7, r2
    mul_pp r2.xyz, r2, v3.w
    mad_pp r6.xyz, r1, c0.x, c0.x
    mov r7.xyz, c80
    mad r7.xyz, r7, r6.y, c79
    mul_pp r8.xyz, r1, r1
    dp3_sat_pp r0.w, r1, -c10
    mul r0.w, r0.w, c77.w
    mad_pp r1.xyz, r0.w, c36, r3
    mul r3.xyz, r7, r8.y
    mad r4.xyz, c78, r6.x, r4
    mov r7.xyz, c82
    mad r6.xyz, r7, r6.z, c81
    mad_pp r3.xyz, r8.x, r4, r3
    mad_pp r3.xyz, r8.z, r6, r3
    mad_pp r1.xyz, r3, c17, r1
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r0, r2
    mul r0.w, c24.w, vPos.y
    mad_pp r1.y, r0.w, -c0.y, -c0.z
    mov r1.z, c0.z
    dp2add_pp r1.x, vPos.x, c24.z, r1.z
    mad_pp r1.xy, r5, c2.x, r1
    mad r1.xy, r1, c1.zwzw, c1.z
    texld_pp r1, r1, s11
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 114 instruction slots used (8 texture, 106 arithmetic)
