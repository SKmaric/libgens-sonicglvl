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
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
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
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 10, 4, 1
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    mov r0.yw, c0
    mul_pp r0.x, r0.y, c20.y
    exp_pp r0.x, r0.x
    mul_pp r0.x, r0.x, c0.z
    add_pp r1.xyz, c22, -v1
    dp3_pp r0.y, r1, r1
    rsq_pp r0.y, r0.y
    mul_pp r2.xyz, r0.y, r1
    mad_pp r1.xyz, r1, r0.y, -c10
    rcp r0.y, r0.y
    mad_sat_pp r0.y, -r0.y, c60.z, c60.w
    nrm_pp r3.xyz, r1
    add_pp r1.xyz, r2, r2
    nrm_pp r4.xyz, r1
    nrm_pp r1.xyz, v2
    dp3_sat_pp r0.z, r4, r1
    pow_pp r1.w, r0.z, r0.x
    mul_pp r0.z, r1.w, c20.z
    mul_pp r4.xyz, r0.y, c59
    mul r5.xyz, r0.y, c58
    mul_pp r4.xyz, r0.z, r4
    dp3_sat_pp r0.y, r3, r1
    pow_pp r1.w, r0.y, r0.x
    texld r3, v0.zwzw, s10
    mul_pp r0.x, r3.w, c20.z
    mul_pp r0.x, r1.w, r0.x
    mad_pp r0.xyz, r0.x, c37, r4
    mul_pp r0.xyz, r0, c18
    texld_pp r4, v0, s1
    mul_pp r0.xyz, r0, r4
    mul_pp r0.xyz, r0, v2.w
    dp3_pp r1.w, r1, r2
    dp3_sat_pp r1.x, r1, -c10
    mul r1.x, r1.x, r3.w
    mov_sat_pp r1.y, r1.w
    mul_pp r2.xyz, r5, r1.y
    mad_pp r1.xyz, r1.x, c36, r2
    mul_pp r2.xyz, r3, r3
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r1, r2, r0
    mul_pp r1.x, r2.w, c16.w
    mad r1.x, r1.x, v4.w, -c0.w
    mad_pp oC0.w, c16.y, r1.x, r0.w
    add_pp r0.w, r0.w, c150.w
    add_sat_pp r0.w, -r1.w, r0.w
    pow_pp r1.x, r0.w, c150.z
    mad_pp r0.w, c150.y, r1.x, c150.x
    mul_pp r1.xyz, r0.w, v4
    mul r0.w, c64.w, c64.y
    mov r2.yw, c64
    mad r1.w, r2.y, -r2.w, r2.w
    mad_pp r0.w, r3.w, r1.w, r0.w
    mad_pp r0.xyz, r1, r0.w, r0
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    mul r0.w, c69.z, v3.x
    lrp_pp r2.xyz, r0.w, r1, r0
    mul_pp oC0.xyz, r2, c16

// approximately 75 instruction slots used (5 texture, 70 arithmetic)
