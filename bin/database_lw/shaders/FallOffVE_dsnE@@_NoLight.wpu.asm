//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EmissionParam;
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
//   sampler2D sampFO;
//   sampler2D sampNrm;
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
//   g_EmissionParam          c151     1
//   sampDif                  s0       1
//   sampSpe                  s1       1
//   sampNrm                  s2       1
//   sampFO                   s4       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 0
    def c1, 10, 4, 0, 0
    dcl_texcoord v0
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
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    nrm_pp r1.xyz, v6
    texld_pp r2, v1, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.y, c0.z
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_sat_pp r0.w, r2, r2, c0.w
    add r0.w, -r0.w, -c0.z
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r2.xyz, v3
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r3.xyz, c22, -v2
    dp3_pp r0.w, r3, r3
    rsq_pp r0.w, r0.w
    mul_pp r4.xyz, r0.w, r3
    mad_pp r3.xyz, r3, r0.w, -c10
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.w, r5, r1
    add_pp r3.xyz, r4, r4
    nrm_pp r5.xyz, r3
    dp3_sat_pp r2.w, r5, r1
    mov r3.y, c20.y
    mul_pp r3.x, r3.y, c1.x
    exp_pp r3.x, r3.x
    mul_pp r3.x, r3.x, c1.y
    pow_pp r4.w, r2.w, r3.x
    pow_pp r2.w, r1.w, r3.x
    mul_pp r1.w, r4.w, c20.z
    mul_pp r3.xyz, r0.w, c59
    mul r5.xyz, r0.w, c58
    mul_pp r3.xyz, r1.w, r3
    texld r6, v0.zwzw, s10
    mul_pp r0.w, r6.w, c20.z
    mul_pp r0.w, r2.w, r0.w
    mad_pp r3.xyz, r0.w, c37, r3
    mul_pp r3.xyz, r3, c18
    texld_pp r7, v0, s1
    mul_pp r3.xyz, r3, r7
    mul_pp r3.xyz, r3, v3.w
    dp3_sat_pp r0.w, r1, r4
    dp3_sat_pp r1.x, r1, -c10
    mul r1.x, r1.x, r6.w
    dp3_pp r1.y, r2, r4
    mul_pp r2.xyz, r5, r0.w
    mad_pp r1.xzw, r1.x, c36.xyyz, r2.xyyz
    mad_pp r1.xzw, r6.xyyz, r6.xyyz, r1
    mul_pp r1.xzw, r1, c16.xyyz
    mad_pp r0.xyz, r1.xzww, r0, r3
    mov r1.z, c0.z
    add_pp r0.w, -r1.z, c150.w
    add_sat_pp r0.w, -r1.y, r0.w
    pow_pp r1.x, r0.w, c150.z
    mad_pp r0.w, c150.y, r1.x, c150.x
    mul_pp r1.xyz, r0.w, v7
    mul r0.w, c64.w, c64.y
    mov r2.yw, c64
    mad r1.w, r2.y, -r2.w, r2.w
    mad_pp r0.w, r6.w, r1.w, r0.w
    mad_pp r0.xyz, r1, r0.w, r0
    texld_pp r1, v1.zwzw, s4
    add r1.xyz, r1, c151
    mul r1.xyz, r1, c17
    mul_pp r1.xyz, r1, c151.w
    mad_pp r0.xyz, r1, c17, r0
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 96 instruction slots used (7 texture, 89 arithmetic)
