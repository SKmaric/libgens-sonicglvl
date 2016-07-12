//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 mrgTexcoordIndex[4];
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   g_MtxProjection   c0       4
//   g_MtxView         c4       4
//   g_MtxWorld        c8       4
//   mrgTexcoordIndex  c187     1
//   mrgTexcoordOffset c191     2
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
    dcl_position o0
    dcl_texcoord o1
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
    add r0.xy, c191, v1
    mul r0.zw, r0.xyxy, c221[a0.x].x
    mul r0.xy, r0, c221[a0.y].x
    add r1.xy, c191.zwzw, v2
    mad r0.zw, c221[a0.x].y, r1.xyxy, r0
    mad r0.xy, c221[a0.y].y, r1, r0
    add r1.xy, c192, v3
    mad r0.zw, c221[a0.x].z, r1.xyxy, r0
    mad r0.xy, c221[a0.y].z, r1, r0
    add r1.xy, c192.zwzw, v4
    mad o1.xy, c221[a0.x].w, r1, r0.zwzw
    mad o1.zw, c221[a0.y].w, r1.xyxy, r0.xyxy

// approximately 30 instruction slots used
