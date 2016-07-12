//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_MiddleGray_Scale_LuminanceLow_LuminanceHigh;
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//
//
// Registers:
//
//   Name                                          Reg   Size
//   --------------------------------------------- ----- ----
//   g_MiddleGray_Scale_LuminanceLow_LuminanceHigh c150     1
//   sampDif0                                      s0       1
//   sampDif1                                      s1       1
//

    ps_3_0
    def c0, 0.212500006, 0.715399981, 0.0720999986, 0.5
    def c1, 0.00100000005, 1, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    texld r0, c0.w, s1
    add r0.x, r0.x, c1.x
    rcp r0.x, r0.x
    texld_pp r1, v0, s0
    dp3 r0.y, r1, c0
    mul r0.z, r0.y, c150.x
    rcp r0.y, r0.y
    mad r0.w, r0.z, r0.x, c1.y
    mul r0.x, r0.x, r0.z
    rcp r0.z, r0.w
    mul r0.x, r0.z, r0.x
    mul r0.x, r0.y, r0.x
    mul_pp oC0.xyz, r0.x, r1
    mov_pp oC0.w, r1.w

// approximately 14 instruction slots used (2 texture, 12 arithmetic)
