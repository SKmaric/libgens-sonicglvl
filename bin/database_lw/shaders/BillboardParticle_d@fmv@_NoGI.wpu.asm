//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ForceAlphaColor;
//   float4 g_ParticleColorScale;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   g_ForceAlphaColor    c89      1
//   g_ParticleColorScale c151     1
//   sampDif              s0       1
//

    ps_3_0
    def c0, 1, 0, 4, 0
    dcl_texcoord v0.xy
    dcl_color_pp v1
    dcl_color1_pp v2
    dcl_texcoord2_pp v3
    dcl_2d s0
    mov_pp r0, v3
    add_pp r0, -r0, v1
    texld_pp r1, v0, s0
    mad_pp r0, r1.y, r0, v3
    mul_pp r1.w, r1.w, r0.w
    mul_pp r1.xyz, r0, v2.w
    mad_pp r0, v2.xyzx, c0.xxxy, r1
    mul_pp r0.xyz, r0, c151
    mul_pp r0, r0, c89
    min_pp oC0, r0, c0.z

// approximately 10 instruction slots used (1 texture, 9 arithmetic)
