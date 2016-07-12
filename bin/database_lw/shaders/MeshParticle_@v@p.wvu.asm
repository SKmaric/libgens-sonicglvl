//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 mrgMorphWeight;
//   float4 mrgTexcoordIndex[4];
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   mrgTexcoordIndex c187     1
//   mrgMorphWeight   c194     1
//   g_MtxProjection  c224     4
//   g_MtxView        c228     4
//   g_MtxWorld       c232     4
//

    vs_3_0
    def c0, 1, 0, 0, 0
    def c1, 0, 1, 0, 0
    def c2, 0, 0, 1, 0
    def c3, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_texcoord4 v5
    dcl_texcoord5 v6
    dcl_texcoord6 v7
    dcl_texcoord7 v8
    dcl_color v9
    dcl_position o0
    dcl_texcoord o1
    dcl_color o2
    mul r0.xyz, c194.y, v6
    mad r0.xyz, c194.x, v5, r0
    mad r0.xyz, c194.z, v7, r0
    mad r0.xyz, c194.w, v8, r0
    add r0.xyz, r0, v0
    mul r1, r0.y, c233
    mad r1, r0.x, c232, r1
    mad r0, r0.z, c234, r1
    mad r0, v0.w, c235, r0
    mul r1, r0.y, c229
    mad r1, r0.x, c228, r1
    mad r1, r0.z, c230, r1
    mad r0, r0.w, c231, r1
    mul r1, r0.y, c225
    mad r1, r0.x, c224, r1
    mad r1, r0.z, c226, r1
    mad o0, r0.w, c227, r1
    slt r0.xy, c187, -c187
    frc r0.zw, c187.xyxy
    add r1.xy, -r0.zwzw, c187
    slt r0.zw, -r0, r0
    mad r0.xy, r0, r0.zwzw, r1
    mova a0.xy, r0
    mul r0.xy, v1, c0[a0.x].x
    mad r0.xy, c0[a0.x].y, v2, r0
    mad r0.xy, c0[a0.x].z, v3, r0
    mad o1.xy, c0[a0.x].w, v4, r0
    mul r0.xy, v1, c0[a0.y].x
    mad r0.xy, c0[a0.y].y, v2, r0
    mad r0.xy, c0[a0.y].z, v3, r0
    mad o1.zw, c0[a0.y].w, v4.xyxy, r0.xyxy
    mov o2, v9

// approximately 32 instruction slots used
