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
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
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
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   sampDif                  s0       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord5 v3.xy
    dcl_color_pp v4
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s5
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v4.w
    add_pp r1.xyz, c22, -v1
    dp3_pp r0.w, r1, r1
    rsq_pp r0.w, r0.w
    rcp r1.w, r0.w
    mul r1.xyz, r0.w, r1
    mad_sat_pp r0.w, -r1.w, c60.z, c60.w
    mul r2.xyz, r0.w, c58
    nrm r3.xyz, v2
    dp3_sat_pp r0.w, r3, r1
    mul_pp r2.xyz, r2, r0.w
    dp3_sat_pp r0.w, r3, -c10
    texld r4, v0.zwzw, s10
    mul r0.w, r0.w, r4.w
    mad_pp r2.xyz, r0.w, c36, r2
    mul_pp r4.xyz, r4, r4
    mad_pp r2.xyz, r4, c17, r2
    mul_pp r2.xyz, r2, c16
    dp3 r0.w, -r1, r3
    add r0.w, r0.w, r0.w
    mad_pp r1.xyz, r3, -r0.w, -r1
    mov_pp r1.w, -r1.z
    texld_pp r1, r1.xyww, s5
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, r4.w, r1.w, r0.w
    mul r0.w, r0.w, c63.x
    mul_pp r1.xyz, r0.w, r1
    mul_pp r1.xyz, r1, v2.w
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v3.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v3.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 44 instruction slots used (5 texture, 39 arithmetic)
