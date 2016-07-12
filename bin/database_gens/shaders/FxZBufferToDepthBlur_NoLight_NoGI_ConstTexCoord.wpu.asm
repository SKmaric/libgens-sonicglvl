//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_DepthOfFieldFocusNearFarRange;
//   row_major float4x4 g_MtxInvProjection;
//   sampler2D sampZBuffer;
//
//
// Registers:
//
//   Name                            Reg   Size
//   ------------------------------- ----- ----
//   g_MtxInvProjection              c4       4
//   g_DepthOfFieldFocusNearFarRange c150     1
//   sampZBuffer                     s0       1
//

    ps_3_0
    def c0, 0.5, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xy
    dcl_2d s0
    mul r0.xy, c5.zwzw, v0.y
    mad r0.xy, v0.x, c4.zwzw, r0
    texld r1, v1, s0
    mad r0.xy, r1.x, c6.zwzw, r0
    add r0.xy, r0, c7.zwzw
    add_pp r0.z, -c150.w, c150.x
    rcp r0.y, r0.y
    mul r0.w, r0.y, r0.x
    max_pp r1.x, -r0.w, r0.z
    mad r0.z, r0.x, r0.y, r1.x
    add r1.x, r1.x, -c150.y
    rcp r1.x, r1.x
    mul_sat_pp r0.z, r0.z, r1.x
    add_pp r1.x, c150.w, c150.x
    min_pp r2.x, r1.x, -r0.w
    mad r0.w, r0.x, -r0.y, -r2.x
    mad r0.x, r0.x, -r0.y, -c150.x
    add r0.y, -r2.x, c150.z
    rcp r0.y, r0.y
    mul_sat_pp r0.y, r0.y, r0.w
    cmp_pp r0.x, r0.x, r0.y, -r0.z
    mad_pp oC0, r0.x, c0.x, c0.x

// approximately 22 instruction slots used (1 texture, 21 arithmetic)
