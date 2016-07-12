//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   sampler2D g_GISampler;
//   row_major float4x4 g_MtxView;
//   float4 g_ViewportSize;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 s_LightScaleParam;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//
//
// Registers:
//
//   Name                   Reg   Size
//   ---------------------- ----- ----
//   g_Diffuse              c16      1
//   g_ViewportSize         c24      1
//   mrgGlobalLight_Diffuse c36      1
//   mrgLuminanceRange      c63      1
//   mrgInShadowScale       c64      1
//   g_GIModeParam          c69      1
//   g_MtxView              c90      3
//   s_LightScaleParam      c151     1
//   sampDif                s0       1
//   sampEnv                s4       1
//   sampDLScatter          s9       1
//   g_GISampler            s10      1
//   g_FramebufferSampler   s11      1
//

    ps_3_0
    def c0, 0.5, 1, -0.5, 0
    dcl_texcoord v0
    dcl_texcoord3_pp v1
    dcl_texcoord5 v2.xy
    dcl_color_pp v3
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s4
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v3.w
    nrm_pp r1.xyz, v1
    mul r2, r1.y, c91
    mad r2, r1.x, c90, r2
    mad r1, r1.z, c92, r2
    dp4 r0.w, r1, r1
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r1
    mad_pp r1.xy, r1, c0.xzzw, c0.x
    texld_pp r1, r1, s4
    mul r0.w, c64.z, c64.x
    mov r2.xz, c64
    mad r1.w, r2.x, -r2.z, r2.z
    texld r2, v0.zwzw, s10
    mad_pp r0.w, r2.w, r1.w, r0.w
    mul r0.w, r0.w, c63.x
    mul_pp r1.xyz, r0.w, r1
    mul_pp r1.xyz, r1, v1.w
    mov_sat r0.w, r2.w
    mov_sat_pp r1.w, c151.x
    lrp r2.w, r0.w, c0.y, r1.w
    mul_pp r3.xyz, r2.w, c36
    mad_pp r2.xyz, r2, r2, r3
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v3
    texld_pp r1, v2.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v2.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 38 instruction slots used (5 texture, 33 arithmetic)
