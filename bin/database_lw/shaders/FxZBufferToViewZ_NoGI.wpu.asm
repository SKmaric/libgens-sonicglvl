//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float3 g_CameraNearFarAspect;
//   row_major float4x4 g_MtxInvProjection;
//   sampler2D sampZBuffer;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   g_MtxInvProjection    c4       4
//   g_CameraNearFarAspect c25      1
//   sampZBuffer           s0       1
//

    ps_3_0
    def c0, 0.00389099144, 1.51991853e-005, 0.99609381, 255
    def c1, 256, 0, 1, 0.00392156886
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_2d s0
    texld r0, v1, s0
    dp3 r0.x, r0.xyww, c0
    mul r0.yz, c5.xzww, v0.y
    mad r0.yz, v0.x, c4.xzww, r0
    mad r0.xy, r0.x, c6.zwzw, r0.yzzw
    add r0.xy, r0, c7.zwzw
    rcp r0.y, r0.y
    mul r0.x, r0.y, r0.x
    rcp r0.y, c25.y
    mul_sat r0.x, r0.y, -r0.x
    mul r0.y, r0.x, c0.w
    frc r0.z, r0.y
    add r1.w, r0.y, -r0.z
    mad r0.x, r0.x, c0.w, -r1.w
    mul r0.y, r0.x, c1.x
    frc r0.z, r0.y
    add r0.y, r0.y, -r0.z
    cmp r0.z, -r0.z, c1.y, c1.z
    cmp r0.z, r0.x, c1.y, r0.z
    add r1.x, r0.z, r0.y
    mad r1.y, r0.x, c1.x, -r1.x
    mov r1.z, c1.y
    mul_pp oC0, r1, c1.wzww

// approximately 23 instruction slots used (1 texture, 22 arithmetic)
