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
//   float4 g_SonicSkinFalloffParam;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   g_EyePosition            c22      1
//   g_ViewportSize           c24      1
//   mrgGlobalLight_Diffuse   c36      1
//   mrgEyeLight_Diffuse      c58      1
//   mrgEyeLight_Range        c60      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord5 v4.xy
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s2
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    nrm_pp r0.xyz, v6
    texld_pp r1, v1, s2
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.y, c0.z
    mul_pp r0.xyz, r0, r1.y
    nrm_pp r2.xyz, v5
    mad_pp r0.xyz, r1.x, r2, r0
    dp2add_sat_pp r0.w, r1, r1, c0.w
    add r0.w, -r0.w, -c0.z
    rsq r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r1.xyz, v3
    mad_pp r0.xyz, r0.w, r1, r0
    add_pp r2.xyz, c22, -v2
    dp3_pp r0.w, r2, r2
    rsq_pp r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    mul r3.xyz, r0.w, c58
    dp3_sat_pp r0.w, r0, r2
    dp3_sat_pp r0.x, r0, -c10
    dp3_pp r0.y, r1, r2
    mul_pp r1.xyz, r3, r0.w
    texld r2, v0.zwzw, s10
    mul r0.x, r0.x, r2.w
    mad_pp r0.xzw, r0.x, c36.xyyz, r1.xyyz
    mul_pp r1.xyz, r2, r2
    mad_pp r0.xzw, r1.xyyz, c17.xyyz, r0
    mul_pp r0.xzw, r0, c16.xyyz
    mov r1.z, c0.z
    add_pp r1.x, -r1.z, c150.w
    add_sat_pp r0.y, -r0.y, r1.x
    pow_pp r1.x, r0.y, c150.z
    mad_pp r0.y, c150.y, r1.x, c150.x
    mul_pp r1.xyw, r0.y, v7.xyzz
    mul r0.y, c64.w, c64.y
    mov r3.yw, c64
    mad r2.x, r3.y, -r3.w, r3.w
    mad_pp r0.y, r2.w, r2.x, r0.y
    mul_pp r1.xyw, r0.y, r1
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0.xzww, r2, r1.xyww
    mul_pp r0.w, r2.w, c16.w
    mad r0.w, r0.w, v7.w, c0.z
    mad_pp oC0.w, c16.y, r0.w, -r1.z
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    mul r0.w, c69.z, v4.x
    lrp_pp r2.xyz, r0.w, r1, r0
    mul_pp oC0.xyz, r2, c16

// approximately 63 instruction slots used (5 texture, 58 arithmetic)
