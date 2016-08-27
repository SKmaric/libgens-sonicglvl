//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float3 g_BloomStar_Param1;
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
//   g_BloomStar_Param1                            c151     1
//   sampDif0                                      s0       1
//   sampDif1                                      s1       1
//

    ps_3_0
    def c0, 0.5, 0.298909992, 0.586610019, 0.114480004
    def c1, 0.00100000005, 0, 1, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    texld r0, c0.x, s1
    add r0.x, r0.x, c1.x
    rcp r0.x, r0.x
    texld r1, v0, s0
    dp3 r0.y, r1, c0.yzww
    mul r0.z, r0.y, c150.x
    rcp r0.y, r0.y
    mad r0.x, r0.z, r0.x, -c151.x
    max r1.w, r0.x, c1.y
    mul r0.x, r0.y, r1.w
    mul r0.yzw, r0.x, r1.xxyz
    mad r1.xyz, r1, r0.x, c151.y
    rcp r2.x, r1.x
    rcp r2.y, r1.y
    rcp r2.z, r1.z
    mul_pp oC0.xyz, r0.yzww, r2
    mov_pp oC0.w, c1.z

// approximately 17 instruction slots used (2 texture, 15 arithmetic)