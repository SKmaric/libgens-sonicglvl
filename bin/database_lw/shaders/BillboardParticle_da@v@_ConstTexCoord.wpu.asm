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
    def c0, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_color_pp v1
    dcl_2d s0
    texld_pp r0, v0, s0
    texld_pp r1, v0.zwzw, s0
    mov_pp r0.w, r1.w
    mul_pp r0, r0, v1
    mul_pp r0.xyz, r0, c151
    mul_pp r0, r0, c89
    min_pp oC0, r0, c0.x

// approximately 7 instruction slots used (2 texture, 5 arithmetic)
