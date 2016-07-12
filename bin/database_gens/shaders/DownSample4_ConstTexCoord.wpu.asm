//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ViewportSize;
//   sampler2D s0;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c24      1
//   s0             s0       1
//

    ps_3_0
    def c0, -0.25, 0.25, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    mov r0.xy, c0
    mad r1, c24.zwzw, r0.xxyx, v0.xyxy
    texld_pp r2, r1, s0
    texld r1, r1.zwzw, s0
    add_pp r1, r1, r2
    mad r0, c24.zwzw, r0.xyyy, v0.xyxy
    texld r2, r0, s0
    texld r0, r0.zwzw, s0
    add_pp r1, r1, r2
    add_pp r0, r0, r1
    mul_pp oC0, r0, c0.y

// approximately 11 instruction slots used (4 texture, 7 arithmetic)
