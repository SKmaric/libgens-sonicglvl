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
//   sampler2D sampDLScatter;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampSpe0;
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
//   g_GIModeParam            c69      1
//   g_aLightField            c77      6
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampSpe0                 s2       1
//   sampNrm0                 s4       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 10, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s9
    dcl_2d s11
    texld_pp r0, v0, s0
    texld_pp r1, v1.zwzw, s1
    lrp_pp r2, v7.w, r0, r1
    mul_pp oC0.w, r2.w, c16.w
    nrm_pp r0.xyz, v6
    texld_pp r1, v1, s4
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    mul_pp r0.xyz, r0, r1.y
    nrm_pp r3.xyz, v5
    mad_pp r0.xyz, r1.x, r3, r0
    dp2add_sat_pp r0.w, r1, r1, c0.z
    add r0.w, -r0.w, c0.w
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r1.xyz, v3
    mad_pp r0.xyz, r0.w, r1, r0
    add r1.xyz, c22, -v2
    dp3 r0.w, r1, r1
    rsq r0.w, r0.w
    mul_pp r3.xyz, r0.w, r1
    mad_pp r1.xyz, r1, r0.w, -c10
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    nrm_pp r4.xyz, r1
    dp3_sat_pp r1.x, r4, r0
    add_pp r1.yzw, r3.xxyz, r3.xxyz
    dp3_sat_pp r2.w, r0, r3
    nrm_pp r3.xyz, r1.yzww
    dp3_sat_pp r1.y, r3, r0
    mov r3.y, c1.y
    mul_pp r1.z, r3.y, c20.y
    exp_pp r1.z, r1.z
    mul_pp r1.z, r1.z, c1.z
    pow_pp r3.x, r1.y, r1.z
    pow_pp r3.y, r1.x, r1.z
    mul_pp r1.x, r3.x, c20.z
    mul_pp r1.yzw, r0.w, c59.xxyz
    mul r3.xzw, r0.w, c58.xyyz
    mul_pp r3.xzw, r2.w, r3
    mul_pp r1.xyz, r1.yzww, r1.x
    mov r4, c77
    mul_pp r0.w, r4.w, c20.z
    mul_pp r0.w, r3.y, r0.w
    mad_pp r1.xyz, r0.w, c37, r1
    mul_pp r1.xyz, r1, c18
    texld_pp r5, v0, s2
    mul_pp r1.xyz, r1, r5
    mul_pp r1.xyz, r1, v3.w
    mad_pp r5.xyz, r0, c1.x, c1.x
    mov r6.xyz, c80
    mad r6.xyz, r6, r5.y, c79
    mul_pp r7.xyz, r0, r0
    dp3_sat_pp r0.x, r0, -c10
    mul r0.x, r0.x, c77.w
    mad_pp r0.xyz, r0.x, c36, r3.xzww
    mul r3.xyz, r6, r7.y
    mad r4.xyz, c78, r5.x, r4
    mov r6.xyz, c82
    mad r5.xyz, r6, r5.z, c81
    mad_pp r3.xyz, r7.x, r4, r3
    mad_pp r3.xyz, r7.z, r5, r3
    mad_pp r0.xyz, r3, c17, r0
    mul_pp r0.xyz, r0, c16
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c1.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 89 instruction slots used (6 texture, 83 arithmetic)
