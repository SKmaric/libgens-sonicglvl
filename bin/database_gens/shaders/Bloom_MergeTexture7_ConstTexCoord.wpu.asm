//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_BloomStarSampleWeight[16];
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampDif2;
//   sampler2D sampDif3;
//   sampler2D sampDif4;
//   sampler2D sampDif5;
//   sampler2D sampDif6;
//
//
// Registers:
//
//   Name                    Reg   Size
//   ----------------------- ----- ----
//   g_BloomStarSampleWeight c150     7
//   sampDif0                s0       1
//   sampDif1                s1       1
//   sampDif2                s2       1
//   sampDif3                s3       1
//   sampDif4                s4       1
//   sampDif5                s5       1
//   sampDif6                s6       1
//

    ps_3_0
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    texld r0, v0, s1
    mul r0, r0, c151
    texld r1, v0, s0
    mad r0, c150, r1, r0
    texld r1, v0, s2
    mad r0, c152, r1, r0
    texld r1, v0, s3
    mad r0, c153, r1, r0
    texld r1, v0, s4
    mad r0, c154, r1, r0
    texld r1, v0, s5
    mad r0, c155, r1, r0
    texld r1, v0, s6
    mad_pp oC0, c156, r1, r0

// approximately 14 instruction slots used (7 texture, 7 arithmetic)
