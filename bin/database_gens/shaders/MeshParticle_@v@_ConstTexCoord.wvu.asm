//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 mrgTexcoordIndex[4];
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   g_MtxProjection  c0       4
//   g_MtxView        c4       4
//   g_MtxWorld       c8       4
//   mrgTexcoordIndex c187     1
//

    vs_3_0
    def c221, 1, 0, 0, 0
    def c222, 0, 1, 0, 0
    def c223, 0, 0, 1, 0
    def c224, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_color v5
    dcl_position o0
    dcl_texcoord o1
    dcl_color o2
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    mad r0, v0.w, c11, r0
    mul r1, r0.y, c5
    mad r1, r0.x, c4, r1
    mad r1, r0.z, c6, r1
    mad r0, r0.w, c7, r1
    mul r1, r0.y, c1
    mad r1, r0.x, c0, r1
    mad r1, r0.z, c2, r1
    mad o0, r0.w, c3, r1
    slt r0.xy, c187, -c187
    frc r0.zw, c187.xyxy
    add r1.xy, -r0.zwzw, c187
    slt r0.zw, -r0, r0
    mad r0.xy, r0, r0.zwzw, r1
    mova a0.xy, r0
    mul r0.xy, v1, c221[a0.x].x
    mad r0.xy, c221[a0.x].y, v2, r0
    mad r0.xy, c221[a0.x].z, v3, r0
    mad o1.xy, c221[a0.x].w, v4, r0
    mul r0.xy, v1, c221[a0.y].x
    mad r0.xy, c221[a0.y].y, v2, r0
    mad r0.xy, c221[a0.y].z, v3, r0
    mad o1.zw, c221[a0.y].w, v4.xyxy, r0.xyxy
    mov o2, v5

// approximately 27 instruction slots used
