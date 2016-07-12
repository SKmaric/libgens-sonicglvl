//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ViewportSize;
//   float4 mrgPlayableParam;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_Diffuse                             c16      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_ViewportSize                        c24      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//

    ps_3_0
    def c0, 0.5, -1, 1, 4
    dcl_texcoord v0.xy
    dcl_texcoord5_pp v1.xy
    dcl_color_pp v2
    dcl vPos.y
    dcl_2d s0
    add r0.x, c0.x, vPos.y
    mov r1.x, c86.x
    mad r0.x, r0.x, c24.w, -r1.x
    mul_sat_pp r0.x, r0.x, c86.y
    texld_pp r1, v0, s0
    add_pp r0.yzw, r1.xxyz, c0.y
    mul_pp r1.x, r1.w, c16.w
    mul_pp r1.x, r1.x, v2.w
    mul_pp r1.w, r1.x, c21.x
    mad_pp r0.xyz, r0.yzww, r0.x, c0.z
    mul_pp r0.xyz, r0, c16
    mul_pp r1.xyz, r0, v2
    mul_pp r0, r1, c89
    min_pp r1, r0, c0.w
    mul_pp r0.xyz, c75, v1.y
    mad_pp oC0.xyz, r1, v1.x, r0
    mov_pp oC0.w, r1.w

// approximately 17 instruction slots used (1 texture, 16 arithmetic)
