//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_BackGroundScale;
//   float4 g_EmissionParam;
//   float4 g_ForceAlphaColor;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   g_Ambient         c17      1
//   g_BackGroundScale c67      1
//   g_ForceAlphaColor c89      1
//   g_EmissionParam   c150     1
//   sampDif           s0       1
//   sampEmi           s2       1
//

    ps_3_0
    def c0, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_2d s0
    dcl_2d s2
    texld_pp r0, v1, s2
    add r0.xyz, r0, c150
    mul r0.xyz, r0, c17
    mul r0.xyz, r0, c150.w
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r1, c67.w, r0
    mul_pp r1.xyz, r0, c67
    mul_pp r0, r1, c89
    min_pp oC0, r0, c0.x

// approximately 9 instruction slots used (2 texture, 7 arithmetic)
