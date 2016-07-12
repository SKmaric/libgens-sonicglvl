//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   sampler2D g_FramebufferSampler;
//   float4 g_GIModeParam;
//   float4 g_ViewportSize;
//   sampler2D s0;
//   sampler2D s1;
//   sampler2D sampDLScatter;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   g_Diffuse            c16      1
//   g_Ambient            c17      1
//   g_ViewportSize       c24      1
//   g_GIModeParam        c69      1
//   s0                   s0       1
//   s1                   s1       1
//   sampDLScatter        s9       1
//   g_FramebufferSampler s11      1
//

    ps_3_0
    def c0, 1, 0, 0.5, 0
    dcl_texcoord v0
    dcl_texcoord1 v1.xy
    dcl_color_pp v2.xyz
    dcl_color1_pp v3
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s9
    dcl_2d s11
    mul_pp r0.xyz, c17, v3
    mov_pp r0.w, v3.w
    mad_pp r0.xyz, r0.w, v2, r0
    mul r1, c0.xxyy, v0.zwzz
    texldl_pp r1, r1, s1
    mul_pp r1.xyz, r0, r1
    texld_pp r0, v0, s0
    mul_pp r0, r0, r1
    mul_pp r0, r0, c16
    texld_pp r1, v1.yxzw, s9
    mad_pp r0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w
    add r1.xy, c0.z, vPos
    mul r1.xy, r1, c24.zwzw
    texld r1, r1, s11
    add r1.xyz, -r0, r1
    mul r0.w, c69.z, v1.x
    mad_pp oC0.xyz, r0.w, r1, r0

// approximately 19 instruction slots used (5 texture, 14 arithmetic)
