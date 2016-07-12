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
//   sampler2D sampDLScatter;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
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
//   g_GIModeParam            c69      1
//   sampDif0                 s0       1
//   sampDif1                 s1       1
//   sampSpe0                 s2       1
//   sampSpe1                 s3       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 10, 4, 0.5, 0
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
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    texld_pp r1, v1, s1
    lrp_pp r2, v5.w, r0, r1
    mul_pp oC0.w, r2.w, c16.w
    texld_pp r0, v0, s2
    texld_pp r1, v1, s3
    lrp_pp r3.xyz, v5.w, r0, r1
    mov r0.x, c0.x
    mul_pp r0.x, r0.x, c20.y
    exp_pp r0.x, r0.x
    mul_pp r0.x, r0.x, c0.y
    add r0.yzw, c22.xxyz, -v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r1.yzw, r0, r1.x
    mad_pp r0.yzw, r0, r1.x, -c10.xxyz
    rcp r1.x, r1.x
    mad_sat_pp r1.x, -r1.x, c60.z, c60.w
    nrm_pp r4.xyz, r0.yzww
    add_pp r0.yzw, r1, r1
    nrm_pp r5.xyz, r0.yzww
    nrm_pp r6.xyz, v3
    dp3_sat_pp r0.y, r5, r6
    pow_pp r2.w, r0.y, r0.x
    mul_pp r0.y, r2.w, c20.z
    mul_pp r5.xyz, r1.x, c59
    mul r7.xyz, r1.x, c58
    mul_pp r0.yzw, r0.y, r5.xxyz
    dp3_sat_pp r1.x, r4, r6
    pow_pp r2.w, r1.x, r0.x
    texld_pp r4, v0.zwzw, s10
    mul_pp r0.x, r4.w, c20.z
    mul_pp r0.x, r2.w, r0.x
    mad_pp r0.xyz, r0.x, c37, r0.yzww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r3, r0
    mul_pp r0.xyz, r0, v3.w
    dp3_sat_pp r0.w, r6, r1.yzww
    dp3_sat_pp r1.x, r6, -c10
    mul r1.x, r1.x, r4.w
    mul_pp r1.yzw, r4.xxyz, r4.xxyz
    mul_pp r3.xyz, r7, r0.w
    mad_pp r3.xyz, r1.x, c36, r3
    mad_pp r1.xyz, r1.yzww, c17, r3
    mul_pp r1.xyz, r1, c16
    mad_pp r0.xyz, r1, r2, r0
    mul_pp r0.xyz, r0, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 65 instruction slots used (7 texture, 58 arithmetic)
