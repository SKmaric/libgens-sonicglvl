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
//   row_major float4x4 g_MtxView;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   sampler2D sampEnv;
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
//   mrgLuminanceRange        c63      1
//   mrgInShadowScale         c64      1
//   g_GIModeParam            c69      1
//   g_MtxView                c90      3
//   g_EmissionParam          c150     1
//   sampDif                  s0       1
//   sampNrm                  s3       1
//   sampEmi                  s4       1
//   sampEnv                  s5       1
//   sampDLScatter            s9       1
//   g_GISampler              s10      1
//   g_FramebufferSampler     s11      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 0
    def c1, 0.5, -0.5, 0, 0
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
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s9
    dcl_2d s10
    dcl_2d s11
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, v7.w
    nrm_pp r1.xyz, v6
    texld_pp r2, v1, s3
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
    add r2.xyz, c22, -v2
    dp3 r0.w, r2, r2
    rsq r0.w, r0.w
    mul_pp r2.xyz, r0.w, r2
    rcp r0.w, r0.w
    mad_sat_pp r0.w, -r0.w, c60.z, c60.w
    mul r3.xyz, r0.w, c58
    dp3_sat_pp r0.w, r1, r2
    mul_pp r2.xyz, r3, r0.w
    dp3_sat_pp r0.w, r1, -c10
    texld r3, v0.zwzw, s10
    mul r0.w, r0.w, r3.w
    mad_pp r2.xyz, r0.w, c36, r2
    mad_pp r2.xyz, r3, r3, r2
    mul_pp r2.xyz, r2, c16
    mul r4, r1.y, c91
    mad r4, r1.x, c90, r4
    mad r1, r1.z, c92, r4
    dp4 r0.w, r1, r1
    rsq r0.w, r0.w
    mul r1.xy, r0.w, r1
    mad_pp r1.xy, r1, c1, c1.x
    texld_pp r1, r1, s5
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r0.w, r3.w, r1.w, r0.w
    mul r0.w, r0.w, c63.x
    mul_pp r1.xyz, r0.w, r1
    mul_pp r1.xyz, r1, v3.w
    mad_pp r0.xyz, r2, r0, r1
    texld_pp r1, v1.zwzw, s4
    add r1.xyz, r1, c150
    mul r1.xyz, r1, c17
    mul_pp r1.xyz, r1, c150.w
    mad_pp r0.xyz, r1, c17, r0
    mul_pp r0.xyz, r0, v7
    texld_pp r1, v4.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    add r1.xy, c0.x, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v4.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 68 instruction slots used (7 texture, 61 arithmetic)
