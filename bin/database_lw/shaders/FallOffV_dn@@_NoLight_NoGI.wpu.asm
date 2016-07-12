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
//   float4 g_SonicSkinFalloffParam;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
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
//   g_aLightField            c77      6
//   g_SonicSkinFalloffParam  c150     1
//   sampDif                  s0       1
//   sampNrm                  s2       1
//   sampDLScatter            s9       1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 0
    dcl_texcoord v0.xy
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
    mad_pp r3.xyz, r1, c0.x, c0.x
    mov r4.xyz, c77
    mad r4.xyz, c78, r3.x, r4
    mov r5.xyz, c80
    mad r3.xyw, r5.xyzz, r3.y, c79.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mul_pp r6.xyz, r1, r1
    mul r3.xyz, r3.xyww, r6.y
    mad_pp r3.xyz, r6.x, r4, r3
    mad_pp r3.xyz, r6.z, r5, r3
    dp3_sat_pp r0.w, r1, -c10
    mul r0.w, r0.w, c77.w
    add_pp r4.xyz, c22, -v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mul_pp r4.xyz, r1.w, r4
    rcp r1.w, r1.w
    mad_sat_pp r1.w, -r1.w, c60.z, c60.w
    mul r5.xyz, r1.w, c58
    dp3_sat_pp r1.x, r1, r4
    dp3_pp r1.y, r2, r4
    mul_pp r1.xzw, r5.xyyz, r1.x
    mad_pp r1.xzw, r0.w, c36.xyyz, r1
    mad_pp r1.xzw, r3.xyyz, c17.xyyz, r1
    mul_pp r1.xzw, r1, c16.xyyz
    mov r2.z, c0.z
    add_pp r0.w, -r2.z, c150.w
    add_sat_pp r0.w, -r1.y, r0.w
    pow_pp r1.y, r0.w, c150.z
    mad_pp r0.w, c150.y, r1.y, c150.x
    mul_pp r2.xyz, r0.w, v7
    mul r0.w, c64.w, c64.y
    mov r3.yw, c64
    mad r1.y, r3.y, -r3.w, r3.w
    mad_pp r0.w, c77.w, r1.y, r0.w
    mul_pp r2.xyz, r0.w, r2
    mad_pp r0.xyz, r1.xzww, r0, r2
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 71 instruction slots used (4 texture, 67 arithmetic)
