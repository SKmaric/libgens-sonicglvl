//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   g_MtxProjection c224     4
//   g_MtxView       c228     4
//   g_MtxWorld      c232     4
//

    vs_3_0
    dcl_position v0
    dcl_position o0
    mul r0, c233, v0.y
    mad r0, v0.x, c232, r0
    mad r0, v0.z, c234, r0
    mad r0, v0.w, c235, r0
    mul r1, r0.y, c229
    mad r1, r0.x, c228, r1
    mad r1, r0.z, c230, r1
    mad r0, r0.w, c231, r1
    mul r1, r0.y, c225
    mad r1, r0.x, c224, r1
    mad r1, r0.z, c226, r1
    mad o0, r0.w, c227, r1

// approximately 12 instruction slots used
