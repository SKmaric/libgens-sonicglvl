//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 AddColor;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   AddColor     c150     1
//

    ps_3_0
    dcl_color_pp v0
    mul_pp oC0.xyz, c150, v0
    mov_pp oC0.w, v0.w

// approximately 2 instruction slots used
