//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_DepthSampler;
//   sampler2D g_FramebufferSampler;
//   row_major float4x4 g_MtxView;
//   float4 g_ViewportSize;
//   float4 mrgDistortionParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   g_ViewportSize       c24      1
//   mrgTexcoordIndex     c26      1
//   g_MtxView            c90      3
//   mrgDistortionParam   c150     1
//   sampDif              s0       1
//   sampNrm              s1       1
//   sampDLScatter        s9       1
//   g_FramebufferSampler s11      1
//   g_DepthSampler       s12      1
//

    ps_3_0
    def c0, 2, -1, 1, 0
    def c1, 0.5, -0.5, 0, 0
    def c2, 0.00389099144, 1.51991853e-005, 0.99609381, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4.xy
    dcl_texcoord8 v5.xyz
    dcl_color_pp v6
    dcl_texcoord6_pp v7.xy
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s11
    dcl_2d s12
    frc r0.xy, c26.xzzw
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c26.xzzw
    mov r1.x, c3.x
    cmp r0.zw, c26.xyxz, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r1, r0.x, -c3
    add r0, r0.y, -c3
    cmp r2.xy, -r1_abs.x, v0, c3.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp oC0.w, r1.w, v6.w
    cmp r2.xy, -r0_abs.x, v0, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r2
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s1
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c0.x, c0.y
    nrm_pp r2.xyz, v5
    mul_pp r2.xyz, r0.y, r2
    nrm_pp r3.xyz, v3
    mad_pp r2.xyz, r0.x, r3, r2
    dp2add_sat_pp r0.x, r0, r0, c3.x
    add r0.x, -r0.x, c3.y
    rsq r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r3.xyz, v2
    mad_pp r0.xyz, r0.x, r3, r2
    mul_pp r0.yw, r0.y, c91.xxzy
    mad_pp r0.xy, r0.x, c90, r0.ywzw
    mad_pp r0.xy, r0.z, c92, r0
    mul_pp r0.xy, r0, c150.w
    dp2add_pp r2.x, vPos.x, c24.z, r0.x
    mul r0.x, c24.w, vPos.y
    mad_pp r2.y, r0.x, -c3.z, r0.y
    add r0.xy, r2, c0.yzzw
    mad r0.xy, r0, c1, c1.x
    texld_pp r2, r0, s11
    texld r0, r0, s12
    dp3 r0.x, r0.xyww, c2
    mul_pp r0.yzw, r1.xxyz, r2.xxyz
    add_pp r1.xyz, -r1, c3.y
    add_pp r0.yzw, r0, r0
    add r3.xyz, r2, -c150.z
    add_pp r2.xyz, -r2, c3.y
    add_pp r2.xyz, r2, r2
    mad_pp r1.xyz, r2, -r1, c3.y
    cmp_pp r1.xyz, r3, r1, c3.x
    cmp_pp r0.yzw, r3.xxyz, c3.x, r0
    add_pp r0.yzw, r1.xxyz, r0
    rcp r1.x, v7.y
    mad r0.x, v7.x, -r1.x, r0.x
    mad_pp r1.x, v7.x, -r1.x, c3.y
    rcp r1.x, r1.x
    mul r1.x, r1.x, c150.y
    max r1.y, r0.x, c3.x
    mul_pp r0.x, r1.x, r1.y
    lrp_pp r1.xyz, r0.x, v6, r0.yzww
    texld_pp r0, v4.yxzw, s9
    mad_pp oC0.xyz, r1, r0.w, r0

// approximately 71 instruction slots used (5 texture, 66 arithmetic)
