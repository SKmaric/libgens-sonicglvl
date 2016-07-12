//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_crop0;
//   sampler2D g_crop1;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   g_crop0      s0       1
//   g_crop1      s1       1
//

    ps_3_0
    dcl_color v0
    dcl_color1 v1
    dcl_texcoord v2
    dcl_2d s0
    dcl_2d s1
    texld r0, v2.zwzw, s1
    texld r1, v2, s0
    lrp r2.xyz, r0.w, r0, r1
    mov r2.w, r1.w
    mov r0, v0
    mad oC0, r2, r0, v1

// approximately 6 instruction slots used (2 texture, 4 arithmetic)
